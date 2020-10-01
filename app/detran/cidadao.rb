# Esta é a classe que representa os objetos cidadãos espalhados pelo mundo.
class Cidadao
  # Atributos (ou propriedades) que todo cidadão pode ter.
  # attr_reader indica que os atributos devem ganhar o método get automaticamente
  # attr_write indica que os atributos devem ganhar o método set automaticamente
  attr_reader :nome, :registro_nascimento, :data_nascimento, :nome_mae, :nome_pai
  attr_writer :nome

  # Construtor que irá criar o objeto da classe cidadão com os dados passados
  def initialize(nome, registro_nascimento, data_nascimento, nome_mae, nome_pai)
    @nome = nome
    @registro_nascimento = registro_nascimento
    @data_nascimento = data_nascimento
    @nome_mae = nome_mae
    @nome_pai = nome_pai
  end

  ############ COMPORTAMENTOS ############

  # Método que retorna uma frase contendo o nome da mãe e do pai do cidadão
  def qual_o_nome_dos_meus_pais?
    "Sua mãe se chama #{nome_mae} e seu pai #{nome_pai}"
  end
end
