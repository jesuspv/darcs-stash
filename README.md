# Darcs Stash - git stash mimic for darcs

From `darcs-stash --help`:

```
Usage: darcs-stash COMMAND

Commands:
  apply         like pop, but do not remove the state from the stash list.
  clear         remove all the stash entries.
  drop          remove a single stash entry from the list of stash entries.
  list          list the stash entries that you currently have.
  pop           remove a single stashed patch from the stash list and apply it.
  push [NAME]   save your local modifications to a new stash entry and
                remove them from working tree.
  show [NUMBER] show the changes recorded in the stash entry.
```

# Installation

I encourage you to install the command via [`nix`](https://nixos.org/download/)
and nix flakes in particular. For instance, you can run the command with:
`nix run github:jesuspv/darcs-stash` or install it with
[Home Manager](https://github.com/nix-community/home-manager) nixpkgs overlays
in your home.

Otherwise, copy the self-contained script `darcs-stash` to some directory in
your `$PATH` and confirm you have `bash`, `coreutils` and `darcs` installed
before running it.
