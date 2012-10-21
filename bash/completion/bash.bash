
for dir in /usr/local/etc /etc; do
  if [ -e ${dir}/bash_completion ]; then
    source ${dir}/bash_completion
    complete -r vim
    break
  fi
done

if [ -z "$BASH_COMPLETION" ]; then
  echo "no bash-completion"
fi

