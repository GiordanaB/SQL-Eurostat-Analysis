# SQL-Eurostat-Analysis
Analisi SQL su dati Eurostat per il mercato del lavoro italiano
# SQL Eurostat Analysis - Mercato del Lavoro Italiano

Progetto di analisi dati focalizzato sul mercato del lavoro italiano (disoccupazione giovanile e divario di genere) basato su dati **Eurostat**.

## 📊 Struttura del Database (`progetto_tesi`)
Il database relazionale è strutturato nelle seguenti tabelle:
- `regioni`: Anagrafica delle regioni italiane.
- `anni`: Riferimento temporale delle rilevazioni.
- `indicatori_regionali`: Dati generali sull'occupazione e sulla forza lavoro.
- `disoccupazione_demografica`: Indicatori specifici su disoccupazione giovanile e differenze di genere.

## 🔍 Analisi e Query Principali
Il progetto include query avanzate con `JOIN`, aggregazioni (`GROUP BY`) e logica condizionale (`CASE WHEN`). 

### Vista Macroaree 2022 (`vista_macroaree_2022`)
Query per la riclassificazione territoriale delle regioni in **Nord**, **Centro** e **Mezzogiorno**, calcolando la media della disoccupazione giovanile e il divario medio di genere:

```sql
CREATE VIEW vista_macroaree_2022 AS
SELECT 
    CASE 
        WHEN r.nome_regione IN ('Piemonte', 'Valle_Daosta', 'Liguria', 'Lombardia', 'Trentino_Alto_Adige', 'Veneto', 'Friuli_Venezia_Giulia', 'Emilia_Romagna') THEN 'Nord'
        WHEN r.nome_regione IN ('Toscana', 'Umbria', 'Marche', 'Lazio') THEN 'Centro'
        ELSE 'Mezzogiorno'
    END AS macroarea,
    ROUND(AVG(d.tasso_disoccupazione_giovani), 2) AS media_disoccupazione_giovani,
    ROUND(AVG(d.tasso_disoccupazione_donne - d.tasso_disoccupazione_uomini), 2) AS divario_medio_genere
FROM disoccupazione_demografica d
JOIN regioni r ON d.id_regione = r.id_regione
WHERE d.anno = 2022
GROUP BY macroarea
ORDER BY media_disoccupazione_giovani DESC;
