# SQL Eurostat Analysis – Mercato del lavoro italiano

## Descrizione del progetto

Progetto personale di analisi dei dati sul mercato del lavoro italiano mediante SQL. L'obiettivo è organizzare e interrogare dati relativi all'occupazione e alla disoccupazione, con particolare attenzione alle differenze territoriali, alla disoccupazione giovanile e al divario di genere.

Il progetto applica concetti di database relazionali e interrogazioni SQL per analizzare e confrontare gli indicatori del mercato del lavoro.

## Obiettivi

- Analizzare gli indicatori occupazionali a livello regionale.
- Esaminare le differenze tra le macroaree geografiche italiane.
- Approfondire la disoccupazione giovanile e le differenze di genere.
- Utilizzare query SQL per aggregare e confrontare i dati.

## Dati e fonti

- **Fonte:** Eurostat.
- **Area geografica:** regioni italiane.
- **Periodo analizzato:** 2022–2024.
- **Indicatori:** tasso di disoccupazione generale, percentuale di laureati, quota di giovani NEET, tasso di disoccupazione maschile, tasso di disoccupazione femminile e tasso di disoccupazione giovanile.

**Fonte dati:** [Eurostat – Regional unemployment rates (lfst_r_lfu3rt)](https://ec.europa.eu/eurostat/databrowser/product/view/lfst_r_lfu3rt).

*Nota: verificare che la fonte citata copra tutti gli indicatori utilizzati. Se necessario, aggiungere i collegamenti agli altri dataset.*

## Struttura del database

Il database relazionale `progetto_tesi` è organizzato nelle seguenti tabelle:

| Tabella | Descrizione |
|---|---|
| `regioni` | Anagrafica delle regioni italiane. |
| `anni` | Riferimenti temporali delle rilevazioni. |
| `indicatori_regionali` | Indicatori generali relativi al mercato del lavoro, tra cui disoccupazione, laureati e NEET. |
| `disoccupazione_demografica` | Indicatori relativi alla disoccupazione giovanile e alle differenze di genere. |

## Tecniche SQL utilizzate

- **JOIN:** collegamento tra tabelle correlate.
- **GROUP BY:** raggruppamento dei dati per effettuare analisi aggregate.
- **Funzioni aggregate:** calcolo di valori medi mediante `AVG()`.
- **CASE WHEN:** classificazione delle regioni per macroarea geografica.
- **ROUND():** arrotondamento dei risultati numerici.
- **CREATE VIEW:** creazione di una vista per organizzare e riutilizzare una query.

## Esempio di analisi

La vista `vista_macroaree_2022` raggruppa le regioni italiane in macroaree geografiche e calcola:

- la media del tasso di disoccupazione giovanile;
- il divario medio tra il tasso di disoccupazione femminile e quello maschile.

L'analisi utilizza il collegamento tra le tabelle regionali e demografiche e aggrega i risultati per macroarea geografica.

## Analisi realizzate

Il progetto utilizza query SQL per organizzare e analizzare gli indicatori del mercato del lavoro italiano a livello regionale.

Le interrogazioni consentono di collegare tabelle mediante `JOIN`, aggregare i dati per macroarea geografica e calcolare valori medi. In particolare, la vista `vista_macroaree_2022` permette di confrontare la media del tasso di disoccupazione giovanile e il divario tra i tassi di disoccupazione femminile e maschile nelle diverse macroaree.

I risultati numerici e le relative interpretazioni saranno aggiunti dopo la verifica degli output delle query e della coerenza dei dati con le fonti statistiche originali.

## Tecnologie

- **SQL:** linguaggio utilizzato per la gestione e l'analisi dei dati.
- **MySQL tramite XAMPP:** ambiente utilizzato per gestire il database ed eseguire le query.
- **GitHub:** piattaforma utilizzata per pubblicare il codice e documentare il progetto.

## Come eseguire il progetto

1. Installare e avviare l'ambiente database utilizzato per il progetto.
2. Accedere al database tramite lo strumento utilizzato durante lo sviluppo.
3. Creare o selezionare il database `progetto_tesi`, se non è già presente.
4. Importare ed eseguire lo script `progetto_tesi.sql`.
5. Eseguire le query e verificare i risultati ottenuti.

Prima dell'esecuzione, verificare la compatibilità dello script con il server MySQL o MariaDB installato.

## Autrice

Progetto personale sviluppato per approfondire l'utilizzo di SQL nell'analisi dei dati.

**Repository:** [SQL Eurostat Analysis – GitHub](https://github.com/GiordanaB/SQL-Eurostat-Analysis)
