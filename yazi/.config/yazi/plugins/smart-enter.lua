local item = cx.active.current.hovered
if not item then
  return
end

if item.cha.is_dir then
  ya.action("enter")
else
  ya.action("open")
end

