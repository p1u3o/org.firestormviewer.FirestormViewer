# firestorm-flatpak

<p align="center">
<img src="https://git.smi.sh/Daniel/firestorm-flatpak/raw/master/org.firestormviewer.FirestormViewer.png"/>
</p>

**Unofficial** Flatpak for the Firestorm viewer.

### Broken
* CEF (setuid sandbox?). - No web views, external browser launching works.
* Voice
* ~~gconf (setting secondlife:// handler)~~ fixed using x-scheme-handler and gdbus.
* ~~launch_url.sh does not work inside the sandbox~~ fixed using xdg-open.
* Firestorm does not use xdg-directories correctly. ~/.firestorm is a sandbox violation so we bind mount it into ~/.var/app/org.firestormviewer.FirestormViewer

### Build & Install

```shell
sudo flatpak-builder --system --install --install-deps-from=flathub _build org.firestormviewer.FirestormViewer.json --force-clean
```

#### Notes
* This is not affiliated with either Firestorm or Linden Labs.

* The viewer is relatively sandboxed and ~/.firestorm_x64 is bind mounted, meaning $HOME appears empty. You can still access ~/Documents, ~/Downloads etc.

* This does not build the viewer. It pulls the Firestorm build for your architecture, verifies it and converts it into a Flatpak, with necessary changes to make it work in the sandbox.

* By using gdbus and x-scheme-handler, secondlife:// links "just work". This imho is much nicer than manually setting gsettings.

* I made this because I was running a version of glib too new and Firestorm refused to run (glib has symbol versioning?). Rather than recompile it, Flatpak is the perfect way to provide a stable and sandboxed environment for any Linux application.

GNOME integrates with Flatpak nicely. It tracks how much space Firestorm is using and even has a function to wipe the Firestorm settings. Windows and OS X don't even do this.

<p align="center">
<img src="https://i.imgur.com/m59sSOy.png"/>
</p>