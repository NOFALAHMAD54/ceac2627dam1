"""
CALCULADORA DE ESTADISTICAS DE UN VIDEOJUEGO
NOFAL RANA
EJERCICO FINAL UNIDAD 1 
AHORA HACEMOS EL USO CRUD 
"""
# Este es el constante que basiamente va a añadir a la puntacion el bonus final 
BONUS_FINAL = 10
# Vamos a crear las caracteristicas del personaje
print("CALCULADORA DE ESTADISTICAS DE UN VIDEOJUEGO")
print("-" * 50)
NOMBRE = input("Introduce el nombre del personaje ") #aqui le decimos al usuario que meta el nombre del personaje

nivel = input("Introduce el nivel de tu personaje ") # aqui su nivel 
nivel = int(nivel)

vida = input("Introduce la vida del personaje ") # aqui va a indicar la vida que tiene su persoanje
vida = int(vida)

ataque = input("Introduce el ataque del personaje ") # aqui el ataque que hace
ataque = int(ataque)

defensa = input("Introduce la defensa del personaje ") # va a indicar su defensa
defensa = int(defensa)

velocidad = input("Introduce la velocidad del personaje ") # y aqui la velocidad
velocidad = int(velocidad)

# ahora vamos a leer las caracteristicas del personaje por la pantalla
print("Caracteristicas del personaje")
print("-" * 50)
print("Nombre: ", NOMBRE)
print("Nivel: ", nivel)
print("Vida: ", vida)
print("Ataque: ", ataque)
print("Defensa: ", defensa)
print("Velocidad: ", velocidad)
# aqui al final nos muestra la puntuacion del personaje
print("👾 " * 15) #Aqui metí un emoji para tener algo de visualizacion en la pantalla
puntuacion = nivel + vida + ataque + defensa + velocidad
print("la puntuacion final seria: " , puntuacion)
print("La puntuacion final con el bonus sería de: ", puntuacion + BONUS_FINAL)