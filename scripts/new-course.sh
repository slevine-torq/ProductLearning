#!/usr/bin/env bash
set -euo pipefail

usage() {
  echo 'Usage: ./scripts/new-course.sh <product-management-consultants|technical-fluency> <course-name> <destination>' >&2
  exit 2
}

[[ $# -eq 3 ]] || usage

program=$1
course_name=$2
destination=$3

case "$program" in
  product-management-consultants|technical-fluency) ;;
  *) usage ;;
esac

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
repo_root=$(cd -- "$script_dir/.." && pwd)
template="$repo_root/course-starters/$program"

[[ -d "$template" ]] || { echo "Course starter not found: $template" >&2; exit 1; }
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
  printf '# %s\n\n' "$course_name"
  if [[ "$program" == 'product-management-consultants' ]]; then
    printf 'Program: Product Management for Consultants\n\n'
  else
    printf 'Program: Technical Fluency for Transform Practice\n\n'
  fi
  printf '%s\n' 'This is an independent learner-owned workspace created from Torq’s ProductLearning starter. Its writable areas are `modules/`, `outputs/`, `course-plan.md`, `progress.md`, and `decisions.md`. The canonical ProductLearning source library remains read-only.'
} > "$workspace_file"

git -C "$destination_abs" init -b main >/dev/null
if [[ -n "$(git -C "$destination_abs" remote)" ]]; then
  echo 'Safety check failed: the new workspace must not have a configured remote.' >&2
  exit 1
fi

printf 'Created independent course workspace: %s\n' "$destination_abs"
printf 'Program: %s\n' "$program"
printf '%s\n\n' 'No Git remote was configured.'
printf '%s\n' 'Next steps:'
printf '  git -C %q add .\n' "$destination_abs"
printf '  git -C %q commit -m %q\n' "$destination_abs" "Initialize $course_name"
printf '%s\n' '  Create a new private repository, then add that new repository as origin.'
printf '%s\n' '  Do not use slevine-torq/ProductLearning as the workspace remote.'
