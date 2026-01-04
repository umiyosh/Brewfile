# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## リポジトリ概要

macOSの開発環境セットアップ用Brewfile管理リポジトリ。[brew-file](https://github.com/rcmdnk/homebrew-file)を使用してHomebrewパッケージを宣言的に管理する。

## コマンド

### 初期セットアップ（新規Mac）
```bash
./brewSetup.sh
```

### パッケージ追加・更新
```bash
# Brewfileに記載したパッケージをインストール
brew file install

# 現在インストール済みパッケージをBrewfileに反映
brew file update
```

### パッケージ検索
```bash
brew search <パッケージ名>
```

## 構成

- `Brewfile` - パッケージ定義（tap, brew, cask）
- `brewSetup.sh` - Homebrew初期セットアップスクリプト

## Brewfileの書式

```
# tapリポジトリ追加
tap <user>/<repo>

# CLIツール
brew <package>

# GUIアプリケーション
cask install <app>
```

## 関連リポジトリ

- [umiyosh/OSXBootstrap](https://github.com/umiyosh/OSXBootstrap) - OS設定
- [umiyosh/dotfiles](https://github.com/umiyosh/dotfiles) - dotfiles
