# dotfiles

An amalgamation of all the custom presets I've collected and I like on my setup from my years of using windows, linux mint and now also macos. Mostly for productivity and personal aesthetics. 

## Browser

### Site Search

My favourites to searching for things immediately in the search bar, which should be abused more, gotten from my mentor at Stripe! With site search u can immediately search with keywords such as `yt macarena`

For Firefox, under `Settings > Search > Additional Search engines > Add Search Engine`

```
### Format:
### Search engine name:
### URL with %s inplace of search term:
### Keyword:

Youtube
https://www.youtube.com/results?search_query=%s
yt

Linkedin
https://www.linkedin.com/search/results/people/?keywords=%s
li

Google Maps
https://news.google.com/search?q=%s
maps

Google Translate
https://translate.google.com/?sl=auto&tl=en&text=%s&op=translate
tr

Google News
https://news.google.com/search?q=%s
news

```

### Extensions

- Ad-blocker : [uBlockOrigin](https://github.com/gorhill/uBlock#ublock-origin)
- Password Manager: [Bitwarden](https://bitwarden.com/) / [KeepassXC](https://keepassxc.org/)



## Terminal
Colours taken from pixelgami's [terminal profile](https://github.com/pixegami/terminal-profile) 

On MacOS:

- Terminal: `Settings > Profiles > Import..`
- iTerm2: `Settings > Profiles > Import from JSON`  


## Git Alias

Git aliases are cracked. Cracked as hell when dealing with multiple branches. Also got from my mentor at Stripe (and adding some of my own) !

1. status : `git st`

    ``` 
    git config --global alias.st status
    ```
2. branch : `git br`

    ```
    git config --global alias.br branch
    ```
3. checkout : `git co branchname`

    ```
    git config --global alias.co checkout
    ```
4. add all and commit : `git ac`

    ```
    git config --global alias.ac '! ac() { git add . && git commit -m "$1" ; } ; ac'
    ```
5. add all, commit and push : `git acp "message"`

    ```
    git config --global alias.acp '! acp() { git add . && git commit -m "$1" && git push ; } ; acp'
    ```
6. log --oneline : `git lg`

    ```
    git config --global alias.lg 'log --oneline'
    ```
7. rebase on latest master : `git rbm`

    ```
    git config --global alias.rbm '! rbm() { git checkout master && git pull && git checkout "$1" && git rebase master ; } ; rbm'
    ```

Or you can run it in a single command:
```bash
git config --global include.path ~/.gitconfig-aliases
``` 