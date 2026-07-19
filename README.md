# tsubu-cloud-docs

tsubu-cloud のドキュメントサイト。[Blume](https://github.com/blume-docs/blume) で構築。

## Build

```sh
npm ci
npm run dev    # 開発サーバー
npm run build  # 静的ビルド (dist/)
```

Docker イメージとしてビルドする場合:

```sh
docker build -f Dockerfile .
```

コミットメッセージは [Conventional Commits](https://www.conventionalcommits.org/ja/v1.0.0/) に従います。
