-- Everything else is organized by :options.

-- 1 - IMPORTANT
vim.o.compatible = false -- Disable Vi compatibility.
vim.o.insertmode = false -- Don't use insert as default mode.

-- 2 MOVING AROUND, SEARCHING AND PATTERNS

vim.o.startofline = true -- Jumping moves cursor to first non-blank char of line.
vim.o.cdhome = true -- CD w/o arguments goes to home directory

-- 3 TAGS

-- 4 DISPLAYING TEXT

vim.o.scroll = 5 -- CTRL-D and CTRL-U scroll by 5.
vim.o.number = true -- Display line numbers.
vim.o.relativenumber = true -- Display relative numbers.

-- 5 SYNTAX, HIGHLIGHTING AND SPELLING
-- 6 MULTIPLE WINDOWS
-- 7 MULTIPLE TAB PAGES
-- 8 TERMINAL
-- 9 USING THE MOUSE
-- 10 PRINTING
-- 11 MESSAGES AND INFO
-- 12 SELECTING TEXT
-- 13 EDITING TEXT
-- 14 TABS AND INDENTING
-- 15 FOLDING
-- 16 DIFF MODE
-- 17 MAPPING
-- 18 READING AND WRITING FILES
-- 19 THE SWAP FILE
-- 20 COMMAND LINE EDITING
-- 21 EXECUTING EXTERNAL COMMANDS
-- 22 RUNNING MAKE AND JUMPING TO ERRORS (QUICKFIX)
-- 23 LANGUAGE SPECIFIC
-- 24 MULTI-BYTE CHARACTERS
-- 25 VARIOUS
