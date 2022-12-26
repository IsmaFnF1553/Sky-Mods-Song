local xx = 370;
local yy = 510;
local xx2 = 800;
local yy2 = 560;
local ofs = 40;
local followchars = true;

function onCreate()
    makeLuaSprite('skylol', 'Manifest/red sky', -630, -250)
    makeLuaSprite('rocks', 'Manifest/red rocks',-1180, -800)
    addLuaSprite('skylol', false)
    addLuaSprite('rocks', false)
    setScrollFactor('skylol', 0.2,0.2)
    setScrollFactor('rocks', 0.4,0.5)
    scaleObject('rocks', 1.3, 1.3)

    makeLuaSprite('herock', 'Manifest/her rock', 426, 595)
    scaleObject('herock', 1.3, 1.3)
    setScrollFactor('herock', 0.72, 0.7)
    addLuaSprite('herock', false)

    makeLuaSprite('hisrock', 'Manifest/his rock', 1100, 670)
    addLuaSprite('hisrock', false)
    setScrollFactor('hisrock', 0.87, 0.87)
    scaleObject('hisrock', 0.8, 0.8)

    makeAnimatedLuaSprite('beef', 'bf_rock', 1160, 562)
    addAnimationByPrefix('beef', 'onrock', 'bf on rock', 24, false)
    addLuaSprite('beef', false)
    setScrollFactor('beef', 0.87, 0.87)
    scaleObject('beef', 0.7, 0.7)
end

function onCreatePost()
    setProperty('gf.scrollFactor.x', 0.72)
    setProperty('gf.scrollFactor.y', 0.7)

    doTweenColor('rrr', 'dad', 'FFDBCE', 0.1, 'linear')
    doTweenColor('rr2r', 'boyfriend', 'FFDBCE', 0.1, 'linear')
    doTweenColor('rr5r', 'gf', 'FB926B', 0.1, 'linear')
    doTweenColor('rr1r', 'beef', 'FB926B', 0.1, 'linear')
end

function onBeatHit()
    if curBeat % 2 == 0 and curStep > 0 then
		objectPlayAnimation('beef', 'onrock', true);
    end
end

function onUpdate()
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-20)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-20)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-20)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-20)
            end
            if getProperty('dad.animation.curAnim.name') == 'scream' then
                triggerEvent('Camera Follow Pos',xx,yy-20)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    end
end

function opponentNoteHit()
    if curBeat <= 275 then
        health = getProperty('health')
        if getProperty('health') > 1 then
            setProperty('health', health- 0.0107);
        end
    end
    if curBeat >= 276 then
        health = getProperty('health')
        if getProperty('health') > 0.2 then
            setProperty('health', health- 0.0087);
        end
    end
end