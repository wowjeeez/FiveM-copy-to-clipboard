function copy(text)
SendNUIMessage({
	payload = text
})
end
RegisterNetEvent('sendToClipBoard')
AddEventHandler('sendToClipBoard', function(text)
    copy(tostring(text))
end)

RegisterCommand('copycoords', function(source, args)
local coords = GetEntityCoords(PlayerPedId())
local stri = 'vector4('..coords.x..', '..coords.y..', '..coords.z..', '..GetEntityHeading(PlayerPedId())..')'
stri:format(coords.x, coords.y, coords.z, GetEntityHeading(PlayerPedId()))
print(stri)
TriggerEvent('sendToClipBoard', stri)
end, false)
