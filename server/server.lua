
                                   --command  --group
TriggerEvent('es:addGroupCommand', 'admincar', "mod", function(source, args, user)
	TriggerClientEvent("admincar-command:spawnadmincar", source)
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { 
		template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(40, 40, 40, 0.6); border-radius: 13px;"> <b><font color=grey></b></font> <b>{0}</b> {1}</div>',
		args = {"Admincar: ", " Je hebt hier geen permissies voor!"} })
end, {help = _U('name_help')})
