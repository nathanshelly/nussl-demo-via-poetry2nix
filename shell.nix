{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [ python3 poetry sox ];
  shellHook = ''
    # unset SOURCE_DATE_EPOCH so that we can use python wheels
    # https://github.com/NixOS/nixpkgs/blob/5094de98f0998980d20efa1bce488ee89e922224/doc/languages-frameworks/python.section.md#python-setuppy-bdist_wheel-cannot-create-whl
    # This avoids "ValueError: ZIP does not support timestamps before 1980"
    # Nix sets file mtime to 1, but Python Zip format expects DOS time starting at 1980.
    unset SOURCE_DATE_EPOCH
  '';
}
