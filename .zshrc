# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"
#ZSH_THEME="terminalparty"

# ack: a better grep for engineer
# ag: a faster ack
alias ack="ack-5.12"
alias ack_fast="ag"

# ex: make_empty_shell [your_shell_name]
alias make_empty_shell="cp /Users/yienge/shell/shell_skeleton.sh "

# start test tornado server
alias start_test_tornado_server="sudo /opt/local/bin/python2.7 hello_world_server.py --port=9999 --db_host=localhost --db_user=root --db_password="
alias start_mongo_db="sudo ~/Documents/mongodb-osx-x86_64-2.6.1/bin/mongod"
alias connect_to_mongo_db="sudo ~/Documents/mongodb-osx-x86_64-2.6.1/bin/mongo"

# git config (this part should be moved in the git config file)
alias git_log="git log --name-only --pretty=format:'-------------------------------------------------------------%n%n%Cred%H%Creset @%C(yellow)%d%Creset %cn %Cblue(%cr)%Creset %nDate: %ci %n %nSubject: %Cgreen%s%Creset %n%n%b'"
alias git_log_p="git log -p --pretty=format:'-------------------------------------------------------------%n%n%Cred%H%Creset @%C(yellow)%d%Creset %cn %Cblue(%cr)%Creset %nDate: %C(yellow)%ci%Creset %n %nSubject: %Cgreen%s%Creset %n%n%b'"
alias glpr="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias glgr="git log --pretty=format:'%h:%s' --graph"
alias glb="git log --pretty=format:'%h:%s' --topo-order --graph"

#ex: git_delete_branch [your_branch]
alias git_delete_branch="git branch -D "

# ex: git_remove_from_staging [your file name]
alias git_remove_from_staging="git reset HEAD^"
alias git_edit_commit="git reset --soft HEAD^"
alias git_reset_working_tree="git reset HEAD --hard"

# ex: git_diff_branches master branchA
alias git_diff_branches="git diff --name-only"
alias git_dc="git diff --cached"

# ex: git_stash_save_all 'stash message'
alias git_stash_save_all="git add . && git stash save"
alias git_stash_list="git stash list"

# other short cut
alias installed_file="dpkg -L"
alias phpunit_skel_gen="phpunit-skelgen --test"

# ctags generating
alias gen_ctags="ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."

# Mac specific path
alias cd_vimsetting='cd /usr/share/vim/'
alias cd_apache_conf='cd /private/etc/apache2'
alias cd_apache_log='cd /var/log/apache2'
alias cd_web='cd /Library/WebServer/Documents'
alias cd_view='cd /Library/WebServer/Documents/application/views'
alias cd_my_website='cd /Users/yienge/git/CodeIgniter'
alias cd_python='cd /Users/yienge/Dropbox/codes/python'

# tracking file content change
alias tail_f_access='tail -f /private/var/log/apache2/access_log'
alias tail_f_error='tail -f /private/var/log/apache2/error_log'

## OS X 10.9.3
alias apache_access_log_monitor='apachetop -f /private/var/log/apache2/access_log'
alias apache_access_log_monitor_with_ngxtop='tail -f /private/var/log/apache2/access_log | ngxtop -f common'

alias mysql_mac_db='mysql -u root -h localhost -D book_store -p'
alias vim_dict='vim /usr/share/dict/words'

alias restart_apache_on_ubuntu='sudo /etc/init.d/apache2 restart'
alias restart_apache_on_mavericks='sudo apachectl restart'

# dump db
alias mysql_dump_mac_all_db='mysqldump -u root -p -h localhost book_store > ./book_store_db.sql'

# open a magnetic link with BitTorrent
# ex: open_magnetic_link 'your magnetic link'
alias open_magnetic_link='open -a BitTorrent '

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx dircycle encode64 git-extras macports per-directory-history screen virtualenv)

# command for osx plugin:
#   tab - open the current directory in a new tab
#   pfd - return the path of the frontmost Finder window
#   pfs - return the current Finder selection
#   cdf - cd to the current Finder directory
#   shdf - pushd to the current Finder directory
#   quick-look - Quick Look a specified file
#   man-preview - open a specified man page in Preview
#   trash - move a specified file to the Trash

# command for dircycle plugin:
#   Use ctrl+shift+left or ctrl+shift+right to move to last directory

# command for git-extras plugin:
#   git changelog [-l/--list] - populate changelog file with commits since the previous tag
#   git contrib - display author contributions
#   git count [--all] - count commits
#   git delete-branch - delete local and remote branch
#   git delete-submodule - delete submodule
#   git delete-tag - delete local and remote tag
#   git extras [-v/--version] - git-extras
#   git graft:'merge commits from source branch to destination branch
#   git squash - merge commits from source branch into the current one as a single commit
#   git feature [finish] - create a feature branch
#   git refactor [finish] - create a refactor branch
#   git bug [finish] - create a bug branch
#   git summary - repository summary
#   git effort [--above] - display effort statistics
#   git repl - read-eval-print-loop
#   git commits-since - list commits since a given date
#   git release - release commit with the given tag
#   git alias - define, search and show aliases
#   git ignore - add patterns to .gitignore
#   git info - show info about the repository
#   git create-branch - create local and remote branch
#   git fresh-branch - create empty local branch
#   git undo - remove the latest commit
#   git setup - setup a git repository
#   git touch - one step creation of new files
#   git obliterate - Completely remove a file from the repository, including past commits and tags
#   git local-commits - list unpushed commits on the local branch'

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=~/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/mysql/bin:$PATH

# evaluating login msg
#sh /Users/yienge/shell/motd2.sh
