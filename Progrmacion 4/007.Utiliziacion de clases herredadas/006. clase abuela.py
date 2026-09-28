
class Animal:
    def __init__(self):
        # Atributos comunes de todos los animales
        self.edad = 0
        self.color = ""
        self.nombre = ""


class Viviparo(Animal):
    def __init__(self):
        super().__init__()  # Llama al constructor de Animal

    def mamar(self):
        return "El animal está mamando"


class Oviparo(Animal):
    def __init__(self):
        super().__init__()  # Llama al constructor de Animal

    def reptar(self):
        return "Estoy reptando"


class Perro(Viviparo):
    def __init__(self):
        super().__init__()  # Hereda de Viviparo

    def ladra(self):
        return "guau"


class Gato(Viviparo):
    def __init__(self):
        super().__init__()  # Hereda de Viviparo

    def maulla(self):
        return "miau"


class Lagarto(Oviparo):
    def __init__(self):
        super().__init__()  # Hereda de Oviparo


mike = Lagarto()  # Creamos un objeto de tipo Lagarto

print(mike.reptar())  # Llama al método reptar() heredado de Oviparo