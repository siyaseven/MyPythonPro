# Simplified dotfile for video recordings

export SECRET_KEY='c5f0b016bed36cf0fd469987c7ea8e1b'
export SQLALCHEMY_DATABASE_URI='sqlite:///site.db'

#export PATH="/usr/local/sbin:$PATH";
export PATH="HOME/anaconda/bin:$PATH";

# Load dotfiles:
for file in ~/.{bash_prompt,aliases,private}; do 
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#Git auto-complete
if [ -f ~/.git-completion.bash ]; then 
	source ~/.git-completion.bash
fi



