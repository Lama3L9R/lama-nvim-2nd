# Neovim Custom Configuration

lama 的自定义 neovim（2周目，因为老的忘了备份了），如下文档根据我写的 lua 配置文件使用 ai 生成

[![996.icu](https://img.shields.io/badge/link-996.icu-red.svg)](https://996.icu)
[![LICENSE](https://img.shields.io/badge/license-Anti%20996-blue.svg)](https://github.com/996icu/996.ICU/blob/master/LICENSE)

---

## 📦 插件列表 (Plugins)

当前配置集成了以下核心插件：

* `neoclide/coc.nvim` *(branch: release)* : 提供强大的代码补全和 LSP 支持。
* `MagicDuck/grug-far.nvim` : 现代化的交互式搜索与替换工具。
* `nvim-neo-tree/neo-tree.nvim` : 侧边栏文件浏览器。
* `nvim-lualine/lualine.nvim` : 高度可定制的状态栏。
* `Shatur/neovim-ayu` : Neovim 的 Ayu 颜色主题。
* `nvim-treesitter/nvim-treesitter` : 提供高级语法高亮、代码解析与折叠功能。

## 🛠️ 全局自定义命令 (Custom Commands)

- ``:SysClip`` : 启用系统剪贴板 (`set clipboard=unnamedplus`)
- ``:FkSysClip`` : 禁用系统剪贴板 (`set clipboard=`)

## 快捷键

### 📁 基础与文件 (General & File)

- `[N I V -]` `<C-s>` : 保存当前文件并退回普通模式
- `[N - - -]` `U` : 重做 (Redo)

---

### 🚀 快速移动与跳转 (Movement & Navigation)

- `[N - V -]` `J` : 向下快速移动 (10 行)
- `[N - V -]` `K` : 向上快速移动 (10 行)
- `[N - V -]` `H` : 向左快速移动 (10 字符)
- `[N - V -]` `L` : 向右快速移动 (10 字符)
- `[N - V -]` `<C-S-h>` : 跳转到当前行的第一个非空字符
- `[N - V -]` `<C-S-l>` : 跳转到当前行的行尾
- `[N - V -]` `<C-S-k>` : 跳转到文件顶部并居中
- `[N - V -]` `<C-S-j>` : 跳转到文件底部并居中
- `[N - V -]` `<leader>b` : 将当前行居中显示

---

### 🪟 窗口管理 (Window Management)

- `[N I - -]` `<C-q>` : 焦点移动到左侧窗口
- `[N I - -]` `<C-e>` : 焦点移动到右侧窗口
- `[N - - -]` `<leader>k` : 智能扩大窗口 (步长 3)
- `[N - - -]` `<leader>K` : 智能大幅扩大窗口 (步长 10)
- `[N - - -]` `<leader>j` : 智能缩小窗口 (步长 3)
- `[N - - -]` `<leader>J` : 智能大幅缩小窗口 (步长 10)

---

### 💻 终端与 UI 插件 (Terminal & UI)

- `[N I - -]` `<C-n>` : 切换打开/关闭 Neotree
- `[N - - -]` `<leader>t` : 在底部打开 zsh 终端 (并直接进入插入模式)
- `[- - - T]` `<ESC>` : 终端模式下退出到普通模式 (Terminal: Quit to normal)
- `[N - - -]` `<ESC>` : 终端缓冲区的普通模式下，彻底关闭/删除终端

---

### 🧠 Coc.nvim (自动补全与 LSP)

- `[- I - -]` `<TAB>` : Coc: 选择下一个补全项 或 插入 Tab
- `[- I - -]` `<cr>` : Coc: 确认补全
- `[- I - -]` `<ESC>` : Coc: 取消/关闭补全菜单
- `[- I - -]` `<c-space>` : Coc: 刷新补全菜单
- `[N - - -]` `<C-S-Space>` : Coc: 跳转到上一个诊断信息
- `[N - - -]` `<C-Space>` : Coc: 跳转到下一个诊断信息
- `[N - - -]` `<leader>d` : Coc: 跳转到定义
- `[N - - -]` `<leader>i` : Coc: 跳转到实现
- `[N - - -]` `<leader><leader>` : Coc: 内联显示文档 (Hover Docs)
- `[N - - -]` `<leader>R` : Coc: 重命名符号 (Refactor sym)

---

### 🔍 Grug-Far (搜索与替换)

- `[N - - -]` `<leader>s` : GrugFar: 自动保存并在右侧打开搜索替换 (锁定当前文件)

**Grug-Far 窗口内专属快捷键:**
- `[N - - -]` `<ESC>` : GrugFar: 退出并强制返回普通模式
- `[N - - -]` `<leader>w` : GrugFar: 执行替换

