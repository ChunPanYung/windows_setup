function Prompt {
    $curdir = $ExecutionContext.SessionState.Path.CurrentLocation.Path

    Write-Host "PS"$curdir" >" -ForegroundColor Cyan -NoNewline
    return " "
}
