require("common")
local http = require("socket.http")
local https = require("socket.ssl.https")
local json = require("json")
local chat = require('chat')

function sendToDiscordWebhook(message, webhook_url, avatar_url)
    local payload = {
        username = "todbot",
        content = message,
        avatar_url = avatar_url
    }
    local body = json.encode(payload)

    local headers = {
        ["Content-Type"] = "application/json",
        ["Content-Length"] = tostring(#body)
    }
    
    local response_body = {}
    local response_code, response_headers, response_status = https.request{
        url = webhook_url,
        method = "POST",
        headers = headers,
        source = ltn12.source.string(body),
        sink = ltn12.sink.table(response_body)
    }

    local response_str = table.concat(response_body)
    print(chat.header('todbot') .. chat.error("Unable to deliver message " .. message))
    print(chat.header('todbot') .. chat.error(response_str))
end