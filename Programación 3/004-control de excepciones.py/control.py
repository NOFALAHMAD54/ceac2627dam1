print("Empiezo el programa")

try:
  print(10/0)
except Exception as e:
  print(e)

print("Acabo el programa")

#el comando try sirve para intentar algo este comando no interumpe la ejecucion sino solo lo intenta y si todo funciona esta perfecto sino nos dice la razon y sigue con el programa