-- Movment and selection
keys['cb'], keys['cB'] = buffer.char_left, buffer.char_left_extend
keys['cf'], keys['cF'] = buffer.char_right, buffer.char_right_extend
keys['cp'], keys['cP'] = buffer.line_up, buffer.line_up_extend
keys['cn'], keys['cN'] = buffer.line_down, buffer.line_down_extend
keys['cab'], keys['caB'] = buffer.word_part_left, buffer.word_part_left_extend
keys['caf'], keys['caF'] = buffer.word_part_right, buffer.word_part_right_extend
keys['cap'], keys['caP'] = buffer.para_up, buffer.para_up_extend
keys['can'], keys['caN'] = buffer.para_down, buffer.para_down_extend
keys['c6'], keys['c^'] = buffer.home, buffer.home_extend
keys['c4'], keys['c$'] = buffer.line_end, buffer.line_end_extend

-- Editing
keys['c\n'] = function()
	buffer:begin_undo_action()
    buffer:line_end()
    buffer:new_line()
	buffer:end_undo_action()
end
keys['a\n'] = function()
	buffer:begin_undo_action()
	buffer:home()
	buffer:new_line()
	buffer.line_up()
	buffer:end_undo_action()
end
keys['cc'] = buffer.copy_allow_line
keys['cx'] = function()
	if buffer.selection_empty then 
		buffer:line_cut()
	else
		buffer:cut() 
	end
end

-- Dialogs/menus
keys['c\\'] = ui.find.focus
keys['a\\'] = ui.find.find_next
keys['a|'] = ui.find.find_prev

-- Buffer/file management
keys['ct'] = buffer.new
keys['cT'] = {view.goto_buffer, view, 1, true}
keys['aT'] = {view.goto_buffer, view, -1, true}

-- Utilities
keys['cf1'] = function()
	spawn('xdg-open "'.._USERHOME..'/doc/Textadept.pdf"')
end
keys['cat'] = function()
        terminalString = "gnome-terminal"
        pathString = "~"
        if buffer.filename then
                pathString = buffer.filename:match(".+/")
        end
        io.popen(terminalString.." --working-directory="..pathString.." &")
end