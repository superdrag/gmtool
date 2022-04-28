
do
local function New(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
	return {id=a0,cn=a1,en=a2,jp=a3,tw=a4,de=a5,ru=a6,fr=a7,it=a8,es=a9,pt=a10,kr=a11,}
end
local WordMailConfig = 
{
["7DayRank_daily_title"] = New("7DayRank_daily_title","七日排行每日奖励","Daily Rewards for 7-Day Ranking","7日ランキングのデイリーボーナス","七日排行每日獎勵","Tägliche Belohnungen für die 7-Tage-Rangliste","Ежедневные награды за 7-дневный рейтинг","Récompenses quotidiennes pour le classement de 7 jours","Ricompense giornaliere per la classifica dei 7 giorni","Recompensas diarias por la clasificación de 7 días","Recompensas diárias para o Ranking de 7 dias",""),
["7DayRank_daily_content"] = New("7DayRank_daily_content","尊敬的玩家{0}，您于{1}在七日排行活动中获得了第{2}名，以下是该排名奖励，请注意查收","Dear player {0}, you won the {2} place in the 7-day ranking event at {1}. Please check your rewards.Congratulations!","プレイヤーの{0}様、あなたは{1}に7日ランキングで第{2}位を取れました。おめでとうございます！次のランキングボーナスをご査収ください。","尊敬的玩家{0}，您於{1}在七日排行活動中獲得了第{2}名，以下是該排名獎勵，請注意查收","Lieber Spieler {0}, du hast den {2} Platz im 7-Tage-Ranglisten-Event bei {1} gewonnen. Bitte überprüfe deine Belohnungen: Herzlichen Glückwunsch!","Уважаемый игрок {0}, вы заняли {2} место в 7-дневном рейтинговом событии на {1}. Пожалуйста, проверьте свои награды. Поздравляем!","Cher joueur {0}, vous avez gagné la {2} place dans le classement de 7 jours de {1}. Veuillez vérifier vos récompenses. Félicitations !","Caro giocatore {0}, hai vinto il {2} posto nella classifica dei 7 giorni di {1}. Per favore controlla le tue ricompense. Congratulazioni!","Estimado jugador {0}, has ganado el puesto {2} en el evento de clasificación de 7 días en {1}. Por favor, comprueba tu recompensa. ¡Felicidades!","Caro jogador {0}, ganhou o lugar {2} no evento de 7 dias no ranking {1}. Por favor, verifique as suas recompensas.Parabéns!",""),
["7DayRank_final_title"] = New("7DayRank_final_title","七日排行终极奖励","Ultimate Reward for 7-Day Ranking","7日ランキングファイナルボーナス","七日排行終極獎勵","Ultimative Belohnung für die 7-Tage-Rangliste","Конечная награда за 7-дневный рейтинг","Récompense ultime pour le classement de 7 jours","Ricompensa finale per la classifica di 7 giorni","Recompensa final por la clasificación de 7 días","Recompensa final para o ranking de 7 dias",""),
["7DayRank_final_content"] = New("7DayRank_final_content","尊敬的玩家{0}，七日排名已于{1}结束，您在本次排行活动中获得了第{2}名，以下是该排名奖励，请注意查收","Dear player {0}, the 7-day ranking event has ended at {1}. You won the {2} place. Please check your rewards. Congratulations!","プレイヤーの{0}様、7日ランキングが{1}に終了しました。あなたは今回のランキングで第{2}位を取れました。おめでとうございます！次のランキングボーナスをご査収ください。","尊敬的玩家{0}，七日排名已於{1}結束，您在本次排行活動中獲得了第{2}名，以下是該排名獎勵，請注意查收","Lieber Spieler {0}, das 7-Tage-Ranglisten-Event ist am {1} beendet. Du hast den {2} Platz gewonnen. Bitte überprüfen Sie Ihre Belohnungen. Herzlichen Glückwunsch!","Уважаемый игрок {0}, 7-дневное рейтинговое событие завершилось на {1}. Вы заняли {2} место. Пожалуйста, проверьте свои награды. Поздравляем!","Cher joueur {0}, le classement de 7 jours s\'est terminé à {1}. Vous avez gagné la place {2}. Veuillez vérifier vos récompenses. Félicitations !","Caro giocatore {0}, l\'evento di classifica di 7 giorni si è concluso a {1}. Hai vinto il {2} posto. Per favore controlla le tue ricompense. Congratulazioni!","Estimado jugador {0}, el evento de clasificación de 7 días ha terminado en {1}. Has ganado el puesto {2}. Por favor, comprueba tu recompensa. ¡Enhorabuena!","Caro jogador {0}, o evento de classificação de 7 dias terminou em {1}. Ganhou o lugar {2}. Por favor, verifique as suas recompensas. Parabéns!",""),
["battlepass_reward_title"] = New("battlepass_reward_title","黄金通行证奖励补发","Gold Pass Rewards","ゴールドパスのボーナス補填","黃金通行證獎勵補發","Goldpass-Belohnungen","Награды за золотой пропуск","Récompenses pour le Gold Pass","Ricompense del Pass Oro","Recompensas del Pase de Oro","Recompensas Gold Pass Rewards",""),
["battlepass_reward_content"] = New("battlepass_reward_content","尊敬的玩家{0},本期通行证已于{1}结束，您在本期通行证活动中有以下奖励未能及时领取，现为您补发，请注意查收","Dear player {0}, this pass has ended at {1}, you have failed to claim the following rewards in this pass event, and now it is reissued for you, please pay attention to check","プレイヤーの{0}様、あなたのパスは{1}に期限切れとなりました。今期のパスで以下の未受領ボーナスがありまして、補填しますのでご査収ください。","尊敬的玩家{0},本期通行證已於{1}結束，您在本期通行證活動中有以下獎勵未能及時領取，現為您補發，請注意查收","Lieber Spieler {0}, dieser Pass wurde um {1} beendet, Sie haben es versäumt, die folgenden Belohnungen in diesem Pass-Event zu beanspruchen, und jetzt wird er für Sie neu ausgestellt, bitte prüfen Sie","Уважаемый игрок {0}, этот пропуск закончился в {1}, вы не смогли получить следующие награды в событии этого пропуска, и теперь он перевыпущен для вас, пожалуйста, обратите внимание на проверку","Cher joueur {0}, ce pass s\'est terminé à {1}, vous n\'avez pas réussi à réclamer les récompenses suivantes lors de cet événement de pass, et maintenant il est réédité pour vous, s\'il vous plaît faites attention à vérifier","Caro giocatore {0}, questo pass è terminato a {1}, non sei riuscito a reclamare le seguenti ricompense in questo evento, e ora è stato ristampato per te, per favore fai attenzione a controllare","Estimado jugador {0}, este pase ha finalizado en {1}, no has podido reclamar las siguientes recompensas en este evento de pases, y ahora se vuelve a emitir para ti, por favor, presta atención para comprobarlo","Caro jogador {0}, este passe terminou em {1}, não conseguiu reclamar as seguintes recompensas neste evento de passe, e agora é reemitido para si, por favor preste atenção para verificar",""),
}
TableMerge(WordConfig,WordMailConfig)
end