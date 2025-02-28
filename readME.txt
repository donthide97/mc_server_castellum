Warum nutzen wir GitHub?
Wir benutzen GitHub, weil es eine einfache Möglichkeit bietet, 
den Server zu teilen und Versionen zu kontrollieren. 
So kann jeder den aktuellen Stand ziehen (clone oder pull) und nach Änderungen wieder hochladen (push).

1. Vorbereitung (Einmal einrichten)

Windows: Notwendige Installationen
- Java (64-bit) installieren
    - https://www.java.com/de/download/manual.jsp
    - Notwendig, damit der Minecraft-Server läuft

- GitHub einrichten
    - erstelle einen GitHub-Account https://github.com/join
    - gib mir deinen Account Namen weiter, damit du die Rechte bekommst
    - Öffne Git Bash in Windows und erstelle einen SSH-Schlüssel
        - ssh-keygen -t ed25519 -C "dein_github_name"
    - Schlüssel anzeigen und vollständig kopieren
        - cat ~/.ssh/id_ed25519.pub
    ( - überprüfe die SSH-Versionsnummer, falls nicht funktioneirt ssh -v )
    - füge den Schlüssel in GitHub eine
        - Gehe zu https://github.com/settings/keys 
	- New SSH key und einfügen
    
2. Server herunterladen
    - öffne Git Bash 
    - Lade den Server mit folgendem Befehl herunter:
        - git clone git@github.com:donthide/mc_server_castellum.git
        - Falls du den Server schon hast, dann stattdessen nur aktualisieren:
	    - git pull origin main

