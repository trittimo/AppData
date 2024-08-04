function Run-Branches {
    & (resolve-path "~/scripts/branches.ps1").Path
}

function Write-BranchName () {
    try {
        $branch = git rev-parse --abbrev-ref HEAD

        if ($branch -eq "HEAD") {
            # we're probably in detached HEAD state, so print the SHA
            $branch = git rev-parse --short HEAD
            Write-Host " ($branch)" -ForegroundColor "red"
        }
        else {
            # we're on an actual branch, so print it
            Write-Host " ($branch)" -ForegroundColor "blue"
        }
    } catch {
        # we'll end up here if we're in a newly initiated git repo
        Write-Host " (no branches yet)" -ForegroundColor "yellow"
    }
}

function prompt {
    $base = "PS "
    $path = "$($executionContext.SessionState.Path.CurrentLocation)"
    $userPrompt = "$('>' * ($nestedPromptLevel + 1)) "

    Write-Host "`n$base" -NoNewline

    if (Test-Path .git) {
        Write-Host $path -NoNewline -ForegroundColor "green"
        Write-BranchName
    }
    else {
        # we're not in a repo so don't bother displaying branch name/sha
        Write-Host $path -ForegroundColor "green"
    }

    return $userPrompt
}

function Clear-Host { 
  Write-Host -NoNewLine "$([char]27)[2J$([char]27)[3J$([char]27)[H" 
}

function nvim {
    if ($env:NVIM) {
        & "C:\Program Files (x86)\nvim\bin\nvim.exe" --server $env:NVIM --remote-silent $args
    } else {
        & "C:\Program Files (x86)\nvim\bin\nvim.exe" $args
    }
}

Set-Alias -Name "branches" -Value "Run-Branches"
Set-Alias -Name "vim" -Value "nvim.exe"
Set-Alias -Name "nvim" -Value "nvim.exe"
Set-Alias -Name "edit" -Value "nvim.exe"
$env:VIMRUNTIME = "/Software/neovim/runtime"
# & 'C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\Launch-VsDevShell.ps1'