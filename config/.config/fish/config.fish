if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test -e ~/.private.fish
    source ~/.private.fish
end

if test -e ~/.config/starship.toml
    starship init fish | source
end
