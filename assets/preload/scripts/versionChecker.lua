--UPDATE CHECK

curentVersion = 0;
targetVersion = 0;
targetVersionString = "0.5.2";
function onCreate()

bit = string.gsub(version,"%.","")
bit2 = string.gsub(targetVersionString,"%.","")
curentVersion = tonumber(bit)
targetVersion = tonumber(bit2)
end
function onStartCountdown()

	if curentVersion < targetVersion then
		--do when outdated
		debugPrint("YOUR PSYCH ENGINE BUILD ("..version..") IS OUTDATED")
		debugPrint("UPDATE TO ("..targetVersionString..") FOR STUFF TO WORK GOOD")
		return Function_Stop;
	end

end