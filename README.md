# firestorm-flatpak

Flatpak Builder files for allowing Firestorm Viewer to run inside a Flatpak container.

### Broken
* 32bit support (easy fix)
* CEF (setuid sandbox?)
* gconf (setting secondlife:// handler)
* Nvidia probably does not work.

### Build & Install

```shell
sudo flatpak-builder --install --install-deps-from=flathub _build org.firestormviewer.FirestormViewer.json --force-clean
```

#### Notes
$HOME is forbidden, however $XDG_DOCUMENTS, $XDG_DOWNLOAD, $XDG_PICTURES etc are exposed to the sandbox. Because Firestorm does not use $XDG_DATA_DIRS ~/.firestorm_x64 gets bind mounted into ~/.var/app/org.firestormviewer.FirestormViewer

Gotta keep that home directory squeaky clean :D. A potential alternative to this is use portals.

This does not build the viewer. Integrating Flatpak into the build process of the viewer is a lot more additional work but at least we can experiment with how Firestorm handles being inside modern Linux sandbox and kill the dependency issues that plague the Linux version of the viewer.

GNOME can now also monitor and manage our flatpak too.

![](https://i.imgur.com/3Bs7HOu.png)