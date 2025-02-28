Warum nutzen wir GitHub?
Wir benutzen GitHub, weil es eine einfache Möglichkeit bietet, 
den Server zu teilen und Versionen zu kontrollieren. 
So kann jeder den aktuellen Stand ziehen (clone oder pull) und nach Änderungen wieder hochladen (push).

1. Vorbereitung (Einmal einrichten)

Windows: Notwendige Installationen
- Java (64-bit) installieren
    - https://www.java.com/de/download/manual.jsp
    - Notwendig, damit der Minecraft-Server läuft

- GitHub installieren

- Ports freigeben 
    - TCP
        - New-NetFirewallRule -DisplayName "Minecraft Server" -Direction Inbound -Protocol TCP -LocalPort 25565 -Action Allow
    - UDP
        - New-NetFirewallRule -DisplayName "Minecraft Server UDP" -Direction Inbound -Protocol UDP -LocalPort 25565 -Action Allow 

- GitHub einrichten
    - erstelle einen GitHub-Account https://github.com/join
    - gib mir deinen Account Namen weiter, damit du die Rechte bekommst
    - Öffne Powershell in Windows (Shift + Rechtsklick im Ordner → "PowerShell hier öffnen") 
    - und erstelle einen SSH-Schlüssel
        - ssh-keygen -t ed25519 -C "dein_github_name"
    - Schlüssel anzeigen und vollständig kopieren
        - cat ~/.ssh/id_ed25519.pub
    ( - überprüfe die SSH-Versionsnummer, falls nicht funktioneirt ssh -v )
    - füge den Schlüssel in GitHub eine
        - Gehe zu https://github.com/settings/keys 
	- New SSH key und einfügen
    
2. Server herunterladen
    - Öffne Powershell in Windows (Shift + Rechtsklick im Ordner → "PowerShell hier öffnen") 
    - Lade den Server mit folgendem Befehl herunter:
        - git clone git@github.com:donthide/mc_server_castellum.git
        - Falls du den Server schon hast, dann stattdessen nur aktualisieren:
	    - git pull origin main

3. Server starten
    - aktualisiere Ip in den server.properties mit dem skript
        - führe die Datei aus win_update_ip.bat
    - Starte den server indem du star.bat ausführst


4. Server hochladen
    - Öffne Powershell in Windows in dem Server-Ordner (Shift + Rechtsklick im Ordner → "PowerShell hier öffnen") 
    - Änderung hinzufügen
        - git 
    - Commit mit Beschreibung
        - git commit -m "Serverupdate am DATUM"
    - Änderung auf GitHub hochladen
        - git push origin main

5. Server auf der Switch einrichten
    - auf der Switch muss kostenpflichtig Switch-Online aktiviert sein
    - ändere den DNS-Server
        - navigiere zu System Einstellungen
	- wähle aus Internet/Internet Einstellungen/deinWlan/Einstellungen Ändern
	- suche DNS Settings und ändere auf 'manual'
	- primary DNS: 104.238.130.180
	- secondary DNS: 008.008.008.008
    - starte minecraft und verbinde dich bei Spielen/Server mit einem beliebigen Server
    - sobald du in dem Server drin bist, kommt ein Menü, wo du eigene Server bearbeiten kannst und die Liste siehst
        - füge den Server mit name: Castellum, deine Ip und dem Port 25565 um
	- ipconfig im Terminal für die IPv4-Adresse

