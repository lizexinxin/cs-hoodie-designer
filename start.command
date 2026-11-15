#!/bin/bash
# 双击启动 CS2 战队卫衣 3D 设计器（本地服务 + 自动打开浏览器）
cd "$(dirname "$0")"
PORT=8636
( sleep 0.8; open "http://localhost:${PORT}/index.html" ) &
python3 -m http.server ${PORT}
