#!/bin/bash
###
 # @Author: AEdge
 # @Date: 2022-03-26 15:18:17
 # @LastEditTime: 2022-03-26 16:15:40
 # @LastEditors: AEdge
 # @Description: Build Solidity
 # @FilePath: \solidity_build\build.sh
### 
echo "+ 生成项目中"
git clone git@github.com:AEdgejay/solidity_framework.git --single-branch $1
clear
echo "+ 生成项目成功"
cd $1
echo "+ 开始安装插件"
npm i
npm run update
clear
echo "+ 安装成功"
rm -rf .git
git init
echo "+ 加载完成"
echo "+ 地址在 $(pwd)"