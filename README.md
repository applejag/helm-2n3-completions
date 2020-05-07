# Helm 2 & 3 completions plugin for Oh My Zsh

Inspired by the [`kubectl.plugin.zsh` from Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh/blob/0736a3749a9c9ae4ba3096b0b6c55250f19fef17/plugins/kubectl/kubectl.plugin.zsh#L1-L11),
this plugin does the same for Helm, but handles side-by-side installs of Helm v2
and Helm v3.

For example, if you were to download and install

- `https://get.helm.sh/helm-v2.16.7-linux-amd64.tar.gz` into `/usr/local/bin/helm2`
- `https://get.helm.sh/helm-v3.2.0-linux-amd64.tar.gz` into `/usr/local/bin/helm3`

Then you would get correct completion for both programs.

## Installation

### Helm

By default the completions assume you have installed Helm v2 as `helm2` and
Helm v3 as `helm3`.

To change this default, set the variables `HELM_2_BIN` and/or `HELM_3_BIN`
respectively, before the plugin gets loaded.

If you have Helm v2 installed as just `helm`, and Helm v3 as `helm3` you only
need to set the `HELM_2_BIN` environment variable like so:

```sh
export HELM_2_BIN=helm
```

### Oh My Zsh

Clone this repo into your `~/.oh-my-zsh/custom` folder

```sh
$ git clone https://github.com/jilleJr/helm-2n3-completions.git $ZSH/custom/helm-2n3-completions
```

Add the plugin to the `plugins` array in your `~/.zshrc`:

```sh
plugins=(... helm2n3)
```

### Oh My Zsh via Zinit

Add the following to your `~/.zshrc`

```sh
zinit wait lucid for \
    jilleJr/helm-2n3-completions
```

## Force refresh completions cache

If you update your Helm binaries then the completions will most probably be
out of date as the `helm-2n3-completions.plugin.zsh` script caches the
completions.

Clean the cache by removing the respective Helm completions file:

```sh
# Clean Helm v2 completions
$ rm -v $ZSH_CACHE_DIR/helm2_completions

# Clean Helm v3 completions
$ rm -v $ZSH_CACHE_DIR/helm3_completions
```
