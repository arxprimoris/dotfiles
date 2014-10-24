-- Copyright 2007-2014 Mitchell mitchell.att.foicica.com. See LICENSE.
-- Dark theme for Textadept.
-- Contributions by Ana Balan.

local buffer = buffer
local property, property_int = buffer.property, buffer.property_int

-- Greyscale colors.
--property['color.dark_black'] = 0x000000
property['color.black'] = 0x020202
property['color.light_black'] = 0x0D0D0D
--property['color.grey_black'] = 0x4D4D4D
property['color.dark_grey'] = 0x262626
--property['color.grey'] = 0x808080
property['color.light_grey'] = 0x404040
--property['color.grey_white'] = 0xB3B3B3
--property['color.dark_white'] = 0xCCCCCC
property['color.white'] = 0xE6E6E6
--property['color.light_white'] = 0xFFFFFF

-- Dark colors.
--property['color.dark_red'] = 0x1A1A66
--property['color.dark_yellow'] = 0x1A6666
--property['color.dark_green'] = 0x1A661A
--property['color.dark_teal'] = 0x66661A
--property['color.dark_purple'] = 0x661A66
--property['color.dark_orange'] = 0x1A66B3
--property['color.dark_pink'] = 0x6666B3
--property['color.dark_lavender'] = 0xB36666
--property['color.dark_blue'] = 0xB3661A

-- Normal colors.
property['color.red'] = 0x3535B3
property['color.yellow'] = 0x35B3B3
property['color.green'] = 0x35B374
property['color.cyan'] = 0xB3B335
property['color.purple'] = 0xB33574
--property['color.orange'] = 0x4D99E6
--property['color.pink'] = 0x9999E6
--property['color.lavender'] = 0xE69999
property['color.blue'] = 0xB37435

-- Light colors.
--property['color.light_red'] = 0x8080CC
--property['color.light_yellow'] = 0x80CCCC
--property['color.light_green'] = 0x80CC80
--property['color.light_teal'] = 0xCCCC80
--property['color.light_purple'] = 0xCC80CC
--property['color.light_orange'] = 0x80CCFF
--property['color.light_pink'] = 0xCCCCFF
--property['color.light_lavender'] = 0xFFCCCC
--property['color.light_blue'] = 0xFFCC80

-- Default font.
property['font'], property['fontsize'] = 'Bitstream Vera Sans Mono', 10
if WIN32 then
  property['font'] = 'Courier New'
elseif OSX then
  property['font'], property['fontsize'] = 'Monaco', 12
end

-- Predefined styles.
property['style.default'] = 'font:%(font),size:%(fontsize),'..
                            'fore:%(color.white),back:%(color.light_black)'
property['style.linenumber'] = 'fore:%(color.light_black),back:%(color.dark_grey),bold'
--property['style.controlchar'] =
property['style.indentguide'] = 'fore:%(color.dark_grey)'
property['style.calltip'] = 'fore:%(color.light_grey),back:%(color.light_black)'

-- Token styles.
property['style.class'] = 'fore:%(color.blue),italics'
property['style.comment'] = 'fore:%(color.light_grey)'
property['style.constant'] = 'fore:%(color.red)'
property['style.embedded'] = '%(style.keyword),back:%(color.light_black)'
property['style.error'] = 'fore:%(color.red),italics'
property['style.function'] = 'fore:%(color.blue)'
property['style.identifier'] = ''
property['style.keyword'] = 'fore:%(color.blue),bold'
property['style.label'] = 'fore:%(color.red)'
property['style.number'] = 'fore:%(color.yellow),bold'
property['style.operator'] = 'fore:%(color.white)'
property['style.preprocessor'] = 'fore:%(color.green),bold'
property['style.regex'] = 'fore:%(color.green),italics'
property['style.string'] = 'fore:%(color.yellow),italics'
property['style.type'] = 'fore:%(color.purple),bold'
property['style.variable'] = 'fore:%(color.blue)'
property['style.whitespace'] = 'fore:%(color.light_black)'

-- Multiple Selection and Virtual Space
--buffer.additional_sel_alpha =
--buffer.additional_sel_fore =
--buffer.additional_sel_back =
--buffer.additional_caret_fore =

-- Caret and Selection Styles.
buffer:set_sel_fore(true, property_int['color.light_black'])
buffer:set_sel_back(true, property_int['color.light_grey'])
--buffer.sel_alpha =
buffer.caret_fore = property_int['color.white']
buffer.caret_line_back = property_int['color.dark_grey']
--buffer.caret_line_back_alpha =

-- Fold Margin.
buffer:set_fold_margin_colour(true, property_int['color.dark_grey'])
buffer:set_fold_margin_hi_colour(true, property_int['color.dark_grey'])

-- Markers.
local MARK_BOOKMARK = textadept.bookmarks.MARK_BOOKMARK
--buffer.marker_fore[MARK_BOOKMARK] = property_int['color.black']
buffer.marker_back[MARK_BOOKMARK] = property_int['color.blue']
--buffer.marker_fore[textadept.run.MARK_WARNING] = property_int['color.black']
buffer.marker_back[textadept.run.MARK_WARNING] = property_int['color.yellow']
--buffer.marker_fore[textadept.run.MARK_ERROR] = property_int['color.black']
buffer.marker_back[textadept.run.MARK_ERROR] = property_int['color.red']
for i = 25, 31 do -- fold margin markers
  buffer.marker_fore[i] = property_int['color.dark_grey']
  buffer.marker_back[i] = property_int['color.light_black']
  buffer.marker_back_selected[i] = property_int['color.yellow']
end

-- Indicators.
local INDIC_BRACEMATCH = textadept.editing.INDIC_BRACEMATCH
buffer.indic_fore[INDIC_BRACEMATCH] = property_int['color.white']
local INDIC_HIGHLIGHT = textadept.editing.INDIC_HIGHLIGHT
buffer.indic_fore[INDIC_HIGHLIGHT] = property_int['color.yellow']
buffer.indic_alpha[INDIC_HIGHLIGHT] = 255

-- Call tips.
--buffer.call_tip_fore_hlt = property_int['color.light_blue']

-- Long Lines.
buffer.edge_colour = property_int['color.dark_grey']
