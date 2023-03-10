local allowCountdown = false
local stops = 0

function onStartCountdown()
    if not allowCountdown and isStoryMode and not seenCutscene then
		if stops == 0 then
			makeLuaSprite('idkhowmakeGraphicworkslmao', 'oops', -1000, -600)
			addLuaSprite('idkhowmakeGraphicworkslmao', true)
			setProperty('inCutscene', true);
			runTimer('startDialogue', 0.7);
			allowCountdown = true;
		end
		if stops == 1 then
			allowCountdown = true;
		end
		stops  = stops + 1
		return Function_Stop;
	end
	doTweenAlpha('lmo', 'idkhowmakeGraphicworkslmao', 0, 0.01, 'linear')
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue()
	-- triggered when the next dialogue line starts, 'line' starts with 1
	doTweenAlpha('lmo', 'idkhowmakeGraphicworkslmao', 0, 0.6, 'linear')
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end