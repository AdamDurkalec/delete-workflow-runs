# delete-workflow-runs
Tool for deleting workflow runs from desirable repo and branch

**create-delete-workflow-script.ps1** script creates script for deleting workflow runs from desirable repository and branch.
Requirements:
  * gh - cli for github - https://github.com/cli/cli
  * jq - cli for json - https://stedolan.github.io/jq

 How to use it?
 1. Set proper values for **$repo** and **$branch**
 2. Run **.\create-delete-workflows-script.ps1** - it **creates** dedicated script for deleting workflow runs from desirable repo and branch
 3. Run **.\delete-workflow-runs.ps1** - it **deletes** workflow runs from desirable repo and branch
