function SkinYukle66()
    local txd = engineLoadTXD ('Dosyalar/1.txd')
    engineImportTXD(txd,66)
    local dff = engineLoadDFF('Dosyalar/2.dff',66)
    engineReplaceModel(dff,66)
end
addEventHandler('onClientResourceStart',getResourceRootElement(getThisResource()),SkinYukle66)

function oxykontrol()
	if getElementModel(localPlayer) == 66 then
		if isElementInWater(localPlayer) then
			setPedOxygenLevel(localPlayer, 1000)
			sound = playSound("Dosyalar/splash.mp3") --Play mp3 from the sounds folder
			setSoundVolume(sound, 0.5) -- set the sound volume to 50%
		else
			if sound and isElement(sound) then
				destroyElement(sound)
			end
		end
	end
end
setTimer(oxykontrol, 4000, 0)
