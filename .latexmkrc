# 设置默认的 LaTeX 引擎为 XeLaTeX
$pdflatex = 'xelatex %O %S';

# 自动清理辅助文件
# 这会清理编译过程中产生的大部分临时文件，但会保留最终的 PDF 文件
# 如果你需要自定义需要清理的文件类型，可以在这里添加或删除
$clean_ext = 'aux blg bbl out toc log nav snm vrb lol lot fls synctex.gz ind idx ilg ist xdy xdv';

# 启用 SyncTeX，方便在编辑器和 PDF 阅读器之间跳转（推荐保留）
$synctex = 1;

# 设置最大编译次数，确保交叉引用等内容正确生成（通常默认值就足够，但可以调整）
$max_repeat = 5;
