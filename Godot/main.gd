extends Node

#Variavel das roladas 
var rolada_player = 0
var rolada_npc = 0

#Variavel da UI
@onready var label_player = $roladaplayerer 
@onready var label_npc = $roladanpc
@onready var label_ganhador = $ganhador 

#rolada
func rolada_do_dice():
	rolada_player = randi() % 6 + 1 
	rolada_npc = randi() % 6 + 1
	
	#ui att
	label_player.text= "Você jogou: " + str(rolada_player)
	label_npc.text = "O inimigo jogou : " + str(rolada_npc)
	
	if rolada_player > rolada_npc:
		label_ganhador.text = "Você ganhou! Verme MALDITO"
	elif rolada_player < rolada_npc:
		label_ganhador.text = "Você perdeu agora volta la pra baixo"
	else :
		label_ganhador.text = "Empate mas volta pro fim da fila"

#Botao 

func _on_button_pressed() -> void:
	rolada_do_dice()
