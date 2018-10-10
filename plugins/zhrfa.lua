
local function Zhrfa(msg,MsgText)
if msg.type ~= "pv" then
if MsgText[1] == "زخرفه" then
redis:setex(boss..":ZhrfNow:"..msg.sender_user_id_,500,true)
sendMsg(msg.chat_id_,msg.id_,"📑| حسننا , الان يمكنك ارسال الاسم 💯")    
return false
end

if redis:get(boss..":ZhrfNow:"..msg.sender_user_id_) then
redis:del(boss..":ZhrfNow:"..msg.sender_user_id_)
if UTF8_len(msg.text) > 20 then
sendMsg(msg.chat_id,msg.id,"📛| لا يمكنك زخرفه اكثر من 20 حرف \n📑| ارسل امر زخرفه وحاول مجددا بحروف اقل")    
return false
elseif msg.text:match("\n") then
sendMsg(msg.chat_id,msg.id,"📛| لا يمكن زخرفه نص يحتوي على اكثر من سطر .")
return false
end
local EmojeS = {
' •🌱💚﴿ֆ ❥',
'🍿﴿ֆ ❥',
'• 🌸💸 ❥˓  ',
'🖤🌞﴿ֆ',
' • 🐼🌿﴾ֆ',
' •🙊💙﴿ֆ ❥', 
'-💁🏼‍♂️✨﴿ֆ ❥ ', 
'•|• 〄💖‘',
' ⚡️🌞 •|•℡', 
'- ⁽🙆‍♂️✨₎ֆ', 
'❥┇💁🏼‍♂️🔥“', 
'💜💭℡ֆ', 
'-┆💙🙋🏼‍♂️♕', 
'- ⁽🙆🏻🍿₎ֆ',
'“̯ 🐼💗 |℡',
'⁞ 🐝🍷',
'┋⁽❥̚͢₎ 🐣💗', 
'•|• ✨🌸‘',
'  ֆ 💭💔ۦ',
'ֆ 💛💭ۦ', 
'ֆ ⚡️🔱ۦ',
'℡ᴖ̈💜✨⋮', 
'⋮⁽🌔☄️₎ۦ˛',
'⁞❉💥┋♩',
' ⁞✦⁽☻🔥₎“ٰۦ',
'℡ ̇₎ ✨🐯⇣✦',
'⁞♩⁽🌞🌩₎⇣✿',
'ۦٰ‏┋❥ ͢˓🦁💛ۦ‏',
'⚡️♛ֆ₎',
'♛⇣🐰☄️₎✦',
'⁾⇣✿💖┊❥',
' ₎✿💥😈 ⁞“❥', 
'😴🌸✿⇣',
'❥┊⁽ ℡🦁🌸'
}

local Emoje = {
'║👹💥ᵛ͢ᵎᵖ ⌯﴾❥',
'₎🐳🍥۶ֆ',
'♩┊💎🌸❥ ₎',
'₎❁😻🌸⇣',
'┊🏻“👄🌺) ℡',
'❥ֆ☄⚡️ ᴗ̈',
'❥•َ⚡️ْ🦇️͢ֆ⸽',
'♜🌸🐝 ⁞',
'║♜💛⚡️͢₎⇣✿ ⁞',
'⌯⇣✿💙☄ ⁞﴾❥',
'¦⇣👽♜͢ ⁞',
'❥•َْ👻⚡️͢⸽۶ֆ',
'ֆ⸽♜👹🔥͢₎⇣',
'⌯⇣✿💙☄ ⁞﴾❥',
'♛⌗👽ᵛ🚀﴾⌯',
' ❀🎼🌸℡³¹³',
' ⁞ 🐝🍷',
'• 🐼🌿﴾ֆ',
'🐳🍥۶',
'┊※🏎️‘’💛',
'❥┊⁽ ℡🦁🌸',
'😴🌸✿⇣',
'₎❁😻🌸⇣',
'💁🏼‍♂️✨﴿ֆ ❥',
'┆💙🙋🏼‍♂️♕',
'➤🙇🏼ֆ﴾',
'˛⁽💆🏻‍♂🌙₎⇣✿',
'ཻ ☫ٰ⇣🐼💙ֆ℠',
'℡ 🌞🔥‎‏ ⁾┊',
'┊💎🌸❥ ₎',
'∬💛✨ֆ',
'🌸💸 ❥˓',
' ⁽࿑♚꫶😼ֆ﴾',
'❥•َ⚡️🦇️ֆ⸽',
'🍿﴿ֆ ❥',
'ᵛ͢ᵎᵖ📯💛﴾'
}


local Text = msg.text:gsub("\n","")


local Zhrf = Text:gsub('ض','ضِٰـِۢ')
Zhrf = Zhrf:gsub('ص','صِٰـِۢ')
Zhrf = Zhrf:gsub('ث','ثِٰـِۢ')
Zhrf = Zhrf:gsub('ق','قِٰـِۢ')
Zhrf = Zhrf:gsub('ف','فِٰ͒ـِۢ')
Zhrf = Zhrf:gsub('غ','غِٰـِۢ')
Zhrf = Zhrf:gsub('ع','عِٰـِۢ')
Zhrf = Zhrf:gsub('خ','خِٰ̐ـِۢ')
Zhrf = Zhrf:gsub('ح','حِٰـِۢ')
Zhrf = Zhrf:gsub('ج','جِٰـِۢ')
Zhrf = Zhrf:gsub('ش','شِٰـِۢ')
Zhrf = Zhrf:gsub('س','سِٰـِۢ')
Zhrf = Zhrf:gsub('ي','يِٰـِۢ')
Zhrf = Zhrf:gsub('ب','بِٰـِۢ')
Zhrf = Zhrf:gsub('ل','لِٰـِۢ')
Zhrf = Zhrf:gsub('ا','آ')
Zhrf = Zhrf:gsub('ت','تِٰـِۢ')
Zhrf = Zhrf:gsub('ن','نِٰـِۢ')
Zhrf = Zhrf:gsub('م','مِٰـِۢ')
Zhrf = Zhrf:gsub('ك','ڪِٰـِۢ')
Zhrf = Zhrf:gsub('ط','طِٰـِۢ')
Zhrf = Zhrf:gsub('ظ','ظِٰـِۢ')
Zhrf = Zhrf:gsub('ء','ء')
Zhrf = Zhrf:gsub('ؤ','ؤ')
Zhrf = Zhrf:gsub('ر','ر')
Zhrf = Zhrf:gsub('ى','ى')
Zhrf = Zhrf:gsub('ز','ز')
Zhrf = Zhrf:gsub('و','ﯛ̲୭')
Zhrf = Zhrf:gsub('ه','ۿۿہ')
Zhrf = Zhrf:gsub('a','Ꭿ')
Zhrf = Zhrf:gsub('A','Ꭿ')
Zhrf = Zhrf:gsub("b","Ᏸ")
Zhrf = Zhrf:gsub("B","Ᏸ")
Zhrf = Zhrf:gsub("c","Ꮸ")
Zhrf = Zhrf:gsub("C","Ꮸ")
Zhrf = Zhrf:gsub("d","Ꮷ")
Zhrf = Zhrf:gsub("D","Ꮷ")
Zhrf = Zhrf:gsub("e","Ꮛ")
Zhrf = Zhrf:gsub("E","Ꮛ")
Zhrf = Zhrf:gsub("f","Ꭶ")
Zhrf = Zhrf:gsub("F","Ꭶ")
Zhrf = Zhrf:gsub("g","Ᏻ")
Zhrf = Zhrf:gsub("G","Ᏻ")
Zhrf = Zhrf:gsub("h","Ᏺ")
Zhrf = Zhrf:gsub("H","Ᏺ")
Zhrf = Zhrf:gsub("i","Ꭸ")
Zhrf = Zhrf:gsub("I","Ꭸ")
Zhrf = Zhrf:gsub("j","Ꮰ")
Zhrf = Zhrf:gsub("J","Ꮰ")
Zhrf = Zhrf:gsub("k","Ꮵ")
Zhrf = Zhrf:gsub("K","Ꮵ")
Zhrf = Zhrf:gsub("l","Ꮭ")
Zhrf = Zhrf:gsub("L","Ꮭ")
Zhrf = Zhrf:gsub("m","ᗰ")
Zhrf = Zhrf:gsub("M","ᗰ")
Zhrf = Zhrf:gsub("n","Ꮑ")
Zhrf = Zhrf:gsub("N","Ꮑ")
Zhrf = Zhrf:gsub("o","Ꭷ")
Zhrf = Zhrf:gsub("O","Ꭷ")
Zhrf = Zhrf:gsub("p","Ꭾ")
Zhrf = Zhrf:gsub("P","Ꭾ")
Zhrf = Zhrf:gsub("q","Ꮕ")
Zhrf = Zhrf:gsub("Q","Ꮕ")
Zhrf = Zhrf:gsub("r","ᖇ")
Zhrf = Zhrf:gsub("R","ᖇ")
Zhrf = Zhrf:gsub("s","Ꮥ")
Zhrf = Zhrf:gsub("S","Ꮥ")
Zhrf = Zhrf:gsub("t","Ꮱ")
Zhrf = Zhrf:gsub("T","Ꮱ")
Zhrf = Zhrf:gsub("u","Ꮼ")
Zhrf = Zhrf:gsub("U","Ꮼ")
Zhrf = Zhrf:gsub("v","Ꮙ")
Zhrf = Zhrf:gsub("V","Ꮙ")
Zhrf = Zhrf:gsub("w","Ꮗ")
Zhrf = Zhrf:gsub("W","Ꮗ")
Zhrf = Zhrf:gsub("x","Ꮂ")
Zhrf = Zhrf:gsub("X","Ꮂ")
Zhrf = Zhrf:gsub("y","Ꮍ")
Zhrf = Zhrf:gsub("Y","Ꮍ")
Zhrf = Zhrf:gsub("z","ᔓ")
Zhrf = Zhrf:gsub("Z","ᔓ")



local Zhrf2 = Text:gsub('ض','ضَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ص','صَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ث','ثَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ق','قَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ف','فَٰ͒ـُـٰٓ')
Zhrf2 = Zhrf2:gsub('غ','غَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ع','عَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('خ','خَٰ̐ـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ح','حَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ج','جَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ش','شَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('س','سَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ي','يَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ب','بَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ل','لَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ا','آ')
Zhrf2 = Zhrf2:gsub('ت','تَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ن','نَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('م','مَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ك','ڪَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ط','طَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ظ','ظَٰـُـٰٓ')
Zhrf2 = Zhrf2:gsub('ء','ء')
Zhrf2 = Zhrf2:gsub('ؤ','ؤ')
Zhrf2 = Zhrf2:gsub('ر','ر')
Zhrf2 = Zhrf2:gsub('ى','ى')
Zhrf2 = Zhrf2:gsub('ز','ز')
Zhrf2 = Zhrf2:gsub('و','ﯛ̲୭')
Zhrf2 = Zhrf2:gsub("ه", "ۿۿہ")
Zhrf2 = Zhrf2:gsub('a',"ᵃ")
Zhrf2 = Zhrf2:gsub('A',"ᵃ")
Zhrf2 = Zhrf2:gsub("b","ᵇ")
Zhrf2 = Zhrf2:gsub("B","ᵇ")
Zhrf2 = Zhrf2:gsub("c","ᶜ")
Zhrf2 = Zhrf2:gsub("C","ᶜ")
Zhrf2 = Zhrf2:gsub("d","ᵈ")
Zhrf2 = Zhrf2:gsub("D","ᵈ")
Zhrf2 = Zhrf2:gsub("e","ᵉ")
Zhrf2 = Zhrf2:gsub("E","ᵉ")
Zhrf2 = Zhrf2:gsub("f","ᶠ")
Zhrf2 = Zhrf2:gsub("F","ᶠ")
Zhrf2 = Zhrf2:gsub("g","ᵍ")
Zhrf2 = Zhrf2:gsub("G","ᵍ")
Zhrf2 = Zhrf2:gsub("h","ʰ")
Zhrf2 = Zhrf2:gsub("H","ʰ")
Zhrf2 = Zhrf2:gsub("i","ᶤ")
Zhrf2 = Zhrf2:gsub("I","ᶤ")
Zhrf2 = Zhrf2:gsub("j","ʲ")
Zhrf2 = Zhrf2:gsub("J","ʲ")
Zhrf2 = Zhrf2:gsub("k","ᵏ")
Zhrf2 = Zhrf2:gsub("K","ᵏ")
Zhrf2 = Zhrf2:gsub("l","ˡ")
Zhrf2 = Zhrf2:gsub("L","ˡ")
Zhrf2 = Zhrf2:gsub("m","ᵐ")
Zhrf2 = Zhrf2:gsub("M","ᵐ")
Zhrf2 = Zhrf2:gsub("n","ᶰ")
Zhrf2 = Zhrf2:gsub("N","ᶰ")
Zhrf2 = Zhrf2:gsub("o","ᵒ")
Zhrf2 = Zhrf2:gsub("O","ᵒ")
Zhrf2 = Zhrf2:gsub("p","ᵖ")
Zhrf2 = Zhrf2:gsub("P","ᵖ")
Zhrf2 = Zhrf2:gsub("q","ᵠ")
Zhrf2 = Zhrf2:gsub("Q","ᵠ")
Zhrf2 = Zhrf2:gsub("r","ʳ")
Zhrf2 = Zhrf2:gsub("R","ʳ")
Zhrf2 = Zhrf2:gsub("s","ˢ")
Zhrf2 = Zhrf2:gsub("S","ˢ")
Zhrf2 = Zhrf2:gsub("t","ᵗ")
Zhrf2 = Zhrf2:gsub("T","ᵗ")
Zhrf2 = Zhrf2:gsub("u","ᵘ")
Zhrf2 = Zhrf2:gsub("U","ᵘ")
Zhrf2 = Zhrf2:gsub("v","ᵛ")
Zhrf2 = Zhrf2:gsub("V","ᵛ")
Zhrf2 = Zhrf2:gsub("w","ʷ")
Zhrf2 = Zhrf2:gsub("W","ʷ")
Zhrf2 = Zhrf2:gsub("x","ˣ")
Zhrf2 = Zhrf2:gsub("X","ˣ")
Zhrf2 = Zhrf2:gsub("y","ʸ")
Zhrf2 = Zhrf2:gsub("Y","ʸ")
Zhrf2 = Zhrf2:gsub("z","ᶻ")
Zhrf2 = Zhrf2:gsub("Z","ᶻ")


local Zhrf3= Text:gsub('ض','ض')
Zhrf3= Zhrf3:gsub('ص','ص')
Zhrf3= Zhrf3:gsub('ث','ثہ')
Zhrf3= Zhrf3:gsub('ق','ق')
Zhrf3= Zhrf3:gsub('ف','فُہ')
Zhrf3= Zhrf3:gsub('غ','غہ')
Zhrf3= Zhrf3:gsub('ع','عہ')
Zhrf3= Zhrf3:gsub('ه','هٰہٰٖ')
Zhrf3= Zhrf3:gsub('خ','خہ')
Zhrf3= Zhrf3:gsub('ح','حہ')
Zhrf3= Zhrf3:gsub('ج','جہ')
Zhrf3= Zhrf3:gsub('د','د')
Zhrf3= Zhrf3:gsub('ذ','ذ')
Zhrf3= Zhrf3:gsub('ش','شہ')
Zhrf3= Zhrf3:gsub('س','سہ')
Zhrf3= Zhrf3:gsub('ي','يہ')
Zhrf3= Zhrf3:gsub('ب','بّ')
Zhrf3= Zhrf3:gsub('ل','لہ')
Zhrf3= Zhrf3:gsub('ا','ا')
Zhrf3= Zhrf3:gsub('ت','تہ')
Zhrf3= Zhrf3:gsub('ن','نٰہٰٖ')
Zhrf3= Zhrf3:gsub('م','مٰہٰٖ')
Zhrf3= Zhrf3:gsub('ك','كُہ')
Zhrf3= Zhrf3:gsub('ط','طہ')
Zhrf3= Zhrf3:gsub('ئ','ئ ْٰ')
Zhrf3= Zhrf3:gsub('ء','ء')
Zhrf3= Zhrf3:gsub('ؤ','ؤ')
Zhrf3= Zhrf3:gsub('ر','رَ')
Zhrf3= Zhrf3:gsub('لا','لہا')
Zhrf3= Zhrf3:gsub('ى','ىْ')
Zhrf3= Zhrf3:gsub('ة','ة')
Zhrf3= Zhrf3:gsub('و','و')
Zhrf3= Zhrf3:gsub('ز','ز')
Zhrf3= Zhrf3:gsub('ظ','ظۗہٰٰ')
Zhrf3= Zhrf3:gsub('q','Ꝙ')
Zhrf3= Zhrf3:gsub('Q','Ꝙ')
Zhrf3= Zhrf3:gsub('w','ᾧ')
Zhrf3= Zhrf3:gsub('W','ᾧ')
Zhrf3= Zhrf3:gsub('e','ἔ')
Zhrf3= Zhrf3:gsub('E','ἔ')
Zhrf3= Zhrf3:gsub('r','ʀ')
Zhrf3= Zhrf3:gsub('R','ʀ')
Zhrf3= Zhrf3:gsub('t','ҭ')
Zhrf3= Zhrf3:gsub('T','ҭ')
Zhrf3= Zhrf3:gsub('y','ẏ')
Zhrf3= Zhrf3:gsub('Y','ẏ')
Zhrf3= Zhrf3:gsub('u','ὗ')
Zhrf3= Zhrf3:gsub('i','ἷ')
Zhrf3= Zhrf3:gsub('o','ὄ')
Zhrf3= Zhrf3:gsub('p','ῥ')
Zhrf3= Zhrf3:gsub('a','ᾄ')
Zhrf3= Zhrf3:gsub('s','ṩ')
Zhrf3= Zhrf3:gsub('d','ḋ')
Zhrf3= Zhrf3:gsub('f','ғ')
Zhrf3= Zhrf3:gsub('g','ʛ')
Zhrf3= Zhrf3:gsub('h','ђ')
Zhrf3= Zhrf3:gsub('j','ʝ')
Zhrf3= Zhrf3:gsub('k','ќ')
Zhrf3= Zhrf3:gsub('U','ὗ')
Zhrf3= Zhrf3:gsub('I','ἷ')
Zhrf3= Zhrf3:gsub('O','ὄ')
Zhrf3= Zhrf3:gsub('P','ῥ')
Zhrf3= Zhrf3:gsub('A','ᾄ')
Zhrf3= Zhrf3:gsub('S','ṩ')
Zhrf3= Zhrf3:gsub('D','ḋ')
Zhrf3= Zhrf3:gsub('F','ғ')
Zhrf3= Zhrf3:gsub('G','ʛ')
Zhrf3= Zhrf3:gsub('H','ђ')
Zhrf3= Zhrf3:gsub('J','ʝ')
Zhrf3= Zhrf3:gsub('K','ќ')
Zhrf3= Zhrf3:gsub('L','ł')
Zhrf3= Zhrf3:gsub('l','ł')
Zhrf3= Zhrf3:gsub('z','ẓ')
Zhrf3= Zhrf3:gsub('Z','ẓ')
Zhrf3= Zhrf3:gsub('x','ẋ')
Zhrf3= Zhrf3:gsub('X','ẋ')
Zhrf3= Zhrf3:gsub('c','ƈ')
Zhrf3= Zhrf3:gsub('C','ƈ')
Zhrf3= Zhrf3:gsub('v','v')
Zhrf3= Zhrf3:gsub('V','v')
Zhrf3= Zhrf3:gsub('b','в')
Zhrf3= Zhrf3:gsub('B','в')
Zhrf3= Zhrf3:gsub('n','ᾗ')
Zhrf3= Zhrf3:gsub('N','ᾗ')
Zhrf3= Zhrf3:gsub('m','м')
Zhrf3= Zhrf3:gsub('M','м')


local Zhrf4= Text:gsub('ض','ضۜہٰٰ')
Zhrf4= Zhrf4:gsub('ص','ضۜہٰٰ')
Zhrf4= Zhrf4:gsub('ث','ثہٰٰ')
Zhrf4= Zhrf4:gsub('ق','قྀ̲ہٰٰ')
Zhrf4= Zhrf4:gsub('ف','ف͒ہٰٰ')
Zhrf4= Zhrf4:gsub('غ','غہٰٰ')
Zhrf4= Zhrf4:gsub('ع','عہٰٰ')
Zhrf4= Zhrf4:gsub('ه','هٰہٰٖ')
Zhrf4= Zhrf4:gsub('خ','خٰ̐ہ ')
Zhrf4= Zhrf4:gsub('ح','حہٰٰ')
Zhrf4= Zhrf4:gsub('ج','جـٰ̲ـہْۧ')
Zhrf4= Zhrf4:gsub('د','دٰ')
Zhrf4= Zhrf4:gsub('ذ','ذِٰ')
Zhrf4= Zhrf4:gsub('ش','شِٰہٰٰ')
Zhrf4= Zhrf4:gsub('س','سٰٓ')
Zhrf4= Zhrf4:gsub('ي','يِٰہ')
Zhrf4= Zhrf4:gsub('ب','بّہ')
Zhrf4= Zhrf4:gsub('ل','لـٰ̲ـہ')
Zhrf4= Zhrf4:gsub('ا','آ')
Zhrf4= Zhrf4:gsub('ت','تَہَٰ')
Zhrf4= Zhrf4:gsub('ن','نَِہ')
Zhrf4= Zhrf4:gsub('م','مٰ̲ہ')
Zhrf4= Zhrf4:gsub('ك','ڪٰྀہٰٰ')
Zhrf4= Zhrf4:gsub('ط','طۨہٰٰ')
Zhrf4= Zhrf4:gsub('ئ','ئ ْٰ')
Zhrf4= Zhrf4:gsub('ء','ء')
Zhrf4= Zhrf4:gsub('ؤ','ؤ')
Zhrf4= Zhrf4:gsub('ر','رَ')
Zhrf4= Zhrf4:gsub('لا','لہا')
Zhrf4= Zhrf4:gsub('ى','ىْ')
Zhrf4= Zhrf4:gsub('ة','ة')
Zhrf4= Zhrf4:gsub('و','وِٰ')
Zhrf4= Zhrf4:gsub('ز','زَٰ')
Zhrf4= Zhrf4:gsub('ظ','ظۗہٰٰ')
Zhrf4= Zhrf4:gsub('q','ℚ')
Zhrf4= Zhrf4:gsub('Q','ℚ')
Zhrf4= Zhrf4:gsub('w','𝕎')
Zhrf4= Zhrf4:gsub('W','𝕎')
Zhrf4= Zhrf4:gsub('e','𝔼')
Zhrf4= Zhrf4:gsub('E','𝔼')
Zhrf4= Zhrf4:gsub('r','ℝ')
Zhrf4= Zhrf4:gsub('R','ℝ')
Zhrf4= Zhrf4:gsub('t','𝕋')
Zhrf4= Zhrf4:gsub('T','𝕋')
Zhrf4= Zhrf4:gsub('y','𝕐')
Zhrf4= Zhrf4:gsub('Y','𝕐')
Zhrf4= Zhrf4:gsub('u','𝕌')
Zhrf4= Zhrf4:gsub('i','𝕀')
Zhrf4= Zhrf4:gsub('o','𝕆')
Zhrf4= Zhrf4:gsub('p','ℙ')
Zhrf4= Zhrf4:gsub('a','𝔸')
Zhrf4= Zhrf4:gsub('s','𝕊')
Zhrf4= Zhrf4:gsub('d','𝔻')
Zhrf4= Zhrf4:gsub('f','𝔽')
Zhrf4= Zhrf4:gsub('g','𝔾')
Zhrf4= Zhrf4:gsub('h','ℍ')
Zhrf4= Zhrf4:gsub('j','𝕁')
Zhrf4= Zhrf4:gsub('k','𝕂')
Zhrf4= Zhrf4:gsub('U','𝕌')
Zhrf4= Zhrf4:gsub('I','𝕀')
Zhrf4= Zhrf4:gsub('O','𝕆')
Zhrf4= Zhrf4:gsub('P','ℙ')
Zhrf4= Zhrf4:gsub('A','𝔸')
Zhrf4= Zhrf4:gsub('S','𝕊')
Zhrf4= Zhrf4:gsub('D','𝔻')
Zhrf4= Zhrf4:gsub('F','𝔽')
Zhrf4= Zhrf4:gsub('G','𝔾')
Zhrf4= Zhrf4:gsub('H','ℍ')
Zhrf4= Zhrf4:gsub('J','𝕁')
Zhrf4= Zhrf4:gsub('K','𝕂')
Zhrf4= Zhrf4:gsub('L','𝕃')
Zhrf4= Zhrf4:gsub('l','𝕃')
Zhrf4= Zhrf4:gsub('z','ℤ')
Zhrf4= Zhrf4:gsub('Z','ℤ')
Zhrf4= Zhrf4:gsub('x','𝕏')
Zhrf4= Zhrf4:gsub('X','𝕏')
Zhrf4= Zhrf4:gsub('c','ℂ')
Zhrf4= Zhrf4:gsub('C','ℂ')
Zhrf4= Zhrf4:gsub('v','𝕍')
Zhrf4= Zhrf4:gsub('V','𝕍')
Zhrf4= Zhrf4:gsub('b','𝔹')
Zhrf4= Zhrf4:gsub('B','𝔹')
Zhrf4= Zhrf4:gsub('n','ℕ')
Zhrf4= Zhrf4:gsub('N','ℕ')
Zhrf4= Zhrf4:gsub('m','𝕄')
Zhrf4= Zhrf4:gsub('M','𝕄')



local Zhrf5= Text:gsub('ض','ضَ')
Zhrf5= Zhrf5:gsub('ص','صً')
Zhrf5= Zhrf5:gsub('ث','ثَ')
Zhrf5= Zhrf5:gsub('ق','قُ')
Zhrf5= Zhrf5:gsub('ف','فّ')
Zhrf5= Zhrf5:gsub('غ','غِ')
Zhrf5= Zhrf5:gsub('ع','عُ')
Zhrf5= Zhrf5:gsub('ه','ﮭ')
Zhrf5= Zhrf5:gsub('خ','خِ')
Zhrf5= Zhrf5:gsub('ح','حٌ')
Zhrf5= Zhrf5:gsub('ج','جُ')
Zhrf5= Zhrf5:gsub('د','دِ')
Zhrf5= Zhrf5:gsub('ذ','ذَ')
Zhrf5= Zhrf5:gsub('ش','شِ')
Zhrf5= Zhrf5:gsub('س','سً')
Zhrf5= Zhrf5:gsub('ي','يْ')
Zhrf5= Zhrf5:gsub('ب','بّ')
Zhrf5= Zhrf5:gsub('ل','لَ')
Zhrf5= Zhrf5:gsub('ا','أُ')
Zhrf5= Zhrf5:gsub('ت','تٌ')
Zhrf5= Zhrf5:gsub('ن','نً')
Zhrf5= Zhrf5:gsub('م','مِ')
Zhrf5= Zhrf5:gsub('ك','ڳّ')
Zhrf5= Zhrf5:gsub('ط','طٌ')
Zhrf5= Zhrf5:gsub('ئ','ئ')
Zhrf5= Zhrf5:gsub('ء','ء')
Zhrf5= Zhrf5:gsub('ؤ','ؤ')
Zhrf5= Zhrf5:gsub('ر','رٌ')
Zhrf5= Zhrf5:gsub('لا','لٌأً')
Zhrf5= Zhrf5:gsub('ى','ى')
Zhrf5= Zhrf5:gsub('ة','ةَ')
Zhrf5= Zhrf5:gsub('و','وِ')
Zhrf5= Zhrf5:gsub('ز','زُ')
Zhrf5= Zhrf5:gsub('ظ','ظ')
Zhrf5= Zhrf5:gsub('q','ƍ')
Zhrf5= Zhrf5:gsub('Q','ƍ')
Zhrf5= Zhrf5:gsub('w','w')
Zhrf5= Zhrf5:gsub('W','w')
Zhrf5= Zhrf5:gsub('e','È')
Zhrf5= Zhrf5:gsub('E','È')
Zhrf5= Zhrf5:gsub('r','r')
Zhrf5= Zhrf5:gsub('R','r')
Zhrf5= Zhrf5:gsub('t','⊥')
Zhrf5= Zhrf5:gsub('T','⊥')
Zhrf5= Zhrf5:gsub('y','ý')
Zhrf5= Zhrf5:gsub('Y','ý')
Zhrf5= Zhrf5:gsub('u','µ')
Zhrf5= Zhrf5:gsub('U','µ')
Zhrf5= Zhrf5:gsub('i','Î')
Zhrf5= Zhrf5:gsub('I','Î')
Zhrf5= Zhrf5:gsub('o','◊')
Zhrf5= Zhrf5:gsub('O','◊')
Zhrf5= Zhrf5:gsub('p','Ƿ')
Zhrf5= Zhrf5:gsub('P','Ƿ')
Zhrf5= Zhrf5:gsub('a','ª')
Zhrf5= Zhrf5:gsub('A','ª')
Zhrf5= Zhrf5:gsub('s','S')
Zhrf5= Zhrf5:gsub('S','S')
Zhrf5= Zhrf5:gsub('d','Þ')
Zhrf5= Zhrf5:gsub('D','Þ')
Zhrf5= Zhrf5:gsub('f','F')
Zhrf5= Zhrf5:gsub('F','F')
Zhrf5= Zhrf5:gsub('g','૬')
Zhrf5= Zhrf5:gsub('G','૬')
Zhrf5= Zhrf5:gsub('h','ɧ')
Zhrf5= Zhrf5:gsub('H','ɧ')
Zhrf5= Zhrf5:gsub('j','j')
Zhrf5= Zhrf5:gsub('J','j')
Zhrf5= Zhrf5:gsub('L','Ļ')
Zhrf5= Zhrf5:gsub('l','Ļ')
Zhrf5= Zhrf5:gsub('z','z')
Zhrf5= Zhrf5:gsub('Z','z')
Zhrf5= Zhrf5:gsub('x','×')
Zhrf5= Zhrf5:gsub('X','×')
Zhrf5= Zhrf5:gsub('c','¢')
Zhrf5= Zhrf5:gsub('C','¢')
Zhrf5= Zhrf5:gsub('v','√')
Zhrf5= Zhrf5:gsub('V','√')
Zhrf5= Zhrf5:gsub('b','b')
Zhrf5= Zhrf5:gsub('B','b')
Zhrf5= Zhrf5:gsub('n','η')
Zhrf5= Zhrf5:gsub('N','η')
Zhrf5= Zhrf5:gsub('m','м')
Zhrf5= Zhrf5:gsub('M','м')



local Zhrf6= Text:gsub('ض','ﺿ̭͠')
Zhrf6= Zhrf6:gsub('ص','ﺻ͡')
Zhrf6= Zhrf6:gsub('ث','ﺜ̲')
Zhrf6= Zhrf6:gsub('ق','ﭰ')
Zhrf6= Zhrf6:gsub('ف','ﻓ̲')
Zhrf6= Zhrf6:gsub('غ','ﻏ̲')
Zhrf6= Zhrf6:gsub('ع','ﻌ̲')
Zhrf6= Zhrf6:gsub('ه','ﮬ̲̌')
Zhrf6= Zhrf6:gsub('خ','خٌ')
Zhrf6= Zhrf6:gsub('ح','ﺣ̅')
Zhrf6= Zhrf6:gsub('ج','جُ')
Zhrf6= Zhrf6:gsub('د','ډ̝')
Zhrf6= Zhrf6:gsub('ذ','ذً')
Zhrf6= Zhrf6:gsub('ش','ﺷ̲')
Zhrf6= Zhrf6:gsub('س','ﺳ̉')
Zhrf6= Zhrf6:gsub('ي','ﯾ̃̐')
Zhrf6= Zhrf6:gsub('ب','ﺑ̲')
Zhrf6= Zhrf6:gsub('ل','ا̄ﻟ')
Zhrf6= Zhrf6:gsub('ا','ﺈ̃')
Zhrf6= Zhrf6:gsub('ت','ټُ')
Zhrf6= Zhrf6:gsub('ن','ﻧ̲')
Zhrf6= Zhrf6:gsub('م','ﻣ̲̉')
Zhrf6= Zhrf6:gsub('ك','گ')
Zhrf6= Zhrf6:gsub('ط','ﻁ̲')
Zhrf6= Zhrf6:gsub('ئ',' ْٰئ')
Zhrf6= Zhrf6:gsub('ء','ء')
Zhrf6= Zhrf6:gsub('ؤ','ؤ')
Zhrf6= Zhrf6:gsub('ر','ہڕ')
Zhrf6= Zhrf6:gsub('لا','ﻟ̲ﺂ̲')
Zhrf6= Zhrf6:gsub('ى','ى')
Zhrf6= Zhrf6:gsub('ة','ة')
Zhrf6= Zhrf6:gsub('و','ۇۈۉ')
Zhrf6= Zhrf6:gsub('ز','زُ')
Zhrf6= Zhrf6:gsub('ظ','ﻇ̲')
Zhrf6= Zhrf6:gsub('q','Ⴓ')
Zhrf6= Zhrf6:gsub('Q','Ⴓ')
Zhrf6= Zhrf6:gsub('w','Ш')
Zhrf6= Zhrf6:gsub('W','Ш')
Zhrf6= Zhrf6:gsub('e','Σ')
Zhrf6= Zhrf6:gsub('E','Σ')
Zhrf6= Zhrf6:gsub('r','Γ')
Zhrf6= Zhrf6:gsub('R','Γ')
Zhrf6= Zhrf6:gsub('t','Ƭ')
Zhrf6= Zhrf6:gsub('T','Ƭ')
Zhrf6= Zhrf6:gsub('y','Ψ')
Zhrf6= Zhrf6:gsub('Y','Ψ')
Zhrf6= Zhrf6:gsub('u','Ʊ')
Zhrf6= Zhrf6:gsub('U','Ʊ')
Zhrf6= Zhrf6:gsub('i','I')
Zhrf6= Zhrf6:gsub('I','I')
Zhrf6= Zhrf6:gsub('o','Θ')
Zhrf6= Zhrf6:gsub('O','Θ')
Zhrf6= Zhrf6:gsub('p','Ƥ')
Zhrf6= Zhrf6:gsub('P','Ƥ')
Zhrf6= Zhrf6:gsub('a','Δ')
Zhrf6= Zhrf6:gsub('A','Δ')
Zhrf6= Zhrf6:gsub('s','Ѕ')
Zhrf6= Zhrf6:gsub('S','Ѕ')
Zhrf6= Zhrf6:gsub('d','D')
Zhrf6= Zhrf6:gsub('D','D')
Zhrf6= Zhrf6:gsub('f','F')
Zhrf6= Zhrf6:gsub('F','F')
Zhrf6= Zhrf6:gsub('g','G')
Zhrf6= Zhrf6:gsub('G','G')
Zhrf6= Zhrf6:gsub('h','H')
Zhrf6= Zhrf6:gsub('H','H')
Zhrf6= Zhrf6:gsub('j','J')
Zhrf6= Zhrf6:gsub('J','J')
Zhrf6= Zhrf6:gsub('L','L')
Zhrf6= Zhrf6:gsub('l','L')
Zhrf6= Zhrf6:gsub('z','Z')
Zhrf6= Zhrf6:gsub('Z','Z')
Zhrf6= Zhrf6:gsub('x','Ж')
Zhrf6= Zhrf6:gsub('X','Ж')
Zhrf6= Zhrf6:gsub('c','C')
Zhrf6= Zhrf6:gsub('C','C')
Zhrf6= Zhrf6:gsub('v','Ʋ')
Zhrf6= Zhrf6:gsub('V','Ʋ')
Zhrf6= Zhrf6:gsub('b','Ɓ')
Zhrf6= Zhrf6:gsub('B','Ɓ')
Zhrf6= Zhrf6:gsub('n','∏')
Zhrf6= Zhrf6:gsub('N','∏')
Zhrf6= Zhrf6:gsub('m','Μ')
Zhrf6= Zhrf6:gsub('M','Μ')



local Zhrf7= Text:gsub('ض','ﺿ')
Zhrf7= Zhrf7:gsub('ص','ﺻ')
Zhrf7= Zhrf7:gsub('ث','ﭥ')
Zhrf7= Zhrf7:gsub('ق','ﻗ̮ـ̃')
Zhrf7= Zhrf7:gsub('ف','ﭬ')
Zhrf7= Zhrf7:gsub('غ','ﻏ̣̐')
Zhrf7= Zhrf7:gsub('ع','ﻋ')
Zhrf7= Zhrf7:gsub('ه','ھَہّ')
Zhrf7= Zhrf7:gsub('خ','ﺧ')
Zhrf7= Zhrf7:gsub('ح','פ')
Zhrf7= Zhrf7:gsub('ج','ﭴ')
Zhrf7= Zhrf7:gsub('د','ﮃ')
Zhrf7= Zhrf7:gsub('ذ','ذ')
Zhrf7= Zhrf7:gsub('ش','ﺷ')
Zhrf7= Zhrf7:gsub('س','ﺳ')
Zhrf7= Zhrf7:gsub('ي','ﯾ')
Zhrf7= Zhrf7:gsub('ب','ﺑ')
Zhrf7= Zhrf7:gsub('ل','ﻟ')
Zhrf7= Zhrf7:gsub('ا','ﺂ')
Zhrf7= Zhrf7:gsub('ت','ﭠ')
Zhrf7= Zhrf7:gsub('ن','ﻧ')
Zhrf7= Zhrf7:gsub('م','ﻣ̝̚')
Zhrf7= Zhrf7:gsub('ك','گـ')
Zhrf7= Zhrf7:gsub('ط','ﻁْ')
Zhrf7= Zhrf7:gsub('ئ','ٰئـ')
Zhrf7= Zhrf7:gsub('ء','ء')
Zhrf7= Zhrf7:gsub('ؤ','ﯗ')
Zhrf7= Zhrf7:gsub('ر','ړُ')
Zhrf7= Zhrf7:gsub('لا','ﻟآ')
Zhrf7= Zhrf7:gsub('ى','ـﮯ')
Zhrf7= Zhrf7:gsub('ة','ة')
Zhrf7= Zhrf7:gsub('و','ۆ')
Zhrf7= Zhrf7:gsub('ز','ژ')
Zhrf7= Zhrf7:gsub('ظ','ﻅ')
Zhrf7= Zhrf7:gsub('q','๑')
Zhrf7= Zhrf7:gsub('Q','๑')
Zhrf7= Zhrf7:gsub('w','ຟ')
Zhrf7= Zhrf7:gsub('W','ຟ')
Zhrf7= Zhrf7:gsub('e','ē')
Zhrf7= Zhrf7:gsub('E','ē')
Zhrf7= Zhrf7:gsub('r','r')
Zhrf7= Zhrf7:gsub('R','r')
Zhrf7= Zhrf7:gsub('t','t')
Zhrf7= Zhrf7:gsub('T','t')
Zhrf7= Zhrf7:gsub('y','ฯ')
Zhrf7= Zhrf7:gsub('Y','ฯ')
Zhrf7= Zhrf7:gsub('u','น')
Zhrf7= Zhrf7:gsub('U','น')
Zhrf7= Zhrf7:gsub('i','i')
Zhrf7= Zhrf7:gsub('I','i')
Zhrf7= Zhrf7:gsub('o','໐')
Zhrf7= Zhrf7:gsub('O','໐')
Zhrf7= Zhrf7:gsub('p','p')
Zhrf7= Zhrf7:gsub('P','p')
Zhrf7= Zhrf7:gsub('a','ค')
Zhrf7= Zhrf7:gsub('A','ค')
Zhrf7= Zhrf7:gsub('s','Ş')
Zhrf7= Zhrf7:gsub('S','Ş')
Zhrf7= Zhrf7:gsub('d','໓')
Zhrf7= Zhrf7:gsub('D','໓')
Zhrf7= Zhrf7:gsub('f','f')
Zhrf7= Zhrf7:gsub('F','f')
Zhrf7= Zhrf7:gsub('g','ງ')
Zhrf7= Zhrf7:gsub('G','ງ')
Zhrf7= Zhrf7:gsub('h','h')
Zhrf7= Zhrf7:gsub('H','h')
Zhrf7= Zhrf7:gsub('j','ว')
Zhrf7= Zhrf7:gsub('J','ว')
Zhrf7= Zhrf7:gsub('k','k')
Zhrf7= Zhrf7:gsub('K','k')
Zhrf7= Zhrf7:gsub('L','l')
Zhrf7= Zhrf7:gsub('l','l')
Zhrf7= Zhrf7:gsub('z','ຊ')
Zhrf7= Zhrf7:gsub('Z','ຊ')
Zhrf7= Zhrf7:gsub('x','x')
Zhrf7= Zhrf7:gsub('X','x')
Zhrf7= Zhrf7:gsub('c','¢')
Zhrf7= Zhrf7:gsub('C','¢')
Zhrf7= Zhrf7:gsub('v','ง')
Zhrf7= Zhrf7:gsub('V','ง')
Zhrf7= Zhrf7:gsub('b','๖')
Zhrf7= Zhrf7:gsub('B','๖')
Zhrf7= Zhrf7:gsub('n','ຖ')
Zhrf7= Zhrf7:gsub('N','ຖ')
Zhrf7= Zhrf7:gsub('m','๓')
Zhrf7= Zhrf7:gsub('M','๓')



local Zhrf8= Text:gsub('ض','ض');
Zhrf8= Zhrf8:gsub('ص','صہٰ')
Zhrf8= Zhrf8:gsub('ث','ثہٰـ')
Zhrf8= Zhrf8:gsub('ق','قہٰ')
Zhrf8= Zhrf8:gsub('ف','فہٰ')
Zhrf8= Zhrf8:gsub('غ','غـْ')
Zhrf8= Zhrf8:gsub('ع','ع')
Zhrf8= Zhrf8:gsub('ه','هٰہٰٖ')
Zhrf8= Zhrf8:gsub('خ','خخَـ')
Zhrf8= Zhrf8:gsub('ح','حہٰ')
Zhrf8= Zhrf8:gsub('ج','ججہٰ')
Zhrf8= Zhrf8:gsub('د','دَ')
Zhrf8= Zhrf8:gsub('ذ','ذّ')
Zhrf8= Zhrf8:gsub('ش','ششہٰ')
Zhrf8= Zhrf8:gsub('س','سہٰ')
Zhrf8= Zhrf8:gsub('ي','يٰ')
Zhrf8= Zhrf8:gsub('ب','بٰٰ')
Zhrf8= Zhrf8:gsub('ل','لہٰ')
Zhrf8= Zhrf8:gsub('ا','آ')
Zhrf8= Zhrf8:gsub('ت','تہٰ')
Zhrf8= Zhrf8:gsub('ن','نہٰ')
Zhrf8= Zhrf8:gsub('م','مہٰ')
Zhrf8= Zhrf8:gsub('ك','ككہٰ')
Zhrf8= Zhrf8:gsub('ط','طہٰ')
Zhrf8= Zhrf8:gsub('ئ',' ْئٰ')
Zhrf8= Zhrf8:gsub('ء','ء')
Zhrf8= Zhrf8:gsub('ؤ','ؤؤَ')
Zhrf8= Zhrf8:gsub('ر','رَ')
Zhrf8= Zhrf8:gsub('لا','لہٰا')
Zhrf8= Zhrf8:gsub('ى','ىہٰ')
Zhrf8= Zhrf8:gsub('ة','ة')
Zhrf8= Zhrf8:gsub('و','ہٰو')
Zhrf8= Zhrf8:gsub('ز','ز')
Zhrf8= Zhrf8:gsub('ظ','ظہٰ')
Zhrf8= Zhrf8:gsub('q','զ')
Zhrf8= Zhrf8:gsub('Q','զ')
Zhrf8= Zhrf8:gsub('w','ա')
Zhrf8= Zhrf8:gsub('W','ա')
Zhrf8= Zhrf8:gsub('e','ɛ')
Zhrf8= Zhrf8:gsub('E','ɛ')
Zhrf8= Zhrf8:gsub('r','ʀ')
Zhrf8= Zhrf8:gsub('R','ʀ')
Zhrf8= Zhrf8:gsub('t','ȶ')
Zhrf8= Zhrf8:gsub('T','ȶ')
Zhrf8= Zhrf8:gsub('y','ʏ')
Zhrf8= Zhrf8:gsub('Y','ʏ')
Zhrf8= Zhrf8:gsub('u','ʊ')
Zhrf8= Zhrf8:gsub('U','ʊ')
Zhrf8= Zhrf8:gsub('i','ɨ')
Zhrf8= Zhrf8:gsub('I','ɨ')
Zhrf8= Zhrf8:gsub('o','օ')
Zhrf8= Zhrf8:gsub('O','օ')
Zhrf8= Zhrf8:gsub('p','ք')
Zhrf8= Zhrf8:gsub('P','ք')
Zhrf8= Zhrf8:gsub('a','ǟ')
Zhrf8= Zhrf8:gsub('A','ǟ')
Zhrf8= Zhrf8:gsub('s','ֆ')
Zhrf8= Zhrf8:gsub('S','ֆ')
Zhrf8= Zhrf8:gsub('d','ɖ')
Zhrf8= Zhrf8:gsub('D','ɖ')
Zhrf8= Zhrf8:gsub('f','ʄ')
Zhrf8= Zhrf8:gsub('F','ʄ')
Zhrf8= Zhrf8:gsub('g','ɢ')
Zhrf8= Zhrf8:gsub('G','ɢ')
Zhrf8= Zhrf8:gsub('h','ɦ')
Zhrf8= Zhrf8:gsub('H','ɦ')
Zhrf8= Zhrf8:gsub('j','ʝ')
Zhrf8= Zhrf8:gsub('J','ʝ')
Zhrf8= Zhrf8:gsub('k','ӄ')
Zhrf8= Zhrf8:gsub('K','ӄ')
Zhrf8= Zhrf8:gsub('L','ʟ')
Zhrf8= Zhrf8:gsub('l','ʟ')
Zhrf8= Zhrf8:gsub('z','ʐ')
Zhrf8= Zhrf8:gsub('Z','ʐ')
Zhrf8= Zhrf8:gsub('x','Ӽ')
Zhrf8= Zhrf8:gsub('X','Ӽ')
Zhrf8= Zhrf8:gsub('c','ƈ')
Zhrf8= Zhrf8:gsub('C','ƈ')
Zhrf8= Zhrf8:gsub('v','ʋ')
Zhrf8= Zhrf8:gsub('V','ʋ')
Zhrf8= Zhrf8:gsub('b','ɮ')
Zhrf8= Zhrf8:gsub('B','ɮ')
Zhrf8= Zhrf8:gsub('n','ռ')
Zhrf8= Zhrf8:gsub('N','ռ')
Zhrf8= Zhrf8:gsub('m','ʍ')
Zhrf8= Zhrf8:gsub('M','ʍ')



local Zhrf9= Text:gsub('ض','ض')
Zhrf9= Zhrf9:gsub('ص','ص')
Zhrf9= Zhrf9:gsub('ث','ث')
Zhrf9= Zhrf9:gsub('ق','قٌ')
Zhrf9= Zhrf9:gsub('ف','فُ')
Zhrf9= Zhrf9:gsub('غ','غ')
Zhrf9= Zhrf9:gsub('ع','عٍ')
Zhrf9= Zhrf9:gsub('ه','هـ')
Zhrf9= Zhrf9:gsub('خ','خـ')
Zhrf9= Zhrf9:gsub('ح','حٍ')
Zhrf9= Zhrf9:gsub('ج','جٍ')
Zhrf9= Zhrf9:gsub('د','دِ')
Zhrf9= Zhrf9:gsub('ذ','ذَ')
Zhrf9= Zhrf9:gsub('ش','شُ')
Zhrf9= Zhrf9:gsub('س','س')
Zhrf9= Zhrf9:gsub('ي','ي')
Zhrf9= Zhrf9:gsub('ب','بَ')
Zhrf9= Zhrf9:gsub('ل','لُِ')
Zhrf9= Zhrf9:gsub('ا','آ')
Zhrf9= Zhrf9:gsub('ت','ت')
Zhrf9= Zhrf9:gsub('ن','ن')
Zhrf9= Zhrf9:gsub('م','م')
Zhrf9= Zhrf9:gsub('ك','ڪ')
Zhrf9= Zhrf9:gsub('ط','طُ')
Zhrf9= Zhrf9:gsub('ئ','ئ ْٰ')
Zhrf9= Zhrf9:gsub('ء','ء')
Zhrf9= Zhrf9:gsub('ؤ','ؤ')
Zhrf9= Zhrf9:gsub('ر','ر')
Zhrf9= Zhrf9:gsub('لا','لُِآ')
Zhrf9= Zhrf9:gsub('ى','ىْ')
Zhrf9= Zhrf9:gsub('ة','ة')
Zhrf9= Zhrf9:gsub('و','وو')
Zhrf9= Zhrf9:gsub('ز','ز')
Zhrf9= Zhrf9:gsub('ظ','ظهُ')
Zhrf9= Zhrf9:gsub('q','Q')
Zhrf9= Zhrf9:gsub('Q','Q')
Zhrf9= Zhrf9:gsub('w','Ẃ')
Zhrf9= Zhrf9:gsub('W','Ẃ')
Zhrf9= Zhrf9:gsub('e','Ἕ')
Zhrf9= Zhrf9:gsub('E','Ἕ')
Zhrf9= Zhrf9:gsub('r','Ȓ')
Zhrf9= Zhrf9:gsub('R','Ȓ')
Zhrf9= Zhrf9:gsub('t','Ҭ')
Zhrf9= Zhrf9:gsub('T','Ҭ')
Zhrf9= Zhrf9:gsub('y','Ὓ')
Zhrf9= Zhrf9:gsub('Y','Ὓ')
Zhrf9= Zhrf9:gsub('u','Ȗ')
Zhrf9= Zhrf9:gsub('U','Ȗ')
Zhrf9= Zhrf9:gsub('i','Ἷ')
Zhrf9= Zhrf9:gsub('I','Ἷ')
Zhrf9= Zhrf9:gsub('o','Ὃ')
Zhrf9= Zhrf9:gsub('O','Ὃ')
Zhrf9= Zhrf9:gsub('p','Ƥ')
Zhrf9= Zhrf9:gsub('P','Ƥ')
Zhrf9= Zhrf9:gsub('a','ᾋ')
Zhrf9= Zhrf9:gsub('A','ᾋ')
Zhrf9= Zhrf9:gsub('s','Ṩ')
Zhrf9= Zhrf9:gsub('S','Ṩ')
Zhrf9= Zhrf9:gsub('d','Ɖ')
Zhrf9= Zhrf9:gsub('D','Ɖ')
Zhrf9= Zhrf9:gsub('f','Ғ')
Zhrf9= Zhrf9:gsub('F','Ғ')
Zhrf9= Zhrf9:gsub('g','Ɠ')
Zhrf9= Zhrf9:gsub('G','Ɠ')
Zhrf9= Zhrf9:gsub('h','Ἤ')
Zhrf9= Zhrf9:gsub('H','Ἤ')
Zhrf9= Zhrf9:gsub('j','Ј')
Zhrf9= Zhrf9:gsub('J','Ј')
Zhrf9= Zhrf9:gsub('k','Ḱ')
Zhrf9= Zhrf9:gsub('K','Ḱ')
Zhrf9= Zhrf9:gsub('L','Ŀ')
Zhrf9= Zhrf9:gsub('l','Ŀ')
Zhrf9= Zhrf9:gsub('z','Ẕ')
Zhrf9= Zhrf9:gsub('Z','Ẕ')
Zhrf9= Zhrf9:gsub('x','Ẋ')
Zhrf9= Zhrf9:gsub('X','Ẋ')
Zhrf9= Zhrf9:gsub('c','Ƈ')
Zhrf9= Zhrf9:gsub('C','Ƈ')
Zhrf9= Zhrf9:gsub('v','V')
Zhrf9= Zhrf9:gsub('V','V')
Zhrf9= Zhrf9:gsub('b','ϐ')
Zhrf9= Zhrf9:gsub('B','ϐ')
Zhrf9= Zhrf9:gsub('n','Ɲ')
Zhrf9= Zhrf9:gsub('N','Ɲ')
Zhrf9= Zhrf9:gsub('m','Ṃ')
Zhrf9= Zhrf9:gsub('M','Ṃ')


local Text_Zhrfa = "1- `"..Zhrf..EmojeS[math.random(#EmojeS)]
.."`\n2- `"..Zhrf2..EmojeS[math.random(#EmojeS)]
.."`\n3- `"..Zhrf3..EmojeS[math.random(#EmojeS)]
.."`\n4- `"..Zhrf4..EmojeS[math.random(#EmojeS)]
.."`\n5- `"..Zhrf5..EmojeS[math.random(#EmojeS)]
.."`\n6- `"..Zhrf6..EmojeS[math.random(#EmojeS)]
.."`\n7- `"..Zhrf7..EmojeS[math.random(#EmojeS)]
.."`\n8- `"..Zhrf8..Emoje[math.random(#Emoje)]
.."`\n9- `"..Zhrf9..Emoje[math.random(#Emoje)]
Text_Zhrfa = Text_Zhrfa.."`\n\n📑| اضغط ع الاسم ليتم النسخ \n✓"
sendMsg(msg.chat_id_,msg.id_,Text_Zhrfa)
return false
end
end

end



return {
Boss = {
"^(.*)$",
"^(زخرفه)$"
 },
 iBoss = Zhrfa,
 }
 
 
