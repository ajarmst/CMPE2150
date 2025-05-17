-- This is just broken AI slop from an attempt to get right justifying work.
-- Work on fixing later.
function Div(el)
  if el.classes:includes('right') then
    if FORMAT == 'latex' then
      -- For LaTeX: Wrap in flushright environment
      local blocks = {
        pandoc.RawBlock('latex', '\\begin{flushright}'),
        pandoc.utils.to_blocks(el.content),
        pandoc.RawBlock('latex', '\\end{flushright}')
      }
      return blocks
    else
      -- For HTML: Let CSS handle it
      return el
    end
  end
end