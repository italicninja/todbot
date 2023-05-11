# todbot
An Ashita4 plugin for automatically posting the TOD of monsters to a Discord Webhook with Discord compatible timestamps.

## Setup
Settings located in `config\addons\todbot\<Username_####>\settings.lua`.
You can `/addon load todbot` once to generate this file.
You may also configure it with `/todbot config`

## Usage
When a monster disappears a menu will pop up showing the monster name, TOD, and buttons to `Post` or `Dismiss` this TOD. Clicking `Post` will post the TOD to Discord with discord compatible timestamps.

![PostMessage](readme/post_message.png)

## Bugs
See `TODO`s in [todbot.lua](todbot.lua)