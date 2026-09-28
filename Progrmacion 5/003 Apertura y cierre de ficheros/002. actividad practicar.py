"""
Nofal Rana
Programacion 5
Agenda CSV de los personajes
"""

print("=" * 40)
print("       AGENDA CSV DE PERSONAJES")
print("=" * 40)

while True:
    print()
    print("-" * 40)
    print("              MENÚ")
    print("-" * 40)
    print("  1. Insertar personaje")
    print("  2. Mostrar personajes")
    print("  3. Salir")
    print("-" * 40)

    opcion = input("  > Mete una opcion: ")

    if opcion == "1":
        print()
        print("-" * 40)
        print("        INSERTAR PERSONAJE")
        print("-" * 40)

        nombre = input("Nombre: ")
        nivel = input("Nivel: ")
        vida = int(input("Vida: "))
        arma = input("Arma: ")

        archivo = open("agenda.csv", "a")
        archivo.write(nombre + "," + nivel + "," + str(vida) + "," + arma + "\n")
        archivo.close()

        print()
        print("[OK] Personaje guardado correctamente.")

    elif opcion == "2":
        print()
        print("-" * 40)
        print("         LISTA DE PERSONAJES")
        print("-" * 40)

        archivo = open("agenda.csv", "r")
        archivo_lineas = archivo.readlines()
        archivo.close()

        if len(archivo_lineas) == 0:
            print("No hay personajes guardados.")
        else:
            for linea in archivo_lineas:
                datos = linea.strip().split(",")

                print()
                print("Nombre :", datos[0])
                print("Nivel  :", datos[1])
                print("Vida   :", datos[2])
                print("Arma   :", datos[3])
                print("-" * 40)

    elif opcion == "3":
        print()
        print("=" * 40)
        print("       Gracias por usar la agenda")
        print("=" * 40)
        break

    else:
        print()
        print("[ERROR] Opcion no valida.")