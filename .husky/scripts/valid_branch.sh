#!/usr/bin/env sh

# Valid branch will be something like; feature/some_feature_name , bugfix/some_bugfix_name , 
# please only update valid_branches list 
valid_branches=('feature' 'bugfix' 'hotfix' 'test' 'docs' 'release')



is_passed=false
current_branch="$(git rev-parse --abbrev-ref HEAD)"

for branch in "${valid_branches[@]}"; do
    regex=^$branch/.*   #^bugfix/.*
    if [[ $current_branch =~ $regex ]]; then
        is_passed=true
        echo ""
        echo "✅ The branch starts with $current_branch is a valid branch ✅"
        echo ""
        break
    fi
done

if [[ $is_passed == "false" ]]; then
    echo ""
    echo "❌ You current branch 😡 $current_branch is an invalid branch. ❌"
    echo ""
    echo "💁 Suggestions: Branch name should be like 😡 "$branch"/some_text"
    echo ""
    for val in "${valid_branches[@]}"; do
        echo "  ➡️  The branch can be start only with $val and it should be like "$val"/some_text 🔥"
        echo ""
    done
    echo ""
    echo ""
    exit 1
fi