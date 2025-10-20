# 图片序列查看器项目

一个类似于 [VideoGigaGAN](https://videogigagan.github.io/) 的图片序列查看器，可以通过拖动滑块浏览连续的图片帧。

## 功能特性

🎬 **图片序列浏览** - 通过滑块依次查看 continues_data 文件夹中的所有图片  
▶️ **自动播放** - 支持自动循环播放图片序列  
⌨️ **键盘快捷键** - 方向键切换帧，空格键播放/暂停  
🖱️ **多种交互方式** - 支持拖动滑块、点击定位、键盘控制  
📱 **移动端支持** - 完美支持触摸设备  
🎨 **现代化UI** - 精美的渐变背景和动画效果  
📤 **图片上传** - 可以上传自己的图片进行对比  
📐 **响应式设计** - 自适应各种屏幕尺寸  

## 使用方法

### ⚠️ 重要提示

由于浏览器的安全限制，**不能直接双击打开 `index.html` 文件**，因为本地图片可能无法加载。必须通过 HTTP 服务器来访问。

### 本地预览（推荐）

**方式1：使用启动脚本（最简单）**

```bash
# macOS/Linux
./start.sh

# Windows
start.bat
```

然后在浏览器中访问 http://localhost:8000

**方式2：手动启动服务器**

使用 Python（推荐）：
```bash
python3 -m http.server 8000
```

使用 Node.js：
```bash
npx http-server
```

使用 PHP：
```bash
php -S localhost:8000
```

### 部署到 GitHub Pages

1. 将此项目推送到 GitHub 仓库
2. 在仓库设置中启用 GitHub Pages
3. 选择主分支（main）作为源
4. 访问 `https://你的用户名.github.io/仓库名/` 即可在线查看

## 功能说明

### 🎬 图片序列浏览

项目会自动加载 `continues_data` 文件夹中的所有图片（00915.png - 00948.png），共 34 帧。

**操作方式：**
- 🖱️ **拖动滑块** - 拖动帧选择滑块来浏览不同的图片
- ⌨️ **键盘快捷键**：
  - `←` / `→` - 上一帧 / 下一帧
  - `Space` - 播放 / 暂停
  - `Home` - 跳到第一帧
  - `End` - 跳到最后一帧
- ▶️ **播放按钮** - 自动循环播放所有帧（10fps）
- ↻ **重置按钮** - 返回第一帧

### 📤 自定义图片序列

如果你想使用自己的图片序列：

1. 将连续编号的图片放在 `continues_data` 文件夹中
2. 编辑 `index.html` 中的配置（约第 498-500 行）：

```javascript
const startFrame = 915;  // 起始帧号
const endFrame = 948;    // 结束帧号
```

3. 确保图片命名格式为 `00XXX.png`（5位数字）

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

