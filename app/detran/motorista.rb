# Esta é classe que representa os objetos motoristas que dirigem pelo mundo.
# Além de motoristas eles também são cidadãos por isso esta classe herda da classe Cidadao
# O símbolo < (menor) é o que identifica a Herança na linguagem Ruby
class Motorista < Cidadao
  # Atributos (ou propriedades) que todo motorista tem.
  # Perceba que os atributos da classe pai não estão declaradas aqui, pois os atributos do pai também pertecem ao filho.
  attr_reader :cnh, :categoria, :data_vencimento

  # Construtor que irá criar o objeto da classe motorista com os dados passados.
  # Este construtor é um construtor explícito onde estão sendo passados tantos os atributos da classe pai (Cidadao) quando da classe filho (Motorista)
  def initialize(nome, registro_nascimento, data_nascimento, nome_mae, nome_pai, cnh, categoria, data_vencimento)
    # A utilização do 'super' é uma referência ao construtor da classe pai que deve ser invocada para a construção da relação de herança com seus atributos
    super(nome, registro_nascimento, data_nascimento, nome_mae, nome_pai)

    # Aqui estão a atribuição de valores de atributos que a classe Motorista tem que a classe Cidadao não tem
    @cnh = cnh
    @categoria = categoria
    @data_vencimento = data_vencimento
  end
end
