#!/usr/bin/env python3
"""Crea un template .docx accademico per pandoc (Times New Roman, nero)."""

from docx import Document
from docx.shared import Pt, Cm
from docx.oxml.ns import qn
import sys

OUTPUT = sys.argv[1] if len(sys.argv) > 1 else "articles/reference.docx"

FONT_NAME = "Times New Roman"
COLOR_BLACK = "000000"

doc = Document()

for style in doc.styles:
    if style.type is None:
        continue
    try:
        rPr = style.element.get_or_add_rPr()
        rPr.get_or_add_rFonts().set(qn('w:ascii'), FONT_NAME)
        rPr.get_or_add_rFonts().set(qn('w:hAnsi'), FONT_NAME)
        c = rPr.find(qn('w:color'))
        if c is not None:
            rPr.remove(c)
        color_el = rPr.makeelement(qn('w:color'), {'w:val': COLOR_BLACK})
        rPr.append(color_el)
    except Exception:
        pass

normal = doc.styles['Normal']
normal.font.name = FONT_NAME
normal.font.size = Pt(12)
normal.paragraph_format.space_after = Pt(6)
normal.paragraph_format.line_spacing = 1.5

for name in ['Heading 1', 'Heading 2', 'Heading 3']:
    s = doc.styles[name]
    s.font.name = FONT_NAME
    s.font.bold = True
    s.font.size = Pt(14) if name == 'Heading 1' else Pt(13) if name == 'Heading 2' else Pt(12)

section = doc.sections[0]
section.top_margin = Cm(2.5)
section.bottom_margin = Cm(2.5)
section.left_margin = Cm(3.0)
section.right_margin = Cm(3.0)

doc.save(OUTPUT)
print(f"Template creato: {OUTPUT}")
