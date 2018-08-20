markdown-it-class
=================

This is a plugin for the [markdown-it](https://github.com/markdown-it/markdown-it) markdown parser.
This plugin add class attributes to html elements.

Install
---

```
npm install @toycode/markdown-it-class --save-dev
```

Although it will work with "yarn", I have not tried it.


Use
---

### Add title class to h1 element

```
const MarkdownIt = require('markdown-it')
const markdownItClass = require('@toycode/markdown-it-class')

const mdText = '# Hello'
const mapping = { h1: 'title' }
const md = MarkdownIt().use(markdownItClass, mapping)
console.log(md.render(mdText))
// <h1 class="title">Hello</h1>
```

### Add more than one classes

```js
const MarkdownIt = require('markdown-it')
const markdownItClass = require('@toycode/markdown-it-class')

const mdText = '# Hello\n## *Markdown* world'
const mapping = { h1: ['title', 'is-4'], h2: 'subtitle', em: 'tag' }
const md = MarkdownIt().use(markdownItClass, mapping)
console.log(md.render(mdText))
// <h1 class="title is-4">Hello</h1>
// <h2 class="subtitle"><em class="tag">Markdown</em> world</h2>

```
