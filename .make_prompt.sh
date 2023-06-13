. ~/.bash_color_functions

virtualenv_info() {
  venv="${VIRTUAL_ENV##*/}"
  [[ -n "$venv" ]] && echo "($venv) "
}

git_branch_info() {
  branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  echo $branch
}

pwd_info() {
  CITC_BASE="/google/src/cloud/cgs/"
  if [[ "$PWD" =~ "$HOME" ]]; then
    echo ${PWD/#$HOME/'~'}
    return
  elif [[ "$PWD" =~ "$CITC_BASE" ]]; then
    client=${PWD/#$CITC_BASE/}
    echo $client \
      | cut -d/ -f2- \
      | sed 's/google3/g3/' \
      | sed 's/third_party/3p/'
    return
  fi
  echo $PWD
}

fgbg() {
  if [[ -z "${1}" ]]; then
    return
  fi
  colored "${1}" "${2}" "${3}"
}

be_fast() {
  cmd=$*
  timeout .75 bash -c "source ~/.make_prompt.sh; $cmd 2>/dev/null"
  if [[ $? == 124 ]]; then
    echo "($cmd timed out)"
  fi
}

make_prompt() {
  LIGHT_RED='200;0;0'
  DARK_RED='0;95;255'
  BLACK='0;0;0'
  GREEN='0;200;135'
  PURPLE='135;0;255'
  WHITE='255;255;255'

  echo -e "$(set_fg $WHITE)"
  echo -e "
    $WHITE $GREEN $(be_fast virtualenv_info)
    $WHITE $LIGHT_RED $(be_fast pwd_info)
    $WHITE $PURPLE   $(be_fast git_branch_info)
    $BLACK $BLACK X " \
      | while read fg bg text; do
    if [[ -n "$text" ]]; then
      echo -en "$(set_bg $bg) $(reset_style)$(colored "$fg" "$bg" "${text} ")$(set_fg $bg)"
    fi
  done
  echo -e "$(reset_style)"
}

export VIRTUAL_ENV_DISABLE_PROMPT=1
PROMPT_COMMAND=make_prompt
export PS1="$ "
