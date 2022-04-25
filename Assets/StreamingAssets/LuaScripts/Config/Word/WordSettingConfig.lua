
do
local function New(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)
	return {id=a0,cn=a1,en=a2,jp=a3,tw=a4,de=a5,ru=a6,fr=a7,it=a8,es=a9,pt=a10,kr=a11,}
end
local WordSettingConfig = 
{
["text_font"] = New("text_font","ResourceHanRoundedCN-Bold.ttf","ResourceHanRoundedCN-Bold.ttf","ResourceHanRoundedCN-Bold.ttf","ResourceHanRoundedCN-Bold.ttf","ResourceHanRoundedCN-Bold.ttf","ResourceHanRoundedCN-Bold.ttf","ResourceHanRoundedCN-Bold.ttf","ResourceHanRoundedCN-Bold.ttf","ResourceHanRoundedCN-Bold.ttf","ResourceHanRoundedCN-Bold.ttf","ResourceHanRoundedCN-Bold.ttf"),
["set_name_10001"] = New("set_name_10001","设置","Settings","オプション","設置","Einstellungen","Настройки","Paramètres","Impostazioni","Ajustes","Definições",""),
["set_name_10002"] = New("set_name_10002","音量","Volume","音量","音量","Lautstärke","Громкость","Volume","Volume","Volumen","Volume",""),
["set_name_10003"] = New("set_name_10003","音效","SFX","SE","音效","SFX","SFX","SFX","SFX","SFX","SFX",""),
["set_name_10004"] = New("set_name_10004","音乐","Music","BGM","音樂","Musik","Музыка","Musique","Musica","Música","Música",""),
["set_name_10005"] = New("set_name_10005","其他","Others","その他","其他","Andere","Другие","Autres","Altri","Otros","Outros",""),
["set_name_10006"] = New("set_name_10006","恢复","Restore","復元","恢復","Wiederherstellen","Восстановление","Restaurer","Ripristinare","Restaurar","Restaurar",""),
["set_name_10007"] = New("set_name_10007","遇到问题","Trouble Shooting","問題集","遇到問題","Fehlerbehebung","Поиск и устранение неисправностей","Résolution des problèmes","Ripresa dei problemi","Solución de problemas","Resolução de Problemas",""),
["set_name_10008"] = New("set_name_10008","语言（%s)","Language (%s)","言語（%s）","語言（%s)","Sprache (%s)","Язык (%s)","Langue (%s)","Lingua (%s)","Idioma (%s)","Língua (%s)",""),
["set_name_10009"] = New("set_name_10009","语言设置","Language Settings","言語設定","語言設置","Einstellungen der Sprache","Настройки языка","Paramètres de langue","Impostazioni della lingua","Configuración del idioma","Configurações linguísticas",""),
["set_name_10010"] = New("set_name_10010","您确定要更改语言吗？","Change the language?","言語を変更してよろしいですか？","您確定要更改語言嗎？","Ändern Sie die Sprache?","Изменить язык?","Modifier la langue ?","Cambiare la lingua?","¿Cambiar el idioma?","Mudar a língua?",""),
["set_name_10011"] = New("set_name_10011","取消","Cancel","キャンセル","取消","Abbrechen","Отменить","Annuler","Annulla","Cancelar","Cancelar",""),
["set_name_10012"] = New("set_name_10012","是","Confirm","確認","是","Bestätigen","Подтвердить","Confirmer","Conferma","Confirmar","Confirme",""),
["set_name_10013"] = New("set_name_10013","账号","Account","アカウント","賬號","Konto","Счет","Compte","Conto","Cuenta","Conta",""),
["title_id"] = New("title_id","ID号","ID","ID","ID號","ID","ID","ID","ID","ID","ID",""),
["button_copy"] = New("button_copy","复制","Copy","コピー","複製","Kopieren","Копировать","Copier","Copia","Copiar","Cópia",""),
["title_optionid"] = New("title_optionid","ID号:%s","ID: %s","ID：%s","ID號:%s","ID: %s","ID: %s","ID : %s","ID: %s","ID: %s","ID: %s",""),
}
TableMerge(WordConfig,WordSettingConfig)
end