programa {
    funcao inicio() {
        real quantDolar, quantReal, cotacaoDolar
        inteiro opcao

        escreva("=== Conversor de Moedas: Real <-> Dólar ===\n\n")
        escreva("Digite 1 para converter Real -> Dólar\n")
        escreva("Digite 2 para converter Dólar -> Real\n")
        escreva("Escolha a opção: ")
        leia(opcao)

        // Só pede a cotação se a opção for válida, evitando
        // leitura desnecessária em caso de entrada incorreta
        se(opcao == 1 ou opcao == 2){

            escreva("\nQual a cotação do Dólar hoje (em R$): ")
            leia(cotacaoDolar)

            se(cotacaoDolar <= 0){
                escreva("\nCotação inválida! O valor deve ser maior que zero.\n")
            }
            senao{
                se(opcao == 1){
                    escreva("\nOlá! Vamos converter os seus Reais para Dólar.\n")
                    escreva("Digite quantos Reais você deseja converter: ")
                    leia(quantReal)

                    se(quantReal < 0){
                        escreva("\nValor inválido! Digite um número maior ou igual a zero.\n")
                    }
                    senao{
                        quantDolar = quantReal / cotacaoDolar
                        escreva("\n", quantReal, " em Reais equivale a ", quantDolar, " em Dólares.\n")
                    }
                }
                senao{
                    escreva("\nOlá! Vamos converter os seus Dólares para Reais.\n")
                    escreva("Digite quantos Dólares você deseja converter: ")
                    leia(quantDolar)

                    se(quantDolar < 0){
                        escreva("\nValor inválido! Digite um número maior ou igual a zero.\n")
                    }
                    senao{
                        quantReal = quantDolar * cotacaoDolar
                        escreva("\n", quantDolar, " em Dólares equivale a ", quantReal, " em Reais.\n")
                    }
                }
            }
        }
        senao{
            escreva("\nOpção inválida! Escolha 1 ou 2.\n")
        }
    }
}
