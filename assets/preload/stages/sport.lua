function onCreate()
    makeLuaSprite('bglol', 'sport/bg', -1200, -700)
    addLuaSprite('bglol')
end

function onCreatePost()
    setProperty('boyfriend.scrollFactor.x',1.1)
    setProperty('boyfriend.scrollFactor.y',1.05)
end