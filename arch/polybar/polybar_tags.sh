#!/bin/sh
# Save this as ~/.config/polybar/awesome_tags.sh and make it executable (chmod +x)

awesome-client '
    local awful = require("awful")
    local tags = {}
    for s in screen do
        for _, tag in ipairs(s.tags) do
            if tag.selected then
                table.insert(tags, "%{F#ff0000}" .. tag.name .. "%{F-}")
            elseif #tag:clients() > 0 then
                table.insert(tags, "%{F#00ff00}" .. tag.name .. "%{F-}")
            else
                table.insert(tags, "%{F#ffffff}" .. tag.name .. "%{F-}")
            end
        end
    end
    print(table.concat(tags, " "))
'
