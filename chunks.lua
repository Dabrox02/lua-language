-- chunks en lua
-- Un chunk es basicamente una unidad de codigo 
-- ejecutable en lua
--

-- Esto es un chunk valido
local a = 1
print(a+1)

-- se puede delimitar con ; pero no es obligatorio
print("hola mundo");

-- lua trata cada chunk como una funcion sin nombre
-- que puede tener
-- variables locales, recibir argumentos y retornar valores
--

local x = 10
return x * 2;

-- un chunk puede venir de
-- un archivo .lua
-- una cadena pasada con load() o loadstring()

--[[ Example of loading a chunk from a string ]]
local t = {"print", '("', "Hello World!", '")'}

local i = 0
local function next_chunk()
    i = i + 1
    return t[i] -- `nil` if `i` is out of bounds
end
assert(load(next_chunk))()
