# def create_kana(hiragana, katakana, romaji, consonant, vowel, dakuten, handakuten, youon)
#   Kana.create({
#     hiragana: hiragana,
#     katakana: katakana,
#     romaji: romaji,
#     consonant: consonant,
#     vowel: vowel,
#     dakuten: dakuten,
#     handakuten: handakuten,
#     youon: youon
#   })
# end
#
# def create_normal(hiragana, katakana, romaji, consonant, vowel)
#   create_kana(hiragana, katakana, romaji, consonant, vowel, false, false, nil)
# end
#
# create_normal("あ", "ア", "a", nil, "a")

normal_kana = [
  %w(あ ア a nil a),
  %w(い イ i nil i),
  %w(う ウ u nil u),
  %w(え エ e nil e),
  %w(お オ o nil o),

  %w(か カ ka k a),
  %w(き キ ki k i),
  %w(く ク ku k u),
  %w(け ケ ke k e),
  %w(こ コ ko k o),

  %w(さ サ sa s a),
  %w(し シ shi s i),
  %w(す ス su s u),
  %w(せ セ se s e),
  %w(そ ソ so s o),

  %w(た タ ta t a),
  %w(ち チ chi t i),
  %w(つ ツ tsu t u),
  %w(て テ te t e),
  %w(と ト to t o),

  %w(な ナ na n a),
  %w(に ニ ni n i),
  %w(ぬ ヌ nu n u),
  %w(ね ネ ne n e),
  %w(の ノ no n o),

  %w(は ハ ha h a),
  %w(ひ ヒ hi h i),
  %w(ふ フ fu h u),
  %w(へ ヘ he h e),
  %w(ほ ホ ho h o),

  %w(ま マ ma m a),
  %w(み ミ mi m i),
  %w(む ム mu m u),
  %w(め メ me m e),
  %w(も モ mo m o),

  %w(や ヤ ya y a),
  %w(ゆ ユ yu y u),
  %w(よ ヨ yo y o),

  %w(ら ラ ra r a),
  %w(り リ ri r i),
  %w(る ル ru r u),
  %w(れ レ re r e),
  %w(ろ ロ ro r o),

  %w(わ ワ wa w a),
  %w(を ヲ wo w o),

  %w(ん ン n n nil)
]

dakuten_kana = [
  %w(が ガ ga g a),
  %w(ぎ ギ gi g i),
  %w(ぐ グ gu g u),
  %w(げ ゲ ge g e),
  %w(ご ゴ go g o),

  %w(ざ ザ za z a),
  %w(じ ジ ji z i),
  %w(ず ズ zu z u),
  %w(ぜ ゼ ze z e),
  %w(ぞ ゾ zo z o),

  %w(だ ダ da d a),
  %w(ぢ ヂ ji d i),
  %w(づ ヅ zu d u),
  %w(で デ de d e),
  %w(ど ド do d o),

  %w(ば バ ba b a),
  %w(び ビ bi b i),
  %w(ぶ ブ bu b u),
  %w(べ ベ be b e),
  %w(ぼ ボ bo b o)
]

handakuten_kana = [
  %w(ぱ パ pa p a),
  %w(ぴ ピ pi p a),
  %w(ぷ プ pu p a),
  %w(ぺ ペ pe p a),
  %w(ぽ ポ po p a)
]

youon_kana = [
  %w(きゃ キャ kya ky a や),
  %w(きゅ キュ kyu ky u ゆ),
  %w(きょ キョ kyo ky o よ),

  %w(しゃ シャ sha sh a や),
  %w(しゅ シュ shu sh u ゆ),
  %w(しょ ショ sho sh o よ),

  %w(ちゃ チャ cha ch a や),
  %w(ちゅ チュ chu ch u ゆ),
  %w(ちょ チョ cho ch o よ),

  %w(にゃ ニャ nya ny a や),
  %w(にゅ ニュ nyu ny u ゆ),
  %w(にょ ニョ nyo ny o よ),

  %w(ひゃ ヒャ hya hy a や),
  %w(ひゅ ヒュ fyu hy u ゆ),
  %w(ひょ ヒョ hyo hy o よ),

  %w(みゃ ミャ mya my a や),
  %w(みゅ ミュ myu my u ゆ),
  %w(みょ ミョ myo my o よ),

  %w(りゃ リャ rya ry a や),
  %w(りゅ リュ ryu ry u ゆ),
  %w(りょ リョ ryo ry o よ)
]

dakuten_youon_kana = [
  %w(ぎゃ ギャ gya gy a や),
  %w(ぎゅ ギュ gyu gy u ゆ),
  %w(ぎょ ギョ gyo gy o よ),

  %w(じゃ ジャ ja j a や),
  %w(じゅ ジュ ju j u ゆ),
  %w(じょ ジョ jo j o よ),

  %w(びゃ ビャ bya by a や),
  %w(びゅ ビュ byu by u ゆ),
  %w(びょ ビョ byo by o よ)
]

handakuten_youon_kana = [
  %w(ぴゃ ピャ pya py a や),
  %w(ぴゅ ピュ pyu py u ゆ),
  %w(ぴょ ピョ pyo py o よ),
]

obsolete_kana = [
  %w(ゐ ヰ wi w i),
  %w(ゑ ヱ we w e)
]

normal_kana.each do |group|
  Kana.create({
    hiragana: group[0],
    katakana: group[1],
    romaji: group[2],
    consonant: group[3] == "nil" ? nil : group[3],
    vowel: group[4] == "nil" ? nil : group[4]
  })
end

dakuten_kana.each do |group|
  Kana.create({
    hiragana: group[0],
    katakana: group[1],
    romaji: group[2],
    consonant: group[3],
    vowel: group[4],
    dakuten: true
  })
end

handakuten_kana.each do |group|
  Kana.create({
    hiragana: group[0],
    katakana: group[1],
    romaji: group[2],
    consonant: group[3],
    vowel: group[4],
    handakuten: true
  })
end

youon_kana.each do |group|
  Kana.create({
    hiragana: group[0],
    katakana: group[1],
    romaji: group[2],
    consonant: group[3],
    vowel: group[4],
    youon: group[5]
  })
end

dakuten_youon_kana.each do |group|
  Kana.create({
    hiragana: group[0],
    katakana: group[1],
    romaji: group[2],
    consonant: group[3],
    vowel: group[4],
    youon: group[5],
    dakuten: true
  })
end

handakuten_youon_kana.each do |group|
  Kana.create({
    hiragana: group[0],
    katakana: group[1],
    romaji: group[2],
    consonant: group[3],
    vowel: group[4],
    youon: group[5],
    handakuten: true
  })
end

obsolete_kana.each do |group|
  Kana.create({
    hiragana: group[0],
    katakana: group[1],
    romaji: group[2],
    consonant: group[3],
    vowel: group[4],
    obsolete: true
  })
end

#---------------------#

kanji = [
  ["見", ["み"], ["ケン"], ["see"], 5],
  ["人", ["ひと"], ["ジン"], ["person"], 5],
  ["高", ["たか"], ["コウ"], ["high", "expensive"], 5],
  ["山", ["やま"], ["サン"], ["mountain"], 5],
  ["食", ["た", "く"], ["ショク"], ["eat"], 5],
  ["電", [], ["デン"], ["electricity"], 5],
  ["日", ["ひ", "か"], ["ニチ", "ジツ"], ["sun", "day"], 5],
  ["本", ["もと"], ["ホン"], ["book", "origin"], 5]
]

# ["", [], [], [], 5],
kanji_n5 = "安一飲右雨駅円火花下何会外学間気九休魚金空月見言古五後午語校口行高国今左三山四子耳時七車社手週十出書女小少上食新人水生西川千先前足多大男中長天店電土東道読南ニ日入年買白八半百父分聞母北木本毎万名目友来立六話"

kanji_n4 = "会同事自社発者地業方新場員立開手力問代明動京目通言理体田主題意不作用度強公持野以思家世多正安院心界教文元重近考画海売知道集別物使品計死特私始朝運終台広住真有口少町料工建空急止送切転研足究楽起着店病質待試族銀早映親験英医仕去味写字答夜音注帰古歌買悪図週室歩風紙黒花春赤青館屋色走秋夏習駅洋旅服夕借曜飲肉貸堂鳥飯勉冬昼茶弟牛魚兄犬妹姉漢"

kanji_n3 = "政議民連対部合市内相定回選米実関決全表戦経最現調化当約首法性要制治務成期取都和機平加受続進数記初指権支産点報済活原共得解交資予向際勝面告反判認参利組信在件側任引求所次昨論官増係感情投示変打直両式確果容必演歳争談能位置流格疑過局放常状球職与供役構割費付由説難優夫収断石違消神番規術備宅害配警育席訪乗残想声念助労例然限追商葉伝働形景落好退頭負渡失差末守若種美命福望非観察段横深申様財港識呼達良候程満敗値突光路科積他処太客否師登易速存飛殺号単座破除完降責捕危給苦迎園具辞因馬愛富彼未舞亡冷適婦寄込顔類余王返妻背熱宿薬険頼覚船途許抜便留罪努精散静婚喜浮絶幸押倒等老曲払庭徒勤遅居雑招困欠更刻賛抱犯恐息遠戻願絵越欲痛笑互束似列探逃遊迷夢君閉緒折草暮酒悲晴掛到寝暗盗吸陽御歯忘雪吹娘誤洗慣礼窓昔貧怒泳祖杯疲皆鳴腹煙眠怖耳頂箱晩寒髪忙才靴恥偶偉猫幾"

kanji_n2 = "党協総区領県設改府査委軍団各島革村勢減再税営比防補境導副算輸述線農州武象域額欧担準賞辺造被技低復移個門課脳極含蔵量型況針専谷史階管兵接細効丸湾録省旧橋岸周材戸央券編捜竹超並療採森競介根販歴将幅般貿講林装諸劇河航鉄児禁印逆換久短油暴輪占植清倍均億圧芸署伸停爆陸玉波帯延羽固則乱普測豊厚齢囲卒略承順岩練軽了庁城患層版令角絡損募裏仏績築貨混昇池血温季星永著誌庫刊像香坂底布寺宇巨震希触依籍汚枚複郵仲栄札板骨傾届巻燃跡包駐弱紹雇替預焼簡章臓律贈照薄群秒奥詰双刺純翌快片敬悩泉皮漁荒貯硬埋柱祭袋筆訓浴童宝封胸砂塩賢腕兆床毛緑尊祝柔殿濃液衣肩零幼荷泊黄甘臣浅掃雲掘捨軟沈凍乳恋紅郊腰炭踊冊勇械菜珍卵湖喫干虫刷湯溶鉱涙匹孫鋭枝塗軒毒叫拝氷乾棒祈拾粉糸綿汗銅湿瓶咲召缶隻脂蒸肌耕鈍泥隅灯辛磨麦姓筒鼻粒詞胃畳机膚濯塔沸灰菓帽枯涼舟貝符憎皿肯燥畜挟曇滴伺"

kanji_n1 = "氏統保第結派案策基価提挙応企検藤沢裁証援施井護展態鮮視条幹独宮率衛張監環審義訴株姿閣衆評影松撃佐核整融製票渉響推請器士討攻崎督授催及憲離激摘系批郎健盟従修隊織拡故振弁就異献厳維浜遺塁邦素遣抗模雄益緊標宣昭廃伊江僚吉盛皇臨踏壊債興源儀創障継筋闘葬避司康善逮迫惑崩紀聴脱級博締救執房撤削密措志載陣我為抑幕染奈傷択秀徴弾償功拠秘拒刑塚致繰尾描鈴盤項喪伴養懸街契掲躍棄邸縮還属慮枠恵露沖緩節需射購揮充貢鹿却端賃獲郡併徹貴衝焦奪災浦析譲称納樹挑誘紛至宗促慎控智握宙俊銭渋銃操携診託撮誕侵括謝駆透津壁稲仮裂敏是排裕堅訳芝綱典賀扱顧弘看訟戒祉誉歓奏勧騒閥甲縄郷揺免既薦隣華範隠徳哲杉釈己妥威豪熊滞微隆症暫忠倉彦肝喚沿妙唱阿索誠襲懇俳柄驚麻李浩剤瀬趣陥斎貫仙慰序旬兼聖旨即柳舎偽較覇詳抵脅茂犠旗距雅飾網竜詩繁翼潟敵魅嫌斉敷擁圏酸罰滅礎腐脚潮梅尽僕桜滑孤炎賠句鋼頑鎖彩摩励縦輝蓄軸巡稼瞬砲噴誇祥牲秩帝宏唆阻泰賄撲堀菊絞縁唯膨矢耐塾漏慶猛芳懲剣彰棋丁恒揚冒之倫陳憶潜梨仁克岳概拘墓黙須偏雰遇諮狭卓亀糧簿炉牧殊殖艦輩穴奇慢鶴謀暖昌拍朗寛覆胞泣隔浄没暇肺貞靖鑑飼陰銘随烈尋稿丹啓也丘棟壌漫玄粘悟舗妊熟旭恩騰往豆遂狂岐陛緯培衰艇屈径淡抽披廷錦准暑磯奨浸剰胆繊駒虚霊帳悔諭惨虐翻墜沼据肥徐糖搭盾脈滝軌俵妨擦鯨荘諾雷漂懐勘栽拐駄添冠斜鏡聡浪亜覧詐壇勲魔酬紫曙紋卸奮欄逸涯拓眼獄尚彫穏顕巧矛垣欺釣萩粛栗愚嘉遭架鬼庶稚滋幻煮姫誓把践呈疎仰剛疾征砕謡嫁謙后嘆菌鎌巣頻琴班棚潔酷宰廊寂辰霞伏碁俗漠邪晶墨鎮洞履劣那殴娠奉憂朴亭淳怪鳩酔惜穫佳潤悼乏該赴桑桂髄虎盆晋穂壮堤飢傍疫累痴搬晃癒桐寸郭尿凶吐宴鷹賓虜陶鐘憾猪紘磁弥昆粗訂芽庄傘敦騎寧循忍怠如寮祐鵬鉛珠凝苗獣哀跳匠垂蛇澄縫僧眺亘呉凡憩媛溝恭刈睡錯伯笹穀陵霧魂弊妃舶餓窮掌麗綾臭悦刃縛暦宜盲粋辱毅轄猿弦稔窒炊洪摂飽冗桃狩朱渦紳枢碑鍛刀鼓裸猶塊旋弓幣膜扇腸槽慈楊伐駿漬糾亮墳坪紺娯椿舌羅峡俸厘峰圭醸蓮弔乙汁尼遍衡薫猟羊款閲偵喝敢胎酵憤豚遮扉硫赦窃泡瑞又慨紡恨肪扶戯伍忌濁奔斗蘭迅肖鉢朽殻享秦茅藩沙輔媒鶏禅嘱胴迭挿嵐椎絹陪剖譜郁悠淑帆暁傑楠笛玲奴錠拳翔遷拙侍尺峠篤肇渇叔雌亨堪叙酢吟逓嶺甚喬崇漆岬癖愉寅礁乃洲屯樺槙姻巌擬塀唇睦閑胡幽峻曹詠卑侮鋳抹尉槻隷禍蝶酪茎帥逝汽琢匿襟蛍蕉寡琉痢庸朋坑藍賊搾畔遼唄孔橘漱呂拷嬢苑巽杜渓翁廉謹瞳湧欣窯褒醜升殉煩巴禎劾堕租稜桟倭婿慕斐罷矯某囚魁虹鴻泌於赳漸蚊葵厄藻禄孟嫡尭嚇巳凸暢韻霜硝勅芹杏棺儒鳳馨慧愁楼彬匡眉欽薪褐賜嵯綜繕栓翠鮎榛凹艶惣蔦錬隼渚衷逐斥稀芙詔皐雛惟佑耀黛渥憧宵妄惇脩甫酌蚕嬉蒼暉頒只肢檀凱彗謄梓丑嗣叶汐絢朔伽畝抄爽黎惰蛮冴旺萌偲壱瑠允侯蒔鯉弧遥舜瑛附彪卯但綺芋茜凌皓洸毬婆緋鯛怜邑倣碧啄穣酉悌倹柚繭亦詢采紗賦眸玖弐錘諄倖痘笙侃裟洵爾耗昴銑莞伶碩宥滉晏伎朕迪綸且竣晨吏燦麿頌箇楓琳梧哉澪匁晟衿凪梢丙颯茄勺恕蕗瑚遵瞭燎虞柊侑謁斤嵩捺蓉茉袈燿誼冶栞墾勁菖旦椋叡紬胤凜亥爵脹麟莉汰瑶瑳耶椰絃丞璃奎塑昂柾熙菫諒鞠崚濫捷"

def create_kanji(jlpt_level, character_list)
  kanji_list = character_list.chars.map do |character|
    [character, [], [], [], jlpt_level]
  end

  kanji_list.each do |character|
    Kanji.create({
      character: character[0],
      kunyomi: character[1],
      onyomi: character[2],
      meaning: character[3],
      jlpt: character[4]
    })
  end
end

create_kanji(5, kanji_n5)
create_kanji(4, kanji_n4)
create_kanji(3, kanji_n3)
create_kanji(2, kanji_n2)
create_kanji(1, kanji_n1)

Word.create({
  word: "見る",
  furigana: "みる",
  meaning: "to see",
  jlpt: 5
})

#---------------------#

User.create({
  login: "zerovolts",
  name: "Zach Stone",
  experience: 150
})
