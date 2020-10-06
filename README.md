# nussl demo via poetry2nix

This repo packages a simple source separation from `nussl` using `poetry2nix`.

Nix provides `python` & `poetry` (plus other external dependencies like `sox`). Poetry provides python dependencies.

## to try yourself

This requires having [Nix](https://nixos.org/) installed. Here are [Nix's install instructions](https://nixos.org/download.html#nix-quick-install).

```bash
> git clone git@github.com:nathanshelly/nussl-demo-via-poetry2nix.git
> cd nussl-demo-via-poetry2nix
# activates new shell w/ external dependencies - python, poetry, sox
> nix-shell

# in nix-shell
# installs python libraries - nussl, numpy, scipy, etc.
$ poetry install
# runs the `start` script from `pyproject.toml`
$ poetry run start
```

> If you have [`direnv`](https://direnv.net/) & [`nix-direnv`](https://github.com/nix-community/nix-direnv) installed you can skip the `nix-shell` step, all Nix dependencies will be automatically loaded and unloaded as you `cd` in and out of the folder.

## further `poetry2nix` learning

- [blog post](https://www.tweag.io/blog/2020-08-12-poetry2nix/)
- [live coding video](https://www.youtube.com/watch?v=TbIHRHy7_JM)

## todo

- [ ] test the packaging/docker steps
