# darcs-stash - Git Stash Mimic for Darcs

From `darcs-stash --help`:

```
Usage: darcs-stash COMMAND

Commands:
  apply         Like pop, but do not remove the state from the stash list.
  clear         Remove all the stash entries.
  drop          Remove a single stash entry from the list of stash entries.
  list          List the stash entries that you currently have.
  pop           Remove a single stashed patch from the stash list and apply it.
  push [NAME]   Save your local modifications to a new stash entry and
                remove them from working tree.
  show [NUMBER] Show the changes recorded in the stash entry.
```

# Installation

I would encourage you to install the command with
[`nix`](https://nixos.org/download/), and nix flakes in particular. In this way,
you can run it with `nix run github:jesuspv/darcs-stash` or use [Home
Manager](https://github.com/nix-community/home-manager) nixpkgs overlays to have
it installed in your home, for instance.

Otherwise, copy the self-contained script `darcs-stash` to some directory in
your `$PATH` and confirm you have `bash`, `coreutils` and `darcs` installed
before running.
