function cf {
    $dir = (fd . --type d --max-depth 2 | fzf --prompt "Choose a directory: " --preview 'tree /F {}')
    if ($dir) {
        Set-Location $dir
    }
}

