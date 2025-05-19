local variable_local = "cadena"
local multi_linea = [[cadena
multi linea]]

local num_constant = 3.3222

-- this is a comment in lua


-- Hay 8 tipos basicos en LUA
local nil_value = nil
local boolean_value = true
local number_value = 1234
local string_value = [=[string]=]
local function_value = function(value)
	return value
end
local table_value = {}

print(function_value(12))

-- Esto es coercion, convertir un string o number a otro
-- segun reglas de conversion
print(5+"2")

-- Variables globales
var_global = "hola mundo"
print(_G["var_global"]) -- accede a la variable global por nombre
_G["var_global"] = "nuevo valor"



-- Variables globales estan en tablas llamadas entornos
_env = {}
_env.x = 5 -- variable global

function printX()
	print(_env.x)
end

printX()

-- Metatablas 
local metatable_of_env = getmetatable(_env)

if metatable_of_env then
	for k,v in pairs(metatable_of_env) do
		print(k,v)
	end
else
	print("no hay metatabla")
end



