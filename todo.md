# Elenco cose fatte e da fare

| Obiettivi | Stato  | Note |
|---|---|---|
| Aggiungere AXI_FULL per comunicazione con DDR                                         | Fatto  | |
| Aggiungere P.C. per tenere traccia delle dimensioni delle FIFO                        | Fatto  | |
| Aggiungere P.C. per tenere traccia dei clock cycles per stadio della pipeline         | Fatto  | |
| Aggiungere P.C. per tenere traccia del rate di cache hit e cache miss                 | Fatto  | |
| Aggiunto reset solo per performance counters                                          | Fatto  | |
| Capire come collegare il progetto al corso                                            | Fatto  | |
| Comunicare lo stato del progetto a Cassano                                            | Fatto  | |
| Determinare se conviene riscrivere il simulatore                                      | TODO   | Da fare in futuro |


# Come fare benchmark per nuova build
* Scegliere un insieme di 10 stringhe + 10 regex
* Scegliere un compilatore 
* Runnare ```measure.py <bitstream_file_path> <strings_file_path> <regexes_file_path> <output_file_path> <compiler_path> <regexes_count> <inputs_count> ```
* Ottengo così i risultati (Non so se ottengo il tempo)
* Aggiornare host C/C++ per fare la stessa roba ed eseguire la media dei tempi(magari non chiamare il compilatore e precompila tutto quello che serve)
* Optional: Setup finale per confrontare veramente tutto bene
