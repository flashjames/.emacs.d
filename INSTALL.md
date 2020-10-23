# Use our .bashrc from bash_scripts/
 rm ~/.bashrc
ln -s /home/prox/.emacs.d/bash_scripts/.bashrc /home/prox/.bashrc
source ~/.bashrc
link /home/prox/.emacs.d/tmux/.tmux.conf /home/prox/.tmux.conf
