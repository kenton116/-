#!/bin/bash
date
echo "「今日のお一人様チャット」"
echo "『メッセージは５０件まで送れます』"
reaction=(
	">> 相手：へぇ〜"
	">> 相手：ふ〜ん"
	">> 相手：確かに"
	">> 相手：分かる"
	">> 相手：なるほど！"
	">> 相手：いいね"
	">> 相手：OK!"
	">> 相手：NO!"
	">> 相手：どんまい！"
)
for ((i=0 ; i<50 ; i++))
do
echo "[送信するメッセージを入力。 Enterで送信。]"
read message
echo ">> あなた：$message"
echo ${reaction[$(($RANDOM % ${#reaction[*]}))]}
done
