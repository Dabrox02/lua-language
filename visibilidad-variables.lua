-- lua es un lenguaje de alcance lexico
-- es decir, la visibilidad de una variable se define
-- por su ubicacion en el codigo fuente
-- no por su ejecución

-- cada declaracion local crea una nueva variable

x = 10                -- variable global
do                    -- nuevo bloque
  local x = x         -- nueva variable local 'x', aún no visible
  print(x)            --> 10 (se usa la global para asignar)

  x = x + 1           -- x = 11

  do                  -- otro bloque anidado
    local x = x + 1   -- nueva 'x' local (11 + 1 = 12)
    print(x)          --> 12
  end

  print(x)            --> 11 (x del bloque exterior)

end

print(x)              --> 10 (la global)


-- Upvalues 
-- Hace referencia a usar variables locales de la externa
-- como cuando se define una funcion dentro de otra
-- Funciona similar a javascript

print("upvalue-----------")

a = {}
local x = 20

for i = 1, 10 do
  local y = 0

  a[i] = function()
    y = y + 1
    return x + y
  end

end

print(a[1]())  --> 21
print(a[1]())  --> 22
print(a[2]())  --> 21  (¡su `y` es distinta!)
print(a[2]())

