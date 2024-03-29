# github-pr-release-action

## 概要

[git-pr-release](https://github.com/x-motemen/git-pr-release)をgithub actions上で動かすアクションです。  
`suqash and merge`でマージしたPull Requestもリストに含められるよう、`--squashed`オプションを採用しています。

## 使い方


```yaml
jobs:
  github-pr-release:
    name: github-pr-release
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
      with:
        fetch-depth: 0
    - name: git-pr-release
      uses: almexinc/github-pr-release-action@v1
```

環境変数の設定値は、[git-pr-release](https://github.com/x-motemen/git-pr-release)をご参照ください。


## その他

このリポジトリは自組織のgithub actionsでactionとして使われることを想定し、publicで公開しています。  
そのため、actionを自組織のみで共有できる方法が見つかればpublic以外の可視性にする可能性があります。ご容赦ください。

