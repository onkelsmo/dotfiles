#!/bin/bash

# Aktuellen Fokusmodus abrufen
focus_mode=$(shortcuts run "GetFocusMode")

echo $focus_mode;

if [[ -n "$focus_mode" ]]; then
  # Fokusmodus aktiv - SketchyBar aktualisieren
  sketchybar --set focus_mode label="$focus_mode"
else
  # Kein Fokusmodus aktiv
  sketchybar --set focus_mode label="No Focus"
fi