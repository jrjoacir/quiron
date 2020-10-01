# Detran

No contexto do *Detran* a ideia é poder conhecer os carros existentes, os cidadãos da cidade sendo ou não motoristas, e a relação entre motoristas e carros.

# Como ler os códigos

Leia os arquivos com código das classes e seus comentários na seguinte ordem:

1. app/detran/carro.rb
2. app/detran/cidadao.rb
3. app/detran/motorista.rb

Procure absorver os conceitos de orientação à objetos mesmo sem conhecer a linguagem e recorra aos materiais que tem para reforçar estes conceitos.

# Exemplos de aplicação

## O Cidadão
```ruby
# Criando um objeto cidadão
cidadao_osni = Cidadao.new('Osni Cruz', 123456, '01/01/1900', 'Mão do Osni', 'Pai do Osni')

# Retorna o nome do cidadão (em ruby os getters são criados automaticamente)
cidadao_osni.nome

# Retorna a resposta com o nome da mãe e pai conforme método (comportamento) implementado na classe Cidadao
cidadao_osni.qual_o_nome_dos_meus_pais?
```

## O Motorista
```ruby
# Criando um objeto motorista que implicitamente cria um objeto cidadao por conta da relação de herança
motorista_osni = Motorista.new('Osni Cruz Motorista', 123456, '01/01/1900',
                               'Mãe do Osni Motorista', 'Pai do Osni Motorista',
                               789, 'C', '31/12/2030')

# Retorna o nome do cidadão que é um motorista por conta da relação de herança (em ruby os getters são criados automaticamente)
motorista_osni.nome

# Retorna a resposta com o nome da mãe e pai conforme método (comportamento) herdado da classe Cidadao
motorista_osni.qual_o_nome_dos_meus_pais?
```

## O Carro e o Motorista
```ruby
# Criando um objeto carro
carro_pro_osni = Carro.new('Hyundai', 'HB20', 3, 'ABC1234')

# Retorna o modelo do carro (em ruby os getters são criados automaticamente)
carro_pro_osni.modelo

# Atribui um motorista ao objeto carro criado através do método (comportamento) criado na classe Carro
carro_pro_osni.define_motorista(motorista_osni)
```

## O Cidadao, o Motorista e o Carro de uma outra forma
```ruby
# Criando um objeto cidadão
cidadao_joacir = Cidadao.new('Joacir Junior', 456789, '01/01/1900',
                             'Mãe do Joacir Junior', 'Pai do Joacir Junior')

# Criando um objeto motorista com dados obtidos do objeto cidadao_joacir (os getters de cada atributo)
motorista_joacir = Motorista.new(cidadao_joacir.nome, cidadao_joacir.registro_nascimento,
                                 cidadao_joacir.data_nascimento, cidadao_joacir.nome_mae,
                                 cidadao_joacir.nome_pai, 456, 'C', '31/12/2030')

# Criando um objeto carro
carro_sem_motorista = Carro.new('Ford', 'Fiesta', 2.5, 'XYZ6789')
```

# Materiais de apoio
[Herança em JAVA: Teoria e prática](https://medium.com/caiquefortunato/heran%C3%A7a-em-java-teoria-e-pr%C3%A1tica-2ca7d9b0f3de)