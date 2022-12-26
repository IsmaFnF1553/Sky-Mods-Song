function onCreate()
    makeAnimatedLuaSprite('corn', 'Maze', -370, -240)
    addAnimationByPrefix('corn', 'wind', 'Stage', 24, true)
    addLuaSprite('corn')
    objectPlayAnimation('corn', 'Maze')
    makeAnimatedLuaSprite('leski', 'characters/ski-cut1', 764, 265)
    addAnimationByPrefix('leski', 'wuh', 'ski cutscene1', 24, false)
    addLuaSprite('leski', true)
    setProperty('leski.alpha', 0)
end

function onStartCountdown()
    setProperty('gf.visible', false)
end

function onStepHit()
    if curStep == 2992 then
        objectPlayAnimation('leski', 'wuh')
        setProperty('leski.alpha', 1)
        setProperty('boyfriend.visible', false)
    end
    if curStep == 3015 then
        playSound('pop', 0.7, false)
    end
    if curStep == 2426 then
        cameraShake('game', 0.021, 0.4)
    end
    if curStep == 2432 then
        doTweenAlpha('zr', 'dad', 0.5, 1, 'linear')
        doTweenAlpha('on', 'iconP2', 0.5, 1, 'linear')
    end
    if curStep == 2944 then
        doTweenAlpha('dy', 'dad', 0, 0.5, 'linear')
        doTweenAlpha('ic', 'iconP2', 0, 0.5, 'linear')
    end
end