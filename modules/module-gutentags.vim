" 将自动生成的 tags 文件全部放入 ~/.tmp/vim/tags 目录中，避免污染工程目录 "
let g:gutentags_cache_dir = $DATA_PATH . '/tags'
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 
let g:gutentags_project_root = ['.root', '.git', '.svn', '.hg', '.project','go.mod']
" 配置 ctags 的参数
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_new = 0
let g:gutentags_exclude_filetypes = [ 'defx', 'denite', 'vista', 'magit' ]
let g:gutentags_ctags_extra_args = ['--output-format=e-ctags']
" 不需要生成 tags 的文件
let g:gutentags_ctags_exclude = ['*.json', '*.js', '*.ts', '*.jsx', '*.css', '*.less', '*.sass', '*.go', '*.dart', 'node_modules', 'dist', 'vendor']