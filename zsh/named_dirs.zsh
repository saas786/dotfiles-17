#
# Named directories
# http://michael.thegrebs.com/2012/08/06/syncing-zsh-named-directories/
#

typeset -A NAMED_DIRS

NAMED_DIRS=(
  chef     ~/Projects/freistil/ops/chef
  cb       ~/Projects/freistil/ops/chef/cookbooks
)

for key in ${(k)NAMED_DIRS}
do
  if [[ -d ${NAMED_DIRS[$key]} ]]; then
    hash -d $key=${NAMED_DIRS[$key]}
  else
    unset "NAMED_DIRS[$key]"
  fi
done

function lsdirs () {
  for key in ${(k)NAMED_DIRS}
  do
    printf "%-10s %s\n" $key  ${NAMED_DIRS[$key]}
  done
}
