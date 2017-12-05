## git-scripts ##
A library of useful git commands to use when working in a feature branch workflow with submodules.
The goal with all the commands are that they should work on the whole repository including submodules in every task that is executed.

### Workflow ###
The workflow used is as follows
- All features branched from master
- When done with feature it is squashed to one commit
- Features are rebased onto master when done
- All submodules use the same branch names as root repository
- When feature is merged to master the branch is removed

### Commands ###
Copy the contents of the bin directory into your `<git-install-dir>`/usr/bin directory.
The commands included can the be used as if they were normal git commands with auto-completion using the TAB-key.

#### git create-feature ####
Creates a branch in root repository and all submodules based on the `<master-branch>` branch. Checks out the new branch and pushes it to the remote. All local changes will be cleared!

usage: git create-feature `<feature-name>` [`<master-branch>`]

#### git commit-feature ####
Adds and commits all changes in root repository and all submodules. `<commit-message>` will be prefixed with the current branch name, i.e. master: `<commit-message>`

usage: git commit-feature `<commit-message>`

#### git squash-feature ####
Squash all commits in feature branch into one commit for root repository and submodules. Also squashes the commit messages automatically.

usage: git squash-feature [`<options>`] [`<master-branch>`]
    -m, --message `<message>`        commit message

#### git rebase-feature ####
Rebase root repository and all submodules on top of latest `<rebase-branch>`.

usage: git rebase-feature [`<options>`] `<feature-branch>` `<rebase-branch>`
    -c, --continue        continue rebase after a conflict

#### git push-feature ####
Push all changes in root repository and all submodules. The push is made with -f flag.

usage: git push-feature

#### git checkout-branch ####
Checks out `<branch>` in root repository and all submodules based on the. Cleans the workspace from files not in branch and all ignored files.

usage: git checkout-branch `<branch>`

#### git merge-feature ####
Merges `<feature-branch>` in root project and all submodules into `<master-branch>`.

usage: git merge-feature
 or: git merge-feature `<feature-branch>`
 or: git merge-feature `<feature-branch>` `<master-branch>`

#### git remove-feature ####
Removes the `<feature-branch>` in root repository and all submodules. Both local and remote.

usage: git remove-feature `<feature-branch>`