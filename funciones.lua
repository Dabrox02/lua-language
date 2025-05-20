-- Las funciones tienen alcance local

function alcance_local()
	local variable_local = "variable accesible"
	print(variable_local)
end

print(variable_local) -- nil porque no esta definida
alcance_local()

-- al ejecutar funciones se pueden pasar ciertas literales
function printin(value)
	print("imprimiendo"..value)
end

printin(1,2)
-- printin{a = 1, b = 2} -- esto es valido pero no aplica a la funcion de ej
printin"hola"



-- funciones con argumentos variables

function foo(a, ...)
  print(a)
  print(...)
end

foo(1, 2, 3, 4)
-- a = 1, ... = 2, 3, 4



-- ajuste de argumentos

function f(a, b) end

f(1)           --> a=1, b=nil
f(1, 2, 3)     --> a=1, b=2   (el tercer argumento se ignora)

function g(a, b, ...)
end

g(1, 2, 3, 4)  --> a=1, b=2, ... = 3, 4



-- multiple retorno 

function r() return 1,2,3 end

f(r())       --> f(1, 2)
f(r(), 10)   --> f(1, 10)


-- sintaxis de dos puntos
Perro = {}

function Perro:nuevo(nombre, raza)
	local obj = {
		nombre = nombre,
		raza = raza
	}

	setmetatable(obj, self)
	self.__index = self
	return obj
end

function Perro:ladra()
	print("raza: ".. self.raza)
end

mi_perro = Perro:nuevo("firaluis", "labrador")
mi_perro:ladra()
