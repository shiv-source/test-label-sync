
# protected_branch_list = ("master", "dev")

branch="$(git rev-parse --abbrev-ref HEAD)"

# if [ "$branch" = "master" ]; then
#   echo "You can't commit directly to master branch"
#   exit 1
# fi

BRANCHES=('master' 'dev')

for val in "${BRANCHES[@]}"
do
   if [ "$branch" = "$val" ]; then
        echo "You can't commit directly to $val branch"
        exit 1
    fi
done