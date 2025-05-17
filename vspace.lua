function Div(div)
  if div.classes:includes('vspace') then
    return pandoc.RawBlock('latex', '\\vspace{4em}')  
  end
end
