# org.firestormviewer.FirestormViewer

**Unofficial** Flatpak wrapper for Firestorm (https://www.firestormviewer.org/)

### Broken
* ~~Voice~~ *- Fixed*

### Build and Install
Run this line by line.

```shell
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.freedesktop.Platform.Compat.i386//19.08 org.freedesktop.Sdk.Extension.toolchain-i386//19.08 org.freedesktop.Sdk.Compat.i386//19.08
git clone --recursive https://github.com/p1u3o/org.firestormviewer.FirestormViewer && cd org.firestormviewer.FirestormViewer
sudo flatpak-builder --system --install --install-deps-from=flathub _build org.firestormviewer.FirestormViewer.json --force-clean
```

Go make a coffee, compiling Wine will take a little while.

### FAQ

#### Where can I find my .firestorm_x64 folder?

This is located in ~/.var/app/org.firestormviewer.FirestormViewer/.firestorm_x64/


#### Notes
* This is not affiliated with either The Firestorm Project or Linden Labs.

* Your home folder will appear empty because of the bind mount. Documents, Downloads, Pictures and Music will appear as normal.

* This does not build the viewer itself, however it is planned.

* Enabling voice for the first time will create a wine prefix to run the Win32 Vivox plugin.
