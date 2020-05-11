KantoPlayersHouse2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

KantoPlayersHouse2FN64Script:
	jumptext KantoPlayersHouse2FN64Text

KantoPlayersHousePCScript:
	opentext
	special PlayersHousePC
	iftrue .Warp
	closetext
	end
.Warp:
	warp NONE, 0, 0
	end

KantoPlayersHouse2FN64Text:
	text "<PLAYER> played the"
	line "N64."

	para "Better get going--"
	line "no time to lose!"
	done


KantoPlayersHouse2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  7,  0, KANTOPLAYERS_HOUSE_1F, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3,  5, BGEVENT_READ, KantoPlayersHouse2FN64Script
	bg_event  0,  1, BGEVENT_UP, KantoPlayersHousePCScript

	db 0 ; object events
