## docsify-template

基于 gitbook-summary 自动生成目录的 docsify 模板项目

## 快速开始


```bash
# 安装依赖
make install

# 开发启动调试
# http://localhost:3000
make serve

# docker-compose 后台启动
# http://localhost:4000
make up
```

```bash
$ make help

Usage: make <TARGETS> <OPTIONS> ...

Targets:
  install   Install docsify and gitbook-summary
  gen       Gen _sidebar.md file
  up        Docker compose up server
  push      Commit and push to remote repo
  update    Use update_remote.sh to update remote repo
  serve     Docsify serve in dev env
  help      Show this help info.
```

## 自定义 GitHub 仓库

修改 docs/config.js 文件

```js
var repo = 'https://github.com/dengjiawen8955/docsify-template';
```
