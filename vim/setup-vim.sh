VIM_DIRECTORY=~/.vim
AUTOLOAD_DIRECTORY="$VIM_DIRECTORY"/autoload
BUNDLE_DIRECTORY="$VIM_DIRECTORY"/bundle
PATHOGEN_URL="www.vim.org/scripts/download_script.php?src_id=21650"

# Create autoload directory if does not exist.
if [ ! -d "$AUTOLOAD_DIRECTORY" ]; then
  mkdir -p "$AUTOLOAD_DIRECTORY"
fi

# Create bundle directory if does not exist.
if [ ! -d "$BUNDLE_DIRECTORY" ]; then
  mkdir -p "$BUNDLE_DIRECTORY"
fi

# Install vim-pathogen
curl "$PATHOGEN_URL" > "$AUTOLOAD_DIRECTORY"\pathogen.vim

# Install .vimrc
if [ -f "$HOME/.vimrc" ]
  rm -f "$HOME/.vimrc"
fi

ln -s "$PWD/.vimrc" "$HOME/.vimrc"
