# Cisco_IT_Essentials_Portable
Loader to launch portable versions of Cisco IT Essentials Virtual Desktop v4.0 and Cisco IT Essentials Virtual Laptop v4.0 with local Adobe Flash Player

ITALIANO
# Cisco IT Essentials v4.0 – Portable

I simulatori **Cisco IT Essentials v4.0 Virtual Desktop** e **Virtual Laptop** sono stati originariamente sviluppati per funzionare utilizzando **Adobe Flash Player**.

Con il progressivo abbandono della tecnologia Flash e il suo ritiro ufficiale da parte di Adobe, avvenuto il **31 dicembre 2020**, con il blocco dei contenuti Flash a partire dal **12 gennaio 2021**, i simulatori hanno smesso di essere utilizzabili attraverso i normali browser e le installazioni moderne di Flash.

Questo progetto nasce con l'obiettivo di **ripristinare l'utilizzo dei simulatori Cisco IT Essentials v4.0**, mantenendone la compatibilità con i contenuti originali.

A questo scopo, il progetto utilizza una **versione locale e standalone di Adobe Flash Player**, inclusa nell'archivio e utilizzata direttamente dal loader, senza richiedere un'installazione di Flash Player nel sistema.

Il progetto è stato realizzato in modalità **portable**, quindi i simulatori e il relativo Flash Player possono essere mantenuti all'interno della stessa cartella ed eseguiti direttamente dal loader.

---

## 🚀 Avvio dei simulatori

Dopo aver scaricato ed estratto l'archivio, **non è necessaria alcuna installazione**.

### 🇮🇹 Loader in italiano

Per utilizzare il loader in **lingua italiana**, è sufficiente fare doppio clic sul file:

```text
Avvia.bat
````

 ### 🇬🇧 Loader in inglese

 Per utilizzare il loader in **lingua inglese**, fare doppio clic sul file:

```
Start.bat
```

 Il loader permette di scegliere quale simulatore avviare:

 - **Cisco IT Essentials Virtual Desktop v4.0**
- **Cisco IT Essentials Virtual Laptop v4.0**

 Il loader verifica inoltre la presenza dei file necessari e mette a disposizione una sezione di **diagnostica** per visualizzare informazioni relative a Flash Player, al sistema e ai simulatori.

---

 ## 📁 Struttura del progetto

 La struttura prevista dell'archivio è la seguente:

```
Cisco_IT_Essentials_Portable
│
├── Avvia.bat
├── Start.bat
│
├── Flash
│   └── flashplayer_32_sa.exe
│
├── VirtualDesktop
│   └── RootMovie.swf
│
└── VirtualLaptop
    └── RootMovie.swf
```

 È importante mantenere la struttura delle cartelle invariata, poiché il loader utilizza **percorsi relativi** per individuare Flash Player e i simulatori.

---

 ## 🔍 Diagnostica

 Il loader include una sezione dedicata alla **Diagnostica / Informazioni**, che permette di verificare:

 - presenza di Adobe Flash Player;
- versione del file Flash Player;
- dimensione del file Flash Player;
- versione di Windows rilevata;
- presenza del simulatore **Virtual Desktop**;
- presenza del simulatore **Virtual Laptop**;
- dimensione del relativo `RootMovie.swf`;
- parametri utilizzati per l'avvio dei simulatori;
- stato generale del caricamento.

 Questi controlli permettono di individuare rapidamente eventuali problemi nella struttura dell'archivio o file mancanti.

---

 ## 💻 Modalità Portable

 Il progetto è pensato per essere utilizzato senza una procedura di installazione tradizionale.

 Flash Player viene avviato direttamente dalla cartella:

```
Flash\flashplayer_32_sa.exe
```

 mentre i simulatori vengono caricati dai rispettivi `RootMovie.swf`.

 Questo permette di mantenere **loader, Flash Player e simulatori all'interno dello stesso archivio/cartella**, rendendo il progetto facilmente trasferibile su un altro computer compatibile.

---

 ## ⚠️ Nota su Adobe Flash Player

 Adobe Flash Player è una tecnologia **obsoleta e non più supportata ufficialmente da Adobe**.

 Adobe ha annunciato la fine del supporto a Flash Player per il **31 dicembre 2020** e, dal **12 gennaio 2021**, Flash Player ha iniziato a impedire l'esecuzione dei contenuti Flash.

 La versione locale di Flash Player utilizzata da questo progetto viene impiegata esclusivamente per consentire l'esecuzione dei **simulatori legacy Cisco IT Essentials v4.0**, che dipendono dalla tecnologia Flash.

 Il progetto non richiede l'installazione di Flash Player come componente del browser.

---

 ## 📚 Progetto

 **Autore:** Tecnologica-Mente

 **Repository:**\
 https://github.com/Tecnologica-Mente/Cisco\_IT\_Essentials\_Portable

---

 ## 📌 Disclaimer

 Questo progetto è stato realizzato a scopo **didattico e di conservazione del software legacy**.

 **Cisco** e i relativi marchi e prodotti appartengono ai rispettivi proprietari. Questo progetto non è affiliato, sponsorizzato o approvato da Cisco Systems, Inc.

 **Adobe Flash Player** è un prodotto di Adobe Inc. ed è stato ufficialmente ritirato e non è più supportato.

 L'utilizzo del software e dei relativi contenuti deve avvenire nel rispetto delle licenze e dei diritti dei rispettivi proprietari.

Divertitevi ;-)

p.s. Ricorda che sei responsabile di ciò che stai facendo su Internet e anche se questo script esiste, potrebbe non essere legale nel tuo paese utilizzarlo.

L'UTILIZZO DEL SOFTWARE È A PROPRIO ESCLUSIVO RISCHIO E PERICOLO. IL SOFTWARE È FORNITO DAI DETENTORI DEL COPYRIGHT E DAI COLLABORATORI "COSÌ COM'È" E NON SI RICONOSCE ALCUNA ALTRA GARANZIA ESPRESSA O IMPLICITA, INCLUSE, A TITOLO ESEMPLIFICATIVO, GARANZIE IMPLICITE DI COMMERCIABILITÀ E IDONEITÀ PER UN FINE PARTICOLARE. IN NESSUN CASO IL PROPRIETARIO DEL COPYRIGHT O I RELATIVI COLLABORATORI POTRANNO ESSERE RITENUTI RESPONSABILI PER DANNI DIRETTI, INDIRETTI, INCIDENTALI, SPECIALI, PUNITIVI, O CONSEQUENZIALI (INCLUSI, A TITOLO ESEMPLIFICATIVO, DANNI DERIVANTI DALLA NECESSITÀ DI SOSTITUIRE BENI E SERVIZI, DANNI PER MANCATO UTILIZZO, PERDITA DI DATI O MANCATO GUADAGNO, INTERRUZIONE DELL'ATTIVITÀ), IMPUTABILI A QUALUNQUE CAUSA E INDIPENDENTEMENTE DALLA TEORIA DELLA RESPONSABILITÀ, SIA NELLE CONDIZIONI PREVISTE DAL CONTRATTO CHE IN CASO DI "STRICT LIABILITY", ERRORI (INCLUSI NEGLIGENZA O ALTRO), ILLECITO O ALTRO, DERIVANTI O COMUNQUE CORRELATI ALL'UTILIZZO DEL SOFTWARE, ANCHE QUALORA SIANO STATI INFORMATI DELLA POSSIBILITÀ DEL VERIFICARSI DI TALI DANNI.

Licenza MIT (Massachusetts Institute of Technology)

-------------------------------------------------------------------
ENGLISH
# Cisco IT Essentials v4.0 – Portable

The **Cisco IT Essentials v4.0 Virtual Desktop** and **Virtual Laptop** simulators were originally developed to run using **Adobe Flash Player**.

With the gradual discontinuation of Flash technology and its official end-of-life announced by Adobe on **December 31, 2020**, followed by the blocking of Flash content starting **January 12, 2021**, the simulators could no longer be used through standard web browsers and modern Flash installations.

This project was created with the goal of **restoring the ability to use the Cisco IT Essentials v4.0 simulators**, while maintaining compatibility with their original content.

To achieve this, the project uses a **local, standalone version of Adobe Flash Player**, included in the archive and launched directly by the loader, without requiring Flash Player to be installed on the system.

The project was designed to be **portable**, allowing the simulators and their associated Flash Player to be kept in the same folder and launched directly through the loader.

---

## 🚀 Launching the Simulators

After downloading and extracting the archive, **no installation is required**.

### 🇮🇹 Italian Loader

To use the loader in **Italian**, simply double-click:

```text
Avvia.bat
````

 ### 🇬🇧 English Loader

 To use the loader in **English**, simply double-click:

```
Start.bat
```

 The loader allows you to choose which simulator to launch:

 - **Cisco IT Essentials Virtual Desktop v4.0**
- **Cisco IT Essentials Virtual Laptop v4.0**

 The loader also checks for the required files and provides a **Diagnostics / Information** section to display information about Flash Player, the system, and the simulators.

---

 ## 📁 Project Structure

 The expected archive structure is:

```
Cisco_IT_Essentials_Portable
│
├── Avvia.bat
├── Start.bat
│
├── Flash
│   └── flashplayer_32_sa.exe
│
├── VirtualDesktop
│   └── RootMovie.swf
│
└── VirtualLaptop
    └── RootMovie.swf
```

 It is important to keep the folder structure unchanged, as the loader uses **relative paths** to locate Flash Player and the simulators.

---

 ## 🔍 Diagnostics

 The loader includes a dedicated **Diagnostics / Information** section that allows you to check:

 - presence of Adobe Flash Player;
- Flash Player file version;
- Flash Player file size;
- detected Windows version;
- presence of the **Virtual Desktop** simulator;
- presence of the **Virtual Laptop** simulator;
- size of the corresponding `RootMovie.swf`;
- parameters used to launch the simulators;
- overall loading status.

 These checks make it easier to quickly identify problems with the archive structure or missing files.

---

 ## 💻 Portable Mode

 The project is designed to be used without a traditional installation procedure.

 Flash Player is launched directly from:

```
Flash\flashplayer_32_sa.exe
```

 while the simulators are loaded from their respective `RootMovie.swf` files.

 This allows the **loader, Flash Player, and simulators to be kept together in the same archive/folder**, making the project easy to transfer to another compatible computer.

---

 ## ⚠️ Adobe Flash Player Notice

 Adobe Flash Player is an **obsolete technology that is no longer officially supported by Adobe**.

 Adobe announced the end of support for Flash Player on **December 31, 2020**, and starting **January 12, 2021**, Flash Player began blocking the execution of Flash content.

 The local version of Flash Player used by this project is intended exclusively to allow the **legacy Cisco IT Essentials v4.0 simulators** to run, as they depend on Flash technology.

 The project does not require Flash Player to be installed as a browser component.

---

 ## 📚 Project

 **Author:** Tecnologica-Mente

 **Repository:**\
 https://github.com/Tecnologica-Mente/Cisco\_IT\_Essentials\_Portable

---

 ## 📌 Disclaimer

 This project was created for **educational purposes and preservation of legacy software**.

 **Cisco** and its respective trademarks and products belong to their respective owners. This project is not affiliated with, sponsored by, or endorsed by Cisco Systems, Inc.

 **Adobe Flash Player** is a product of Adobe Inc. and has been officially discontinued and is no longer supported.

 The use of the software and its associated content must comply with the licenses and rights of their respective owners.

 Have fun! ;-)

 **P.S.** Remember that you are responsible for what you do on the Internet. Even though this script exists, using it may not be legal in your country.

 **USE OF THIS SOFTWARE IS ENTIRELY AT YOUR OWN RISK. THE SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, PUNITIVE, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, TORT (INCLUDING NEGLIGENCE OR OTHERWISE), OR OTHERWISE ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.**

 ## 📄 License

 **MIT License (Massachusetts Institute of Technology)**
