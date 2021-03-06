## git-scripts ##
A library of useful git commands to use when working in a feature branch workflow with submodules.
The goal with all the commands are that they should work on the whole repository including submodules in every task that is executed.
This to make it an easy task to use submodules.

### Workflow ###
The workflow used is as follows
- All features branched from master
- All feature branches exist on remote
- When done with feature it is squashed to one commit (normally)
- Features are rebased onto master when done
- All submodules use the same branch names as root repository
- When feature is merged to master the branch is removed

The master branch can be another branch at some specific states of a project.

### Commands ###
Copy the contents of the bin directory into your `<git-install-dir>`/usr/bin directory or runt the provided install.sh script in the bin directory - ./install.sh `<path-to-git-install-dir>`.
The commands included can then be used as if they were normal git commands with auto-completion using the TAB-key.

#### git create-feature ####
Creates a branch in root repository and all submodules based
the <master-branch> branch. Checks out the new branch and
pushes it to the remote. All local changes is stashed/popped
before/after creation.

usage: git create-feature `<feature-name>` [`<master-branch>`]

#### git commit-feature ####
Adds and commits all changes in root repository and all submodules.
If -m is used, the `<commit-message>` will be prefixed with the current branch name.
master: `<commit-message>`

usage: git commit-feature [`<options>`]

    -c, --commit-only     only commits staged changes
    -m, --message <message>
                          commit message

#### git squash-feature ####
Squash all commits, since branched, in current (feature) branch
into one commit for root repository and submodules. Also
squashes the commit messages automatically.

usage: git squash-feature [`<options>`] [`<master-branch>`]
usage: git squash-feature -n 3 -m "Added some..." master

    -m, --message <message>
                          commit message
    -n, --number-of-commits <number>

#### git rebase-feature ####
Rebase root repository and all submodules on top of latest `<rebase-branch>`.

usage: git rebase-feature [`<options>`] `<feature-branch>` `<rebase-branch>`

    -c, --continue        continue rebase after a conflict (only used internally)

#### git push-feature ####
Push all changes in root repository and all submodules.

usage: git push-feature [`<options>`] [`<remote>`]

    -f, --force           force updates
    --force-with-lease    forces update if ok

#### git checkout-branch ####
Checks out `<branch>` in root repository and all submodules.

usage: git checkout-branch `<branch>`

#### git merge-feature ####
Merges `<feature-branch>` in root project and all submodules into `<master-branch>`.
If `<master-branch>` is not given it defaults to current branch.

usage: git merge-feature `<feature-branch>`
   or: git merge-feature `<feature-branch>` [`<master-branch>`]

#### git remove-feature ####
Removes the `<feature-branch>` in root repository and all submodules.
Both local and remote.

usage: git remove-feature [`<options>`] `<feature-branch>` [`<remote>`]

    -f, --force           remove even if branch not merged
    -l, --local-only      local and remote ref removed

#### git clone-all ####
Clones a repository and all submodules.

usage: git clone-all `<repository>` [`<directory>`]

#### git status-all ####
Shows the status for the root repository and all submodules.

usage: git status-all [`<options>`]

    -s, --short           show status concisely
    -u, --untracked-files[=<mode>]
                          show untracked files, optional modes: all, normal, no. (Default: all)

#### git sync-branch ####
Checks out `<branch>` and pulls the latest changes for `<branch>` in root repository
and all submodules, using rebase.

usage: git sync-branch [`<options>`] [`<remote>` [`<branch>`]]

    -a, --autostash       automatically stash/stash pop before and after rebase
    --fetch-only          performs a fetch instead of pull --rebase