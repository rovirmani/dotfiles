# Setting PATH for Python 3.9
# The original version is saved in .zprofile.pysave
# You may want to adjust this for your specific Python version
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH

# Initialize Homebrew
if command -v brew &> /dev/null; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Source additional scripts or configurations
# Make sure to adjust this path or remove it if not necessary
# source $HOME/cs61b-software/adm/login

# Added by Toolbox App
export PATH="$PATH:/Users/rohanvirmani/Library/Application Support/JetBrains/Toolbox/scripts"

# Source zshrc if it exists
if [ -f ~/.zshrc ]; then
    source ~/.zshrc
fi
