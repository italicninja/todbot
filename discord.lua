require("common")
local http = require("socket.http")
local https = require("socket.ssl.https")
local json = require("json")

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

    --[[
        TODO: This is for debugging failed requests
        In regular operation we just fire the webhook and
        hope for the best. But in the future maybe some
        error notification to the user would be good
        so they can post the TOD themselves. At least
        this would be able to print out an accurate
        timestamp for them
        TODO: Make this a function that prints this out
        if there is an error. Along with the timestamp.
    ]]
    -- local response_str = table.concat(response_body)
    -- print(response_status)
    -- print(response_str)
end