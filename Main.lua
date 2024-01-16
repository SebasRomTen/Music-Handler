local sound = {}

function sound:Create(soundId, parent, volume, looped_, name)
	local soundInit = {}
	local soundIns = Instance.new("Sound", parent)
	soundIns.SoundId = soundId
	soundIns.Volume = volume
	soundIns.Looped = looped_
	soundIns.Name = name
	function soundInit:Stop()
		soundIns:Stop()
	end
	function soundInit:UnLoop()
		soundIns.Looped = false
	end
	function soundInit:Destroy()
		soundIns:Destroy()
	end
	function soundInit:Play()
		soundIns:Play()
	end
	function soundInit:PlayWhenEnded(endsound, exactname)
		if parent[exactname] then
			local soundToPlay = parent[exactname]
			local endeds = parent[endsound]
			if endsound.IsPlaying == false then
				soundToPlay:Play()
			end
		end
	end
	return soundIns, soundInit
end

return sound
