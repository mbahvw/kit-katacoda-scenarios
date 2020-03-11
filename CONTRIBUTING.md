# Developer Guide

Thank you for taking the time out to contribute to KubeAcademy!

This guide will walk you through the process of making your first commit and
how to effectively get it merged upstream.

Before getting started, go through the following:
1. Read and observe the [code of conduct](CODE_OF_CONDUCT.md).
2. Set up necessary [accounts](#accounts-setup).
3. Review [Katacoda documentation](https://katacoda.com/docs).

## Accounts setup

At minimum, you need the following accounts for effective participation:
1. **Github**: Committing any change requires you to have a [github account](https://github.com/join).
2. **Katacoda**: Sign up for a [free account with Katacoda](https://katacoda.com/signup).

## Contribute

There are multiple ways in which you can contribute, either by contributing
code in the form of new scenarios or bug-fixes or even non-code contributions
like helping with reviews, testing, documentation updates, filing
new issues, etc.

## Developer workflow

Before picking up a task, go through the existing [issues](https://github.com/kube-academy/katacoda-scenarios/issues)
and make sure that your change is not already being worked on. If it does not
exist, please create a new issue and discuss it with other members of the team.

## Filing an issue

Help is always appreciated. If you find something that needs fixing, please
[file an issue](https://github.com/kube-academy/katacoda-scenarios/issues).
Please ensure that the issue is self explanatory and has enough information for
an assignee to get started.

### GitHub workflow

Each scenario should be self-contained in its own directory at the top level of
this repository.

1. Fork your own copy of the repository to your GitHub account by clicking on
   `Fork` button on the [GitHub repository](https://github.com/kube-academy/katacoda-scenarios).
2. Clone the forked repository on your local setup.
    ```
    git clone https://github.com/$user/katacoda-scenarios
    ```
    Add a remote upstream to track the upstream repository.
    ```
    git remote add upstream https://github.com/kube-academy/katacoda-scenarios
    ```
    Never push to upstream master
    ```
    git remote set-url --push upstream no_push
    ```
3. Create a topic branch.
    ```
    git checkout -b branchName
    ```
4. Make changes and commit it locally.
    ```
    git add <modifiedFile>
    git commit
    ```
5. Keeping branch in sync with upstream.
    ```
    git checkout branchName
    git fetch upstream
    git rebase upstream/master
    ```
6. Push local branch to your forked repository.
    ```
    git push -f $remoteBranchName branchName
    ```
7. [Link your GitHub repository to Katacoda](https://katacoda.com/docs/configure-git)
   to test your scenario changes.
8. Create a Pull request on GitHub.
   Visit your fork at `hhttps://github.com/kube-academy/katacoda-scenarios` and click
   `Compare & Pull Request` button next to your `remoteBranchName` branch.

### Getting reviewers

Once you have opened a Pull Request (PR), let the team know in Slack in #kubeacademy
so folks can review and provide review comments which you need to address.
Commit changes made in response to review comments to the same branch on your
fork. Once a PR is ready to merge, squash any *fix review feedback, typo*
and *merged* sorts of commits.

To make it easier for reviewers to review your PR, consider the following:
1. Follow the [Katacoda documentation](https://katacoda.com/docs).
2. Learn [how to write scenarios](https://katacoda.com/scenario-examples).
3. Follow [git commit](https://chris.beams.io/posts/git-commit/) guidelines.

### Reverting a commit

1. Create a branch in your forked repo
    ```
    git checkout -b revertName
    ```
2. Sync the branch with upstream
    ```
    git fetch upstream
    git rebase upstream/master
    ```
3. Create a revert based on the SHA of the commit.
    ```
    git revert SHA
    ```
4. Push this new commit.
    ```
    git push $remoteRevertName revertName
    ```
5. Create a Pull Request on GitHub.
   Visit your fork at `hhttps://github.com/kube-academy/katacoda-scenarios` and click
   `Compare & Pull Request` button next to your `remoteRevertName` branch.