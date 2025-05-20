-- siempre se escriben usando {}
t = { "a" , "b" }
-- t[1] = "a"
-- t[2] = "b"

t1 = { x = 1, y = 2}
-- t["x"] = 1

t2 = { "a", "b", x = 1, [10] = "z" }

for key, value in pairs(t2) do
	print(key.." "..value)
end
