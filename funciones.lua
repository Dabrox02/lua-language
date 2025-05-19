-- Las funciones tienen alcance local

function alcance_local()
	local variable_local = "variable accesible"
	print(variable_local)
end

print(variable_local) -- nil porque no esta definida
alcance_local()
