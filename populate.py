import subprocess as sp
import os

PATH_TO_DOTFILES_REPO = '.'
HOME = '/home/gussjo/'

def populate_dotfile(file, target):
    if file in os.listdir(PATH_TO_DOTFILES_REPO):
        os.remove(target)
        os.replace(file, target)
        sp.run(f"ln {target} {file}",shell=True)
        print(f"Populated {file} and created new hard link to current git verison!")
    else:
        print(f"Cannot populate \"{file}\": does not exist in dotfiles repo. Be careful!")

targets = {
    'bashrc': HOME + '.bashrc',
    'condarc': HOME + '.condarc',
    'profile': HOME + '.profile',
    'zshrc': HOME + '.zshrc',
    'hyper.js': HOME + '.hyper.js',
    'init.vim': HOME + '.config/nvim/init.vim',
    'p10k.zsh': HOME + '.p10k.zsh',
    'tmux.conf': HOME + '.tmux.conf',
    'fp_tmuxp_session.yaml': HOME + '.config/tmuxp/fp.yaml',
    'vscode_keybindings.json': HOME + '.config/Code/User/keybindings.json',
    'vscode_settings.json': HOME + '.config/Code/User/settings.json',
}

for item in targets.items():
    file = item[0] 
    target = item[1]
    populate_dotfile(file, target)
