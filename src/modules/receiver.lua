local this = {
	name = "Receiver",
	version = "1.0.0",
	data = {
		partyCreate = {
			event = "partyCreate",
			callback = function(client, requestData)
				print("partyCreate", requestData)
			end,
			permissions = {},
		},
		partyJoin = {
			event = "partyJoin",
			callback = function(client, requestData)
				print("partyJoin", requestData)
			end,
			permissions = {},
		},
		partyLeave = {
			event = "partyLeave",
			callback = function(client, requestData)
				print("partyLeave", requestData)
			end,
			permissions = {},
		},
		partyKick = {
			event = "partyKick",
			callback = function(client, requestData)
				print("partyKick", requestData)
			end,
			permissions = {},
		},
		partyInvite = {
			event = "partyInvite",
			callback = function(client, requestData)
				print("partyInvite", requestData)
			end,
			permissions = {},
		},
		partyAccept = {
			event = "partyAccept",
			callback = function(client, requestData)
				print("partyAccept", requestData)
			end,
			permissions = {},
		},
		partyDecline = {
			event = "partyDecline",
			callback = function(client, requestData)
				print("partyDecline", requestData)
			end,
			permissions = {},
		},
		partyDisband = {
			event = "partyDisband",
			callback = function(client, requestData)
				print("partyDisband", requestData)
			end,
			permissions = {},
		},
	},
}

function this:GetRequestResponse(client: Player, request: table)
	local requestAction = request.action or ""
	local requestData = request.data or {}
	local response = {}
	if self.data[requestAction] then
		response = {
			success = true,
			data = self.data[requestAction].callback(client, requestData),
		}
	else
		response = {
			success = false,
			data = "Invalid request action.",
		}
	end
	return response
end

return this
