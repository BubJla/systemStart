#!/usr/bin/env python3

import gi
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk


import subprocess

def execute_command(command):
    try:
        # Befehl im Terminal ausführen und auf das Ergebnis warten
        result = subprocess.run(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

        # Ausgabe und Fehler (falls vorhanden) anzeigen
        output = result.stdout
        error = result.stderr

        if result.returncode == 0:
            print("Befehl erfolgreich ausgeführt:")
            print(output)
        else:
            print("Fehler beim Ausführen des Befehls:")
            print(error)
    except Exception as e:
        print("Ein Fehler ist aufgetreten:", str(e))

# Beispielaufruf der Funktion
command_to_execute = "ls -l"
execute_command(command_to_execute)

class GraphicWindow(Gtk.Window):
    def __init__(self):
        Gtk.Window.__init__(self, title="Grafisches Element")
        self.set_default_size(300, 300)  # Größe des Fensters
        self.set_position(Gtk.WindowPosition.CENTER)  # Fenster in die Mitte des Bildschirms setzen

        drawing_area = Gtk.DrawingArea()
        drawing_area.connect("draw", self.on_draw)
        self.add(drawing_area)

    def on_draw(self, widget, cr):
        cr.set_source_rgb(0, 0, 1)  # Blaue Farbe (RGB)
        cr.rectangle(50, 50, 200, 200)  # Position und Größe des Kastens
        cr.fill()

win = GraphicWindow()
win.connect("destroy", Gtk.main_quit)
win.show_all()
Gtk.main()
execute_command("firefox")
