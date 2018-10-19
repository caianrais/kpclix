# kpclix: KeePass CLI X11 "Clipboard Selection"-compatible

`kpclix` is a fork of the `kpcli` project, made compatible with the X11
Clipboard Selection.


## Why? Or: a note on motivation

`kpcli` uses the [Clipboard][clip] module, which primarily uses the **Primary
Selection** of the [X selection][xsel]. The expected behaviour, however, is
that the copied content will be "buffered" at the **Clipboard Selection** (and
therefore pasted normally with `C-v`/`^V`).

This fork refactored the code in favour of the [Xclip][xclip] module.

This refactoration made `kpcli` xclip-compatible only. If you're using a
GNU/Linux distribution, this is probably what you want.

[clip]: https://metacpan.org/pod/Clipboard
[xsel]: https://linux.die.net/man/1/xsel
[xclip]: https://github.com/beckus/Clipboard-Perl/blob/master/lib/Clipboard/Xclip.pm


## Requirements

You'll need [Perl5][perl] on a GNU/Linux distribution. I don't know any major distro
that does not comes with `perl` pre-installed, so I think you should be fine.

`xclip` is also required. On debian-based systems, you should be able to get it
with a simple command:

```sh
sudo apt-get install xclip
```

[perl]: https://www.perl.org


## Dependencies

`kpcli` depends on 3rd-party modules:

- [`Crypt::Rijndael`](https://metacpan.org/pod/Crypt::Rijndael)
- [`Sort::Naturally`](https://metacpan.org/pod/Sort::Naturally)
- [`Term::ReadKey`](https://metacpan.org/pod/Term::ReadKey)
- [`Term::ShellUI`](https://metacpan.org/pod/Term::ShellUI)
- [`File::KeePass`](https://metacpan.org/pod/File::KeePass)
- [`Capture::Tiny`](https://metacpan.org/pod/Capture::Tiny)

On debian-based systems, use:

```sh
sudo apt-get install libcapture-tiny-perl ,libcrypt-rijndael-perl ,libdata-password-perl ,libfile-keepass-perl ,libmath-random-isaac-perl ,libmath-random-isaac-xs-perl ,libterm-shellui-perl`
```


## Installation

```sh
sudo make install
```

To uninstall it:

```sh
sudo make uninstall
```


## References

- [KeePass][kp]: The free, open source, light-weight and easy-to-use password manager.
- [KeePassX][kpx]: Cross Platform Password Manager.
- [kpcli][kpc]: A command line interface to KeePass database files.

[kp]: https://keepass.info/index.html
[kpx]:  https://www.keepassx.org
[kpc]: http://kpcli.sourceforge.net
