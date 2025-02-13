

*start
*title
;メッセージレイヤを非表示にしておく
@layopt layer=message0 visible=false

;背景画像を設定
[image layer="base" page="fore" storage=back3.jpg]
[image layer=1 storage=title.png  visible=true top=100 left=150]

[locate x=300 y=400 ]
[button graphic="start.png" target=*first]

[locate x=800 y=400 ]
[button graphic="load.png" target=*loadmenu]

[s]

;つづきからボタンが押された場合。ロード画面を表示
*loadmenu
[cm]
[showload]

[jump target=*title]
[s]

;ストーリー最初から
*first
[cm]
[freeimage layer=1]
[bg storage=room2.jpg time=300]
あなたはある夜、目を覚ますと見覚えのない部屋に閉じ込められている。[l][r]
部屋には時計があり、1時間後に部屋の扉が開くと言われている。[l][r]
しかし、目の前には二つのボタンがあり、「白のボタン」と「黒のボタン」とだけ書かれている。[l][r]
あなたがどちらかを押さない限り扉は開かない。あなたはその間にボタンを選ばなければならない。[l][r]

@layopt layer=message0 visible=true

どうしよう?[l][r][r]

[link target=*select1]【１】白のボタン[endlink][r]
[link target=*select2]【２】黒のボタン[endlink][r]
[s]

*select1

[cm]

「白のボタン」がクリックされました[l]
@jump target=*white

*select2

[cm]

「黒のボタン」がクリックされました[l]

@jump target=*black


*white
[cm]
[bg storage=white.jpg time=300]
「あなたが選ぶべき運命を決めるのはあなたです。」[l][cm]
扉が開く
[bg storage=door.jpg time=500]

[bg storage=city.jpg time=2000]
気がついたら日常に戻っていた。[l][cm]
@jump target=*common

*black
[cm]
扉が開く[l][cm]
[bg storage=door.jpg time=500]

[bg storage=police.jpg time=500]
「思い出した。私は犯罪に関与していたんだった。」[l][r]
無意識のうちに取り返しのつかないことになってしまった。[l][r]
@jump target=*common
*common
[cm]
終わり
					
@layopt layer=message0 visible=true


