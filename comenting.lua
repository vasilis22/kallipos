function Para (elem)
  if #elem.content == 1 and elem.content[1].t == "Image" then
    local img = elem.content[1]
    if img.classes[1] == "comment" then
      local f = io.open("commentation/" .. img.src, 'r')
      local blocks = pandoc.read(f:read('*a')).blocks
      f:close()
      return blocks
    end
  end
end
