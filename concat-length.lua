-- operador de concatenacion
local concatenacion = "hola".."mundo"
print(concatenacion)

-- con numeros los convierte a string
local concatenar_numero = "numero:"..123
print(concatenar_numero)

-- operador de longitud
local longitud = #"hola mundo"
print(longitud)


-- Es mas complejo, depende del contenido
-- Busca el último índice n tal que t[n] no sea nil y t[n+1] sea nil.

t1 = {"a", "b", "c"}
print(#t1)       --> 3   -- No hay huecos, todo bien

t2 = {"a", nil, "c"}
print(#t2)       --> 1 porque t[1] es nil

t3 = {}
t3[1] = "a"
t3[3] = "b"
print(#t3)       --> 1 porque t[1] es nil

-- para contar elementos de una tabla es mejor contar manualmente 
function count(t)
  local c = 0
  for _, _ in pairs(t) do
    c = c + 1
  end
  return c
end

