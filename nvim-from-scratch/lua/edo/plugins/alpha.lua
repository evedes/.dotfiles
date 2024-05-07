return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
        "                                                                                                            dddddddd                                                                         ",
        "                                                                tttt                                        d::::::d                                                                         ",
        "                                                             ttt:::t                                        d::::::d                                                                         ",
        "                                                             t:::::t                                        d::::::d                                                                         ",
        "                                                             t:::::t                                        d:::::d                                                                          ",
        "rrrrr   rrrrrrrrr   uuuuuu    uuuuuu      ssssssssss   ttttttt:::::tttttttyyyyyyy           yyyyyyy ddddddddd:::::d   aaaaaaaaaaaaawwwwwww           wwwww           wwwwwwwggggggggg   ggggg",
        "r::::rrr:::::::::r  u::::u    u::::u    ss::::::::::s  t:::::::::::::::::t y:::::y         y:::::ydd::::::::::::::d   a::::::::::::aw:::::w         w:::::w         w:::::wg:::::::::ggg::::g",
        "r:::::::::::::::::r u::::u    u::::u  ss:::::::::::::s t:::::::::::::::::t  y:::::y       y:::::yd::::::::::::::::d   aaaaaaaaa:::::aw:::::w       w:::::::w       w:::::wg:::::::::::::::::g",
        "rr::::::rrrrr::::::ru::::u    u::::u  s::::::ssss:::::stttttt:::::::tttttt   y:::::y     y:::::yd:::::::ddddd:::::d            a::::a w:::::w     w:::::::::w     w:::::wg::::::ggggg::::::gg",
        " r:::::r     r:::::ru::::u    u::::u   s:::::s  ssssss       t:::::t          y:::::y   y:::::y d::::::d    d:::::d     aaaaaaa:::::a  w:::::w   w:::::w:::::w   w:::::w g:::::g     g:::::g " ,
        " r:::::r     rrrrrrru::::u    u::::u     s::::::s            t:::::t           y:::::y y:::::y  d:::::d     d:::::d   aa::::::::::::a   w:::::w w:::::w w:::::w w:::::w  g:::::g     g:::::g " ,
        " r:::::r            u::::u    u::::u        s::::::s         t:::::t            y:::::y:::::y   d:::::d     d:::::d  a::::aaaa::::::a    w:::::w:::::w   w:::::w:::::w   g:::::g     g:::::g " ,
        " r:::::r            u:::::uuuu:::::u  ssssss   s:::::s       t:::::t    tttttt   y:::::::::y    d:::::d     d:::::d a::::a    a:::::a     w:::::::::w     w:::::::::w    g::::::g    g:::::g " ,
        " r:::::r            u:::::::::::::::uus:::::ssss::::::s      t::::::tttt:::::t    y:::::::y     d::::::ddddd::::::dda::::a    a:::::a      w:::::::w       w:::::::w     g:::::::ggggg:::::g " ,
        " r:::::r             u:::::::::::::::us::::::::::::::s       tt::::::::::::::t     y:::::y       d:::::::::::::::::da:::::aaaa::::::a       w:::::w         w:::::w       g::::::::::::::::g " ,
        " r:::::r              uu::::::::uu:::u s:::::::::::ss          tt:::::::::::tt    y:::::y         d:::::::::ddd::::d a::::::::::aa:::a       w:::w           w:::w         gg::::::::::::::g " ,
        " rrrrrrr                uuuuuuuu  uuuu  sssssssssss              ttttttttttt     y:::::y           ddddddddd   ddddd  aaaaaaaaaa  aaaa        www             www            gggggggg::::::g " ,
        "                                                                                y:::::y                                                                                              g:::::g " ,
        "                                                                               y:::::y                                                                                   gggggg      g:::::g " ,
        "                                                                              y:::::y                                                                                    g:::::gg   gg:::::g " ,
        "                                                                             y:::::y                                                                                      g::::::ggg:::::::g ",
        "                                                                            yyyyyyy                                                                                        gg:::::::::::::g  ",
        "                                                                                                                                                                             ggg::::::ggg    ",
        "                                                                                                                                                                                gggggg       " ,
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
