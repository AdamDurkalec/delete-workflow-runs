# This script creates script for deleting workflow runs from desirable repository and branch.
# Requirements:
#  * gh - cli for github - https://github.com/cli/cli
#  * jq - cli for json - https://stedolan.github.io/jq
#
# How to use it?
# 1. Set proper values for $repo and $branch
# 2. Run .\create-delete-workflows-script.ps1 - it creates dedicated script for deleting workflow runs from desirable repo and branch
# 3. Run .\delete-workflow-runs.ps1 - it deletes workflow runs from desirable repo and branch
$repo="HylandSoftware/HxP.PoC.KebApp.Api" 
$branch="test-gh-deleting-workflows"
$deleteScriptFileName="delete-workflow-runs.ps1"

'$repo='+'"'+$repo+'"' | Out-File -FilePath $deleteScriptFileName
gh api /repos/$repo/actions/runs?per_page=100"&"branch=$branch --jq '.workflow_runs[] | [\"gh api -X DELETE /repos/$repo/actions/runs/\" + (.id|tostring)] | @tsv' | Out-File -FilePath $deleteScriptFileName -Append
