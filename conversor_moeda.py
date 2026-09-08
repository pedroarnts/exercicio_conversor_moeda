def main():
    print("=== Conversor de Moedas: Real <-> Dólar ===\n")
    print("Digite 1 para converter Real -> Dólar")
    print("Digite 2 para converter Dólar -> Real")
    opcao = int(input("Escolha a opção: "))

    # Só pede a cotação se a opção for válida, evitando
    # leitura desnecessária em caso de entrada incorreta
    if opcao == 1 or opcao == 2:
        cotacao_dolar = float(input("\nQual a cotação do Dólar hoje (em R$): "))

        if cotacao_dolar <= 0:
            print("\nCotação inválida! O valor deve ser maior que zero.")
            return

        if opcao == 1:
            print("\nOlá! Vamos converter os seus Reais para Dólar.")
            quant_real = float(input("Digite quantos Reais você deseja converter: "))

            if quant_real < 0:
                print("\nValor inválido! Digite um número maior ou igual a zero.")
            else:
                quant_dolar = quant_real / cotacao_dolar
                print(f"\n{quant_real} em Reais equivale a {quant_dolar:.2f} em Dólares.")
        else:
            print("\nOlá! Vamos converter os seus Dólares para Reais.")
            quant_dolar = float(input("Digite quantos Dólares você deseja converter: "))

            if quant_dolar < 0:
                print("\nValor inválido! Digite um número maior ou igual a zero.")
            else:
                quant_real = quant_dolar * cotacao_dolar
                print(f"\n{quant_dolar} em Dólares equivale a {quant_real:.2f} em Reais.")
    else:
        print("\nOpção inválida! Escolha 1 ou 2.")


if __name__ == "__main__":
    main()
