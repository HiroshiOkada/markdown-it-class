#!/bin/bash

echo '{ "private": true }' > package.json
npm i markdown-it markdown-it-attrs @toycode/markdown-it-class --save
node sample.js

