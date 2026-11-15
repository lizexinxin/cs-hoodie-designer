# CS2 战队卫衣 3D 设计器

用 three.js 做的卫衣定制预览工具：10 支战队（MOUZ / FURIA / Vitality / Spirit / BetBoom / Falcons / NAVI / The MongolZ / G2 / TYLOO）的简化队徽 + 实时 3D 试穿效果。

## 启动

- 方式一：双击 `start.command`（macOS，自动起服务并打开浏览器）
- 方式二：本目录下执行 `python3 -m http.server 8636`，浏览器打开 http://localhost:8636/index.html

> 必须通过 http 访问（ES Module 限制），three.js 已本地化到 `vendor/`，无需外网。

## 功能

- 正面 / 背面 / 左右袖 4 个印花区，logo 可拖拽、缩放、旋转、镜像、调整图层
- 8 种成衣配色 + 自定义取色
- 4 种一键排版预设：A 前胸荣誉墙 / B 背面环绕 / C 前小后大 / D 斜向色带
- 自定义文字（自动对比色）
- 上传官方 logo PNG 替换简化徽章（「传图」按钮或直接拖图进窗口）
- 设计自动保存在浏览器 localStorage；导出 1400×1750 高清 PNG

## 使用真实 3D 模型（可选）

在 `model/` 文件夹放入卫衣 GLB/GLTF 模型（见 `model/README.md`），刷新后设计器自动切换到**真实模型模式**：
模型作为印花基底，队徽/文字以贴花（DecalGeometry）方式投影到模型表面，支持同样的拖拽/缩放/旋转/预设/导出。
删除模型文件即回到内置程序化模型。Sketchfab（免费注册）搜索 "hoodie" 并筛选 Downloadable 可下到高质量模型。

## 注意

- 各战队 logo 为其商标，仅供个人定制自穿参考，请勿商用。
- `vendor/three.module.js` 来自 [three.js](https://github.com/mrdoob/three.js)（MIT License），为离线使用而内嵌。
