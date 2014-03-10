# Branching

This is a guide to how we work with git branches. It is inspired by several
sources<sup>see section "sources"</sup>. Described below are the different branches that
you can find in any of our project repositories, and their functions.

## Master branch

```
May branch off from: initial commit
May pull from:       release candidates, development, fixes
May merge into:      none
Naming convention:   master
```

The "stable" branch. It's one of two branches that you'll always find in every origin and
has an infinite lifetime. It can therefore be referred to as a main-branch.

> We consider origin/master to be the main branch where the source code of HEAD always
> reflects a production-ready state.

The first commit of a project is always made to this branch with the initial version number.

## Development branch

```
May branch off from: initial commit
May pull from:       features, fixes
May merge into:      master, release candidates, demo
Naming convention:   dev
```

The "development" branch. It's the other of the two main-branches.

> We consider origin/develop to be the main branch where the source code of HEAD always
> reflects a state with the latest delivered development changes for the next release.

Any development changes after the first commit have to be made to this branch before they
can be merged to the master. Nightly builds are created from this branch.

## Release candidate branches

```
May branch off from: development
May pull from:       fixes
Must merge into:     master, development
Naming convention:   rc-<version>
```

These are "support" branches, in that they do not have an infinite lifetime. They will be
disposed of once they've fulfilled their purpose.

Once the dev branch has reached a point where it (almost) reflects a production-ready
state, a release candidate should be forked from it. This clears up the dev branch for new
development changes for a future release.

The release candidate branch should be named `rc-*` where * is replaced with the version
name of the release it promises. This branch exists to make preparations (like fixing
bugs) before release. Once the branch is in a fully acceptable production-ready state, it
should be merged into the master and then be disposed.

Release-candidate builds are created from these branches.

## Feature branches

```
May branch off from: development
May pull from:       development
May merge into:      development, demo
Naming convention:   <name>-feature
```

A "feature" branch. This is a support branch.

Any new features that need to be introduced into a project should be created in their own
feature branches. These branches start as a fork from the development branch, and when all
required milestones for the feature are reached, is merged back into the development
branch and then disposed of.

When merging a feature branch into the development branch, the `--no-ff` flag should be
passed to `git merge` in order to ensure that the history of the feature branch is kept,
even if no changes were made to the development branch while the feature was in development.

## Fix branches

```
May branch off from: master
May pull from:       master, development
Must merge into:     master, development
Naming convention:   fix-<version>
```

A "hotfix" branch. This is a support branch.

This branch is created when a bug in the master branch is too big to fix with a single
small commit.

> Hotfix branches are very much like release branches in that they are also meant to
> prepare for a new production release, albeit unplanned. They arise from the necessity to
> act immediately upon an undesired state of a live production version. When a critical
> bug in a production version must be resolved immediately, a hotfix branch may be
> branched off from the corresponding tag on the master branch that marks the production version.

## Demo branches

```
May branch off from: development, release candidates, demos
May pull from:       all
May merge into:      none
Naming convention:   <name>-demo
```

A "demo" branch. This is a support branch.

This branch is created when an intermediate demonstration of future features is required.
It is allowed to pull and even cherry-pick from any branch in the repository, and change
code freely in order to achieve a production-ready state, which is not necessarily
representative of a future release, but gives an impression.

Code from these branches is never merged back into any of the other branches.

# Sources

* Our [branching/versioning model](http://development.mokuji.org/versioning) for Mokuji.
* The [blog post](http://nvie.com/posts/a-successful-git-branching-model/) from nvie.com about branching.
