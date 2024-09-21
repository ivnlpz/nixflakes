# nixflakes
## Explanation
Just a place to to start filling in flakes that I'll be using in mainly dev environments. 
## How to use
I'm on NixOS and with flakes enabled. 

``` fish
nix flake init -t github:ivnlpz/nixflakes#node
echo "use flake" > .envrc
direnv allow
```


