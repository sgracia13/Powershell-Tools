
function GetGitBranch {
Set-Location "C:\Working\Netchex.Gateway.Api"
$status = git status
$gitBranch = $status | Select-String -pattern "On branch" 
$containsMaster = $gitBranch.ToString().Contains("master")

if ($containsMaster) {
  write-Host "$gitBranch"

  }
else {
  Write-Host " $gitBranch"
}

}

GetGitBranch
