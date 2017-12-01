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
