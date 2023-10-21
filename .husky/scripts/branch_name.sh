#!/usr/bin/env sh

# BRANCHE_NAME_STARTS_WITH=('feature' 'bugfix' 'hotfix' 'test' 'docs' 'release')  #Add more branch name prefix here 

current_branch="$(git rev-parse --abbrev-ref HEAD)"

# for val in "${PROTECTED_BRANCHES[@]}"
# do
#    if [ "$branch" = "$val" ]; then
#         echo "You can't commit directly to $val branch"
#         exit 1
#     fi
# done


# if [[ $branch =~ ^feature/.* ]]; then
#   echo "✅ The branch starts with $branch is a valid branches. ✅"
# else
#   echo "❌ The is an invalid branche."
# fi


# valid_branches=("feature/" "bugfix/" "hotfix/")

# for branch in "${valid_branches[@]}"; do
#     echo $branch 
#     echo $current_branch
#   if [[ $current_branch =~ ^$branch$ ]]; then
#     echo ""
#     echo "✅ The branch starts with $branch is a valid branch ✅"
#     echo ""
#   else
#     echo ""
#     echo "❌ You current branch $current_branch is an invalid branche. ❌"
#     echo ""
#     echo "💁 Suggestions: Branch name should be like "$branch"some_text"
#     echo ""

#     for val in "${valid_branches[@]}"; do
#         echo "  ➡️  The branch can be start only with $val and should be like this "$val"some_text "
#         echo ""
#     done
#     echo ""
#     echo ""
#     exit 1
#   fi
# done



valid_branches=("feature/" "bugfix/" "hotfix/")

for branch in "${valid_branches[@]}"; do
  if [[ $branch =~ ^$branch$ ]]; then
    echo "The branch starts with $branch is a valid branch"
    break
  fi
done