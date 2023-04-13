#!/usr/bin/sh

DATE_COVER=$(date "+%d %B %Y")

SOURCE_FORMAT="markdown\
+tex_math_single_backslash\
+raw_tex\
+tex_math_dollars\
+pipe_tables\
+backtick_code_blocks\
+auto_identifiers\
+strikeout\
+yaml_metadata_block\
+implicit_figures\
+all_symbols_escapable\
+link_attributes\
+smart\
+fenced_divs\
+raw_html\
+markdown_in_html_blocks"

pandoc --filter pandoc-minted -s --dpi=300 --slide-level 2 --listings --shift-heading-level=0 --pdf-engine=lualatex --columns=50 -f "$SOURCE_FORMAT"   -V lang=en-US -t beamer understanding-memory-management.md -o presentation.tex
