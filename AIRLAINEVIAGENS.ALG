Algoritmo "AirlaineViagens"


Var
   cliente:vetor[1..5] de caracter
   numeroCliente, numeroDestino:inteiro
   destino:vetor[1..5] de caracter
   i,j:inteiro
   opcao:inteiro
   repeticao:logico

Inicio
//##############################################################################
//Cadastramento de Cliente
   numeroCliente <- 1

procedimento cadastramentoCliente()

Inicio
   se (numeroCliente <= 3)entao
      escreval("#### Cadastro de Cliente ####")
      escreval("Digite o nome do cliente: ")
      leia(cliente[numeroCliente])
      numeroCliente <- numeroCliente + 1
      limpatela
      escreval("cliente ",cliente[numeroCliente -1], " cadastrado com exito")
      escreval("")
   senao
      escreval("Cliente nao cadastrado")
   fimse
fimprocedimento

//##############################################################################
//Cadastramento de Destino
   numeroDestino <- 1
procedimento cadastramentoDestino()

Inicio
   se (numeroDestino <= 3)entao
      escreval("#### Cadastro de Destino ####")
      escreval("Digite o nome do Destino: ")
      leia(destino[numeroDestino])
      numeroDestino <- numeroDestino + 1
      limpatela
      escreval("Destino ",destino[numeroDestino -1], " cadastrado com exito")
      escreval("")
   senao
      escreval("Destino nao cadastrado")
   fimse
fimprocedimento

//##############################################################################
//Busca de Clientes
procedimento buscaCliente()
Inicio
      escreval("#### Consulta de Cliente ####")
      se numeroCliente > 1 entao
            escreval("Clientes Cadastrados: ")
            para i de 1 ate numeroCliente -1 faca
               escreval("Cliente",i,":", cliente[i])
            fimpara
         senao
            escreval("Nao existe clientes cadastrados!")
         fimse
fimprocedimento

//##############################################################################
//Busca Destinos

procedimento buscaDestino()
Inicio
      escreval("#### Consulta de Destinos ####")
      se numeroDestino > 1 entao
            escreval("Destinos Cadastrados: ")
            para i de 1 ate numeroDestino -1 faca
               escreval("Cliente",i,":", destino[i])
            fimpara
         senao
            escreval("Nao existe Destinos cadastrados!")
         fimse
fimprocedimento

//##############################################################################
//Menu do software

repeticao<-verdadeiro
repita

   escreval("#### Menu Airlaine Viagens ####")
   escreval("Escolha uma opcao:")
   escreval("1: Cadastro de Cliente")
   escreval("2: Cadastro de Destino")
   escreval("3: Consulta de Cliente")
   escreval("4: Consulta de Destino")
   escreval("5: Sair do Menu")
   leia(opcao)

   escolha(opcao)
   caso 1
      cadastramentoCliente

   caso 2
      cadastramentoDestino

   caso 3
       buscaCliente

   caso 4
      buscaDestino

   caso 5
      escreval("#### FIM ####")
      escreval("Voce selecionou a opcao 5, Sair do Menu")
      repeticao<-falso
   outrocaso
      escreval("opcao invalida")
   fimescolha

ate (repeticao = falso)

Fimalgoritmo