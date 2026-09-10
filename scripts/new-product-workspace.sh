#!/usr/bin/env bash
set -euo pipefail

usage() {
  echo 'Usage: ./scripts/new-product-workspace.sh <workspace-name> <destination>' >&2
  exit 2
}

[[ $# -eq 2 ]] || usage

workspace_name=$1
destination=$2

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
repo_root=$(cd -- "$script_dir/.." && pwd)
template="$repo_root/workspace-starters/product-work"

[[ -d "$template" ]] || { echo "Product-work starter not found: $template" >&2; exit 1; }
[[ ! -e "$destination" ]] || { echo "Destination already exists; nothing was changed: $destination" >&2; exit 1; }
command -v git >/dev/null 2>&1 || { echo 'Git is required but was not found on PATH.' >&2; exit 1; }

destination_parent=$(dirname -- "$destination")
mkdir -p -- "$destination_parent"
destination_parent_abs=$(cd -- "$destination_parent" && pwd)
destination_abs="$destination_parent_abs/$(basename -- "$destination")"

case "$destination_abs/" in
  "$repo_root"/*) echo 'Destination must be outside the canonical ProductLearning repository.' >&2; exit 1 ;;
esac

mkdir -- "$destination_abs"
cp -a -- "$template/." "$destination_abs/"

workspace_file="$destination_abs/WORKSPACE.md"
{
  printf '# %s\n\n' "$workspace_name"
  printf '%s\n\n' 'Owner: [NAME]'
  printf '%s\n\n' 'Engagement or product: [APPROVED NAME OR NON-SENSITIVE IDENTIFIER]'
  printf '%s\n\n' 'Purpose: [THE OUTCOME THIS WORKSPACE SUPPORTS]'
  printf '%s\n\n' 'Approved AI tools: [TOOLS]'
  printf '%s\n\n' 'Approved information: [DATA, FILES, REPOSITORIES, OR SYSTEMS]'
  printf '%s\n\n' 'Restrictions: [WHAT MUST NOT ENTER THIS WORKSPACE OR AN AI TOOL]'
  printf '%s\n' 'This is an independent product-work workspace. It is not the canonical ProductLearning repository and contains no ProductLearning source capture. Confirm the destination remote before every first push.'
} > "$workspace_file"

git -C "$destination_abs" init -b main >/dev/null
if [[ -n "$(git -C "$destination_abs" remote)" ]]; then
  echo 'Safety check failed: the new workspace must not have a configured remote.' >&2
  exit 1
fi

printf 'Created independent product-work workspace: %s\n' "$destination_abs"
printf 'Workspace: %s\n' "$workspace_name"
printf '%s\n\n' 'No Git remote was configured.'
printf '%s\n' 'Next steps:'
printf '%s\n' '  Open the workspace in your approved AI assistant.'
printf '%s\n' '  Ask it to read AGENTS.md, WORKSPACE.md, and AI-WORKFLOW.md.'
printf '%s\n' '  Complete the approved-data and restriction fields before adding evidence.'
printf '  git -C %q add .\n' "$destination_abs"
printf '  git -C %q commit -m %q\n' "$destination_abs" "Initialize $workspace_name"
printf '%s\n' '  Create an approved private repository, then add that repository as origin.'
printf '%s\n' '  Do not use slevine-torq/ProductLearning as the workspace remote.'
