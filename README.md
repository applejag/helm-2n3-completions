# Helm 2 & 3 completions plugin for Oh My Zsh

> Inspired by the `kubectl.plugin.zsh` from Oh My Zsh
>
> <https://github.com/ohmyzsh/ohmyzsh/blob/0736a3749a9c9ae4ba3096b0b6c55250f19fef17/plugins/kubectl/kubectl.plugin.zsh#L1-L11>

This gist does the same for helm, but also for helm2 and helm3, in case you were to install multiple helms side by side.

For example, if you were to download and install

- `https://get.helm.sh/helm-v2.16.7-linux-amd64.tar.gz` into `/usr/local/bin/helm2`
- `https://get.helm.sh/helm-v3.2.0-linux-amd64.tar.gz` into `/usr/local/bin/helm`

Then you would get correct completion for both cases.

## Installation

### Oh My Zsh

Clone this repo into your `~/.oh-my-zsh/custom` folder

```zsh
$ git clone https://github.com/jilleJr/helm-2n3.git $ZSH/custom/helm-2n3
```

Add the plugin to the `plugins` array in your `~/.zshrc`:

```zsh
plugins=(... helm2n3)
```

### Oh My Zsh via Zinit

Add the following to your `~/.zshrc`

```zsh
zinit wait lucid for \
    jilleJr/helm-2n3
```
