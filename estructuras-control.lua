-- estructura if else
local edad = 18

local edad = 18

if edad < 18 then
  print("Eres menor")
elseif edad == 18 then
  print("Justo en la mayoría de edad")
else
  print("Eres mayor")
end


-- estructura while

local i = 1
while i <= 3 do
  print(i)
  i = i + 1
end


-- estructura repeat..until (como do while)
local x = 0
repeat
	x = x + 1
	print(x)
until x == 3

-- return para devolver valores
function sumar(a, b)
  return a + b
end

print(sumar(3, 4))  -- 7

-- solo puede haber 1 return por bloque
-- para hacer multiples return se hace lo siguiente

function ejemplo(x)
  if x > 10 then
    do
      return 42  -- Salgo de la función aquí si se cumple esta condición
    end
  end
  return 0
end

print(ejemplo(15))  -- imprime 42
print(ejemplo(5))   -- imprime 0




-- break para salir de bucles
for i = 1, 10 do
  if i == 5 then
    break  -- sale del bucle
  end
  print(i)
end

-- for numerico
for i = 1, 5 do
  print(i)
end


-- for generico (con iteradores)
local frutas = { "manzana", "banana", "cereza" }

for i, fruta in ipairs(frutas) do
  print(i, fruta)
end


