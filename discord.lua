require("common")
local http = require("socket.http")
local https = require("socket.ssl.https")
local json = require("json")
local chat = require('chat')

function sendToDiscordWebhook(message, webhook_url, avatar_url)
    if webhook_url == "" then
        print(chat.header('todbot') .. chat.error("WebhookURL is empty, post this message manually"))
        print(chat.header('todbot') .. chat.error(message))
        return
    end
    
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
    local response, response_code, response_headers, response_status = https.request{
        url = webhook_url,
        method = "POST",
        headers = headers,
        source = ltn12.source.string(body),
        sink = ltn12.sink.table(response_body)
    }

    if( response_code ~= 204 ) then
        print(chat.header('todbot') .. chat.error("Response Code: " .. response_code))
        print(chat.header('todbot') .. chat.error("Unable to deliver message " .. message))
        local response_str = table.concat(response_body)
        print(chat.header('todbot') .. chat.error("Response Body: " .. response_str))
    end
end