# Esta é classe que representa os objetos carros espalhados pelo mundo.
class Carro
  # Atributos (ou propriedades) que todo carro pode ter
  attr_reader :marca, :modelo, :peso, :placa, :motorista

  # Construtor que irá criar o objeto da classe carro com seus dados
  def initialize(marca, modelo, peso, placa)
    @marca = marca
    @modelo = modelo
    @peso = peso
    @placa = placa
  end

  ############ COMPORTAMENTOS ############

  # Método que define o motorista do carro. O tal método do tipo 'setter' para o motorista.
  # Não usei set_motorista só para deixar mais didático
  # Também poderia pedir o campo motorista no construtor, mas como sei que um carro é
  # construído sem um motorista achei melhor colocar o motorista dentro do carro após ele construído :D.
  def define_motorista(motorista)
    @motorista = motorista
  end
end
