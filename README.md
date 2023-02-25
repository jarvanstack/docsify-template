## docsify-template

基于 gitbook-summary 自动生成目录的 docsify 模板项目

## 快速开始


```bash
# 安装依赖
make install

# 启动
make serve
```

自动生成的 _sidebar.md 文件

```bash
$ cat docs/_sidebar.md 
* [README](README.md)
- ChapterOne
    * [SectionOne](1-ChapterOne/1a-SectionOne.md)
    * [SectionTwo](1-ChapterOne/1b-SectionTwo.md)
- ChapterTwo
    * [SectionOne](2-ChapterTwo/1a-SectionOne.md)
    * [SectionTwo](2-ChapterTwo/1b-SectionTwo.md)
```


访问: http://localhost:3000

![](https://markdown-1304103443.cos.ap-guangzhou.myqcloud.com/2022-02-0420230225203805.png)

![](https://markdown-1304103443.cos.ap-guangzhou.myqcloud.com/2022-02-0420230225203842.png)

## 发布 GitHub Page

Settings -> Pages -> GitHub Action

打开 GitHub Action, 自动部署到 GitHub Page


访问地址： https://dengjiawen8955.github.io/docsify-template

