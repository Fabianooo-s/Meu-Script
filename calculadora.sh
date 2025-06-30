#!/bin/bash

# Recebe nome do usuário
read -p "Por gentileza, insira seu nome: " nome_usuario
echo "Olá, $nome_usuario! Seja bem-vindo à nossa calculadora."

# Recebe números do usuário
read -p "Digite um número: " numero1
read -p "Digite outro número: " numero2

# Realiza operações aritméticas
adicao=$((numero1 + numero2))
echo "A soma dos números inseridos é: $adicao"

subtracao=$((numero1 - numero2))
echo "A subtração dos números inseridos é: $subtracao"

multiplicacao=$((numero1 * numero2))
echo "A multiplicação dos números inseridos é: $multiplicacao"

# Verifica divisão por zero
if [ "$numero2" -ne 0 ]; then
    divisao=$(echo "scale=2; $numero1 / $numero2" | bc)
    echo "A divisão dos números inseridos é: $divisao"
else
    echo "Divisão por zero não é permitida."
fi

# Cálculo de média acadêmica
echo "Interessante né, $nome_usuario! Vamos agora calcular a sua nota acadêmica?"
read -p "Insira a nota da sua primeira prova: " nota1
read -p "Insira a nota da sua segunda prova: " nota2

media=$(echo "scale=2; ($nota1 + $nota2) / 2" | bc)
echo "A sua média final: $media"

# Verifica aprovação
resultado=$(echo "$media >= 7" | bc)
if [ "$resultado" -eq 1 ]; then
    echo "Parabéns $nome_usuario, você foi aprovado!"
else
    echo "Reprovado, tente novamente."
fi
