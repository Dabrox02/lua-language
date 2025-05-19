-- asignacion  de lua
-- stat ::= varlist1 = explist1
-- eso significa una lista de variables a la izquierda
-- una lista de expresiones a la derecha

a, b, c = 1, 2, "otro"

print(a)

-- tambien se ajustan automaticamente

x, y, z = 10, 20 -- z es nil
print(z)

x, y = 5, 6, 7 -- 7 se ignora

function datos() -- se pueden retonar multiples datos
	return "uno","dos","tres"
end 

x, y = datos()
a = datos() 

print(a)


-- orden de evaluación
-- primero se evaluan las expresiones
-- luego se asignan

local a = {}

i = 3
i, a[i] = i + 1, 20
-- esto es como i, a[3]
print(i) -- 4
print(a[i]) -- 20

-- intercambiar variables
x, y = y, x


