echo 'export PATH=~/anaconda3/bin:$PATH' >> ~/.bashrc
echo 'export PATH=~/anaconda3/bin:$PATH' >> ~/.zshrc
echo 'export PATH=~/anaconda3/etc/profile.d/conda.sh:$PATH' >> ~/.bashrc
echo 'export PATH=~/anaconda3/etc/profile.d/conda.sh:$PATH' >> ~/.zshrc
source ~/.bashrc
source ~/.zshrc
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --set show_channel_urls yes
