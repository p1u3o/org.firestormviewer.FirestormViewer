# org.firestormviewer.FirestormViewer

**Unofficial** Flatpak wrapper for Firestorm (https://www.firestormviewer.org/)

### Broken
* Voice

### Build & Install

```shell
flatpak-builder --user --install --install-deps-from=flathub _build org.firestormviewer.FirestormViewer.json --force-clean
```

#### Notes
* This is not affiliated with either The Firestorm Project or Linden Labs.

* $HOME will appear empty because of the bind mount. Documents, Downloads, Pictures etc should work as normal.

* This does not yet build the viewer itself.