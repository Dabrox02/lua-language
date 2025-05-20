-- aritmeticos
local suma = 2+5
local resta = 51-2
local multiplicacion = 4*2
local division = 10/3
local modulo = 10%3
local exponenciacion = 243^2
local negacion = -512

local raiz = 2^(-0.5)

-- relacionales
-- igualdad (compara tipos)
local varbool = 4 == "4"
local varbool2 = 5 == 5

-- En tablas, funciones, hilos, userdata se comparan por referencia
local a = {}
local b = {}
print(a == b) -- false

local c = a
print(a == c) -- true

-- Diferente
local varbool3 = 4 ~= 3 -- true

-- Operadores de orden < > <= >=
-- si son numeros los compara como tal
local varbool4 = 12 > 5

-- si son cadenas, alfabeticamente segun config regional
local varbool5 = "hola mundo" > "arroz"

-- si son otros tipos diferentes usa los metadatos __lt o __le

-- logicos
local varbool6 = not false --true
local varbool7 = not 0 -- false (0 es verdadero)

-- and, si es falso lo devuelve primero, sino el segundo valor
local varbool8 = false and 10 -- false
local varbool9 = true and 10 -- 10

-- or, devuelve el primer valor verdadero
local varbool10 = 10 or 20 -- 10 
local varbool11 = nil o "a" -- a




