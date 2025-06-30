#!/bin/bash

#Recebe nome do usuário
nome_usuario = input("Por gentileza, insira seu nome")
print(f"Olá, {nome_usuario}! seja bem-vindo a nossa calculadora")

#Recebe números do usuário
numero1 = int(input("Digite um número"))
numero2 = int(input("Digite outro número"))

#Realiza operações aritméticas
adicao = numero1 + numero2
print("A soma dos números inseridos é:", adicao)

subtracao = numero1 - numero2
print("A subtração dos números inseridos é:", subtracao)

multiplacacao = numero1 * numero2
print("A multiplacação dos números inseridos é:", multiplacacao)

divisao = numero1 / numero2
print("A divisão dos números inseridos é:", divisao)

#Calcular média das notas acadêmica
print(f"Interessante né, {nome_usuario}! Vamos agora calcular a sua nota acadêmica?")
nota_academica1 = int(input("Insira a nota da sua primeira prova"))
nota_academica2 = int(input("Insira a nota da sua segunda prova"))

notas = [nota_academica1, nota_academica2]

media = sum(notas) / len(notas)

print(f"A sua média final: {media:.2f}")

if media >=7:
    print(f"Parabéns {nome_usuario}, você foi aprovado!")
else:
    print(f"Reprovado, tente novamente.")

