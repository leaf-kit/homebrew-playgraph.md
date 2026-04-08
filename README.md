# homebrew-playgraph.md

Homebrew tap for [playgraph.md](https://github.com/leaf-kit/playgraph.md).

## Install

```bash
brew tap leaf-kit/playgraph.md
brew install --cask playgraph
```

> Cask 설치 시 quarantine 속성이 자동 제거됩니다.
> 수동 설치한 경우 아래 명령어를 실행하세요:
>
> ```bash
> xattr -cr /Applications/playgraph.app
> ```

## Uninstall

```bash
brew uninstall --cask playgraph
brew untap leaf-kit/playgraph.md
```
