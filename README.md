# org.firestormviewer.FirestormViewer

**Unofficial** Flatpak wrapper for Firestorm (https://www.firestormviewer.org/)

### Broken
* Voice

### Build & Install
Add Flathub
```shell
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```
```shell
flatpak-builder --user --install --install-deps-from=flathub _build org.firestormviewer.FirestormViewer.json --force-clean
```

### FAQ

#### Where can I find my .firestorm_x64 folder?

This is located in ~/.var/app/org.firestormviewer.FirestormViewer/.firestorm_x64/


#### Notes
* This is not affiliated with either The Firestorm Project or Linden Labs.

* Your home folder will appear empty because of the bind mount. Documents, Downloads, Pictures and Music will appear as normal.

* This does not build the viewer itself, however it is planned.