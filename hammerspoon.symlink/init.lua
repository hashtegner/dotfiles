local offsetX = 0.02
local offsetY = 0.02

hs.hotkey.bind({"ctrl", "alt"}, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  local marginX = max.w * offsetX
  local marginY = max.h * offsetY

  f.x = marginX
  f.w = (max.w / 2) - (marginX * 1.5)

  f.y = marginY
  f.h = (max.h) - (marginY * 2)

  win:setFrame(f)
  win:moveToScreen(screen, true, true)
end)

hs.hotkey.bind({"ctrl", "alt"}, "Right", function()
  local win = hs.window.focusedWindow()
  local screen = win:screen()
  local max = screen:frame()
  local marginX = max.w * offsetX
  local marginY = max.h * offsetY

  local x = (max.w / 2)
  -- + (marginX / 2)
  -- local x = (max.w / 2) + (marginX / 2)
  local y = marginY
  local w = (max.w / 2)
  local h = max.h - (offsetY * 2)
  -- local w = (max.w / 2) - (x * 2)
  -- local h = (max.h) - (y * 2)

  print(x, y, w, h)
  -- win:setFrame({x, y, w, h})
  win:move(hs.geometry.rect(x,y,w,h)) 
end)

hs.hotkey.bind({"ctrl", "alt"}, "c", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  local marginX = max.w * 0.1
  local marginY = max.h * offsetY

  f.w = max.w - marginX
  f.h = max.h - (marginY * 2)

  win:setFrame(f)
  win:centerOnScreen()
end)
