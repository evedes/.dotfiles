local awful = require("awful")

local function update_tags()
	local tags = {}
	for s in screen do
		for _, tag in ipairs(s.tags) do
			if tag.selected then
				table.insert(tags, "[" .. tag.name .. "]")
			elseif #tag:clients() > 0 then
				table.insert(tags, tag.name)
			else
				table.insert(tags, "-")
			end
		end
	end
	print(table.concat(tags, " "))
end

update_tags()

tag.connect_signal("property::selected", update_tags)
client.connect_signal("focus", update_tags)
client.connect_signal("unfocus", update_tags)
