# 图片对比滑块项目

一个类似于 [VideoGigaGAN](https://videogigagan.github.io/) 的图片对比滑块网页，可以通过左右拖动滑块来比较两张图片的差异。

## 功能特性

✨ **交互式滑块** - 流畅的拖动体验，实时查看两张图片的对比  
🖱️ **多种交互方式** - 支持拖动滑块、点击定位  
📱 **移动端支持** - 完美支持触摸设备  
🎨 **现代化UI** - 精美的渐变背景和动画效果  
📤 **图片上传** - 可以上传自己的图片进行对比  
📐 **响应式设计** - 自适应各种屏幕尺寸  

## 使用方法

### 在线预览

直接在浏览器中打开 `index.html` 文件即可使用。

### 部署到 GitHub Pages

1. 将此项目推送到 GitHub 仓库
2. 在仓库设置中启用 GitHub Pages
3. 选择主分支（main）作为源
4. 访问 `https://你的用户名.github.io/仓库名/` 即可在线查看

### 本地使用

```bash
# 方式1: 直接双击 index.html 在浏览器中打开

# 方式2: 使用简单的 HTTP 服务器
python -m http.server 8000
# 然后访问 http://localhost:8000

# 或者使用 Node.js
npx http-server
```

## 如何添加你的图片

### 方法1: 通过网页上传

直接在网页底部的上传区域选择你的两张图片即可。

### 方法2: 替换代码中的图片URL

编辑 `index.html` 文件，找到以下代码（大约在第 235-236 行）：

```javascript
imageBefore.style.backgroundImage = "url('你的图片1路径')";
imageAfter.style.backgroundImage = "url('你的图片2路径')";
```

将图片放在项目目录中，例如创建 `images` 文件夹：

```javascript
imageBefore.style.backgroundImage = "url('images/before.jpg')";
imageAfter.style.backgroundImage = "url('images/after.jpg')";
```

## 技术实现

- 纯 HTML + CSS + JavaScript，无需任何外部依赖
- 使用 CSS `clip-path` 实现图片遮罩效果
- 使用 JavaScript 事件监听实现交互
- FileReader API 实现本地图片上传预览

## 浏览器兼容性

- Chrome/Edge 90+
- Firefox 88+
- Safari 14+
- 移动端浏览器

## 自定义样式

你可以在 `<style>` 标签中修改以下变量来自定义外观：

- 背景渐变色：修改 `body` 的 `background` 属性
- 滑块颜色：修改 `.slider-button::before` 和 `::after` 的 `border-color`
- 容器宽度：修改 `.comparison-container` 的 `max-width`
- 图片比例：修改 `.comparison-image` 的 `padding-bottom`

## 许可证

MIT License - 可自由使用和修改

