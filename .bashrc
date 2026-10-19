# plugins
eval "$(zoxide init bash)"

# lazy bash aliases
alias clang++="clang++ -std=c++20 -Wall -Wextra -Wpedantic -Wshadow -Wconversion"
alias clr="clear"
alias code="codium"

# pi stuff
q() {
    pi --model gpt-6-luna --thinking off --print "$*"
}

# nvim stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# terminal prompt to include branch name
git_branch() {
    local branch
    branch=$(git branch --show-current 2>/dev/null)

    if [ -n "$branch" ]; then
        echo " ($branch)"
    fi
}
