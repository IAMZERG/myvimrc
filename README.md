# myvimrc
My .vimrc file.  Yeah, I'm cool.. I use vim and I have my .vimrc on Github.


---
### Reinstalling packages

Found a [vimcast](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) on keeping all of your vim plugins in git submodules. Makes it really easy to port your setup on a fresh install.
Below is the 'just add water' version.

```
cd ~
git clone http://github.com/IAMZERG/myvimrc.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update

```

### Reconstituting Omnisharp-vim
```
cd ~/.vim/bundle/omnisharp-vim/

```

