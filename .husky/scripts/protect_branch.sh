#!/usr/bin/env sh

#Add more branches here to prevent direct commits.
# please only update protected_branches list 
protected_branches=('master' 'dev')  



is_protected_branch=false
current_branch="$(git rev-parse --abbrev-ref HEAD)"

for val in "${protected_branches[@]}";do
   if [[ "$current_branch" == "$val" ]]; then
        is_protected_branch=true
        echo ""
        echo "❌ You can't commit directly to $val branch. ❌"
        echo ""
        exit 1
    fi
done

if [[ $is_protected_branch == "false" ]]; then
    echo ""
    echo "🎊🎈 Congratulations you are on the right track. your current branch $current_branch is not proected 🎊🎈👏"
    echo ""
fi