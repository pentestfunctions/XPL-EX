function after(hook, param)
	local ret = param:getResult()
	if ret == nil then
		return false
	end

    local fake = param:getSetting("build.BOOTLOADER", "G1HZK00500")
    param:setResult(fake)
    return true, ret, fake
end