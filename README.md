# rtx plugin for Oh My Zsh

**Maintainer:** [@dhanak](https://github.com/dhanak).

Adds [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh/) integration with
[rtx](https://github.com/jdxcode/rtx), the polyglot runtime manager, asdf rust
clone.

## Installation

1. Clone this repository in oh-my-zsh's custom plugins directory:

```
$ git clone https://github.com/dhanak/omz-rtx ${ZSH_CUSTOM:~/.oh-my-zsh/custom}/plugins/rtx
```

2. Activate the plugin by adding it to your `plugins` definition in `~/.zshrc`.

```
plugins=(rtx)
```

## Usage

See the [rtx documentation](https://github.com/jdxcode/rtx#commands) for
information on how to use rtx:

```
$ rtx install nodejs@18
$ rtx global nodejs@18
$ node -v
v18.10.9
```
