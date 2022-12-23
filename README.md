<div align = 'justify' >

# Neovim

Hi! It's my neovim configuration files on Linux, flavor Ubuntu 22.04. This setup is used mostly for markdown and typescript files.
This configuration is inspired by [Jia Jia](https://github.com/mathjiajia/config.nvim) and [craftzdog](https://github.com/craftzdog/dotfiles-public). My neovim is used for basic process.

```
.
├── after
│   └── plugin
│       ├── autopairs.rc.lua
│       ├── cmp.rc.lua
│       ├── lspkind.rc.lua
│       ├── lualine.rc.lua
│       ├── neosolarized.rc.lua
│       ├── teslescope.rc.lua
│       ├── treesitter.rc.lua
│       ├── ts-autotag.rc.lua
│       └── web-devicons.rc.lua
├── init.lua
├── lua
│   ├── base.lua
│   ├── highlights.lua
│   ├── linux.lua
│   ├── maps.lua
│   └── plugins.lua
└── plugin
    ├── lspconfig.rc.lua
    └── packer_compiled.lua

4 directories, 17 files
```

---

<div align = 'center'>
  <img src='readme-images/first.png'>
</div>

---

<div align = 'center'>
  <img src = 'readme-images/second.png'>
</div>

---

### Installation

The functionality is based on the installation of lua-language-server and typescript-language-server typescript. 

For the first one, do:

```
sudo apt install ninja-build build-essential

git clone  --depth=1 https://github.com/sumneko/lua-language-server
cd lua-language-server
git submodule update --depth 1 --init --recursive

cd 3rd/luamake
./compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild

echo 'export PATH="${HOME}/.config/lsp/lua-language-server/bin:${PATH}"' >> ~/.bashrc
source ~/.bashrc
exec $SHELL
```

For the second one, do:

```
sudo npm install -g typescript-language-server typescript
```

</div>
