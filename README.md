Analisi degli indicatori del mercato del lavoro in Italia (2022–2024)

Descrizione del progetto

Il progetto analizza alcuni indicatori del mercato del lavoro italiano a livello regionale nel periodo 2022–2024, con particolare attenzione alla relazione tra tasso di disoccupazione, percentuale di popolazione laureata e quota di giovani NEET.

L'obiettivo è confrontare gli indicatori tra le macroaree geografiche italiane — Nord, Centro e Mezzogiorno — e descriverne l'andamento nel tempo attraverso interrogazioni SQL.

Obiettivi dell'analisi

Analizzare le differenze territoriali nel tasso di disoccupazione.

Confrontare la percentuale di popolazione laureata tra le macroaree.

Esaminare la distribuzione della quota di giovani NEET.

Calcolare le medie regionali per macroarea e anno.

Utilizzare SQL per aggregare, collegare e analizzare dati strutturati.

Strumenti utilizzati

MySQL – interrogazione e analisi dei dati.

phpMyAdmin e XAMPP – gestione del database e verifica delle query.

SQL – JOIN, funzioni aggregate (AVG, COUNT), ROUND, GROUP BY e ORDER BY.

Struttura del database

Il database progetto_tesi comprende quattro tabelle:

regioni: informazioni sulle regioni italiane e sulla relativa macroarea geografica.

anni: anni di riferimento dell'analisi.

indicatori_regionali: tasso di disoccupazione, percentuale di laureati e quota NEET per regione e anno.

disoccupazione_demografica: indicatori di disoccupazione articolati per caratteristiche demografiche.

Risultati principali

Le medie semplici dei valori regionali evidenziano differenze territoriali nel periodo considerato.

Disoccupazione: la media regionale del Mezzogiorno passa dal 12,36% nel 2022 al 10,13% nel 2024.

Popolazione laureata: il Centro registra la media più elevata in ciascuno dei tre anni, passando dal 23,33% nel 2022 al 25,35% nel 2024.

Giovani NEET: il Mezzogiorno presenta le medie più elevate, pur passando dal 24,64% nel 2022 al 21,15% nel 2024.

Nord: tra il 2022 e il 2024, la media regionale della disoccupazione diminuisce dal 5,16% al 4,04%, mentre quella dei NEET passa dal 13,55% al 9,94%.

I risultati descrivono differenze territoriali e variazioni nel tempo. Non dimostrano, da soli, un rapporto causale tra livello di istruzione e disoccupazione.

Nota metodologica: le percentuali riportate sono medie semplici dei valori regionali all'interno di ciascuna macroarea e non tassi aggregati ponderati per popolazione.

File del progetto

progetto_tesi.sql: esportazione SQL del database, comprensiva della struttura e dei dati.

README.md: descrizione del progetto, degli strumenti e dei risultati principali.

Fonti dei dati

Eurostat – Regional unemployment rates (lfst_r_lfu3rt): dati relativi ai tassi di disoccupazione regionali. Consulta il dataset.

INPS – Rendiconti sociali: fonte consultata per i dati relativi alla quota di giovani NEET.

AlmaLaurea: fonte dei dati relativi alla percentuale di laureati.

Competenze dimostrate

Gestione di database relazionali.

Interrogazione di dati con SQL.

Collegamento di tabelle mediante INNER JOIN.

Aggregazione e confronto di indicatori.

Analisi descrittiva dei dati per area geografica e periodo.

Interpretazione prudente dei risultati statistici.
