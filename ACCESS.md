# Access and protection

## Current verified state

As of 2026-09-09:

- `slevine-torq/ProductLearning` is **private**.
- `main` is the default branch.
- No collaborators were added during the migration.
- GitHub's branch-protection API returned: `Upgrade to GitHub Pro or make this repository public to enable this feature.`
- `CODEOWNERS` is present but cannot enforce review without supported branch protection or a ruleset.

## Safe sharing requirement

The intended learner permission is **Read**: clone and pull, with no push access. Before inviting learners, move or upgrade the repository to an owner/plan that supports granular private-repository roles and protection. A Torq GitHub organization with the appropriate plan and a read-only team is the preferred setup.

Do not assume that inviting someone directly to a private personal repository creates a read-only collaborator. Verify the role shown by GitHub before sending the invitation.

After access is verified, send the learner the [Codex connection guide](CONNECT-CODEX.md). It separates read-only use of ProductLearning from work in a learner-owned repository.

## Protection settings to apply when available

For `main`:

- Require a pull request before merging.
- Require one approval.
- Require review from Code Owners.
- Dismiss stale approvals when new commits are pushed.
- Require conversation resolution.
- Block force pushes and branch deletion.
- Allow repository administrators to bypass only for recovery or initial administration.

Then test with a non-maintainer account:

1. Clone and pull succeed.
2. Direct push to `main` fails.
3. Creating or pushing any branch to the canonical repository fails for a learner with Read access.
4. The learner can copy a course starter and push that independent workspace to a different private repository they own.
