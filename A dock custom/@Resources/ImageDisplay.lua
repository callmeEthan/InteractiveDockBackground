function Initialize()
	active='Display1.ini'
	Index=1
end

function swap(i)
	Index = i
	SKIN:Bang('!CommandMeasure','Animation', 'Stop 8')
	SKIN:Bang('!CommandMeasure','Animation', 'Execute 8')
end

function activate_config()
	if active=='Display1.ini' then active='Display2.ini' else active='Display1.ini' end
	SKIN:Bang('!WriteKeyValue', 'Variables', 'Background', SKIN:GetVariable('Background'..Index,'') , 'ImageDisplay\\config.inc')
	SKIN:Bang('[!ActivateConfig "#ROOTCONFIG#\\ImageDisplay" '.. active..']')
end