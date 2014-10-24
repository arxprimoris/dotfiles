local M = {}

if type(_G.snippets) == 'table' then
---
-- Container for LaTeX-specific snippets.
-- @class table
-- @name snippets.latex
	_G.snippets.latex = {
		['begin'] = "\\begin{%1(environment)}\n\t%0\n\\end{%1}",
		['itemize'] = "\\begin{itemize}\n\t\\item %0\n\\end{itemize}",
		['enum'] = "\\begin{enumerate}\n\t\\item %0\n\\end{enumerate}",
		['emph'] = "\\emph{%1}",
		['bold'] = "\\textbf{%1}",
		['it'] = "\\item ",
		['sec'] = "\\section{%1}\n",
		['ssec'] = "\\subsection{%1}\n",
		['dcl'] = "\\documentclass[%1(letter,12pt)]{%2(article)}",
		['toc'] = "\\tableofcontents\n",
		['to'] = '$\\to$',
	}
end

if type(_G.keys) == 'table' then
---
-- Container for LaTeX-specific key commands.
-- @class table
-- @name keys.latex
_G.keys.latex = {
	[keys.LANGUAGE_MODULE_PREFIX] = {
		m = { io.open_file, (_USERHOME..'/modules/latex/init.lua'):iconv('UTF-8', _CHARSET) },
	},
}
end

function M.set_buffer_properties()
end

return M
