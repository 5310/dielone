undum.game.id = "e9a7f89d-dbc4-4124-b053-8074ed422f58"
undum.game.version = "0.1"

undum.game.situations =


    intro:          new undum.SimpleSituation(
        """
        <p>
        The name’s Dixon Guy, but you didn’t ask me, did’ja? Can’t blame you. Nobody ever asks, not until it’s too late. So I’m savin’ you the trouble. I’m a <i>private investigator</i>, a Pea-Eye, mind the caps. If I’m not the only honest one in this rotten excuse of a city, then I’m certainly the cheapest. 
        </p>
        <p>
        Yet here I am locking up a door bearing my name that hasn’t been opened more than twice a day for a whole month now, sometimes even less. Makes you think that the city’s gone saint. But no, I know better than that. I know her far too well for that. She’s still a hotbed of every kind of vice you can imagine this side of the street, and still the coldest place I know, even though it’s August. And it’s time once again to <a href="streets">go out</a> into the woods. Brave the wilds. By myself, like I always am.
        </p>
        """
    )
  
  
    streets:        new undum.SimpleSituation(
        """
        <p>
        I put the overcoat over my shoulder and turn the knob to check. Don’t forget to wedge the ticket stub on the door-frame, all before headin’ downstairs. But truth to tell, I’d be welcome the first burglar for the company alone. The streets may look empty, but shadows stand under every other lamp-post, each with a story to tell...or write, as the case may be. But they don’t concern me anymore tonight. I’m off duty, a free man. No body’s payin’, anyway. 
        </p>
        <p>
        Where to next? Home? Nah, too late. Been too late for ages. It might be a bit early for Elroy’s all-night <a href="bar">juicer</a>. Then there’s the <a href="diner">diner</a>, or I can get some fresh smog at the <a href="park" class="tbw">park</a>. My choice; I’m a free man.
        </p>
        """
    )

    bar:            new undum.SimpleSituation(
        """
        <p>
        I make way to Elroy’s. Outside dim pink neon-lights blinked, cold from the day’s neglect. Inside the place smelled of day old smoke, booze, and burnt hopes; made me feel right at home. I sat down at my usual seat, which is left to the first one that’s empty or...whichever. Asked Elroy for my <a href="./juice" class='once'><i>juice</i></a>.
        </p>
        """,
        actions:
            "juice": """<p>A man is entitled his poison. Why compromise?</p>"""
        ,
        enter: (character, system, from) ->
            if character.qualities.time <= 2
                system.write(
                    """
                    <p>
                    Her bright, blood red lips had caught my sight when I came in. But when you’re in my line of work, you learn to not let your glances show. She hesitated for a full five minutes, or however long it took for Elroy to mix my drink. She said, in a voice that betrayed nothing but polite inq’ry, perhaps the slightest hint of desperation, “Is this seat taken?”
                    </p>
                    <p>
                    I didn’t <a href="barredlipsknow">know her</a>, <a href="barredlipsignore">not yet</a>.
                    </p>
                    """
                )
            else
                system.write(
                    """
                    <p>TBW</p>
                    """
                )
        ,
    )
    
    barredlipsknow:   new undum.SimpleSituation(
        """
        <p>
        Elroy’s place was a graveyard. Well, metaphorically, speaking. I didn’t let the irony show—or was it sarcasm—when I said, “sure doll, you can even have mine if you don’t like the rest.” She smiled, her nervousness hidden so well, and sat right besides me. “I’ll have a margarita,” she raised her voice to say then asked me, “it’s so <i>orange</i>, what are you drinking?”
        </p>
        <p>“<i>Juice</i>, sweetheart.”</p>
        <p>“I don’t know that one, what’s it made of?”
        <br/><span class='transient'>Do I tell her the <a href="./truth" class='once'>truth</a>. Can she take it? Or do I tell her the <a href="./really" class='once'><i>truth</i></a>, and then <a href="barredlipsask">move on</a>?</span></p>
        """,
        actions:
            "really": 
                """
                <p>
                “It’s juice, sweetheart. It’s made of fruit, the kind that grows on trees,” I said. Then I made a show inspecting the glass before adding, “this one’s probably orange. It’s hard to tell with Elroy.” She laughs. her tired eyes barely lighting up. She did not believe me. They never do.
                </p>
                """
            "truth": 
                """
                <p>“Tears and regrets, and one fresh egg.”</p>
                <p>She laughs. Her red lips barely moving. “Oh, I know that one.”
                <br/>They always say that.</p>
                """
        ,
    )
    barredlipsask:      new undum.SimpleSituation(
        """
        <p class=nonindent>I could tell that she couldn’t even ask herself, so I did it for her. “What can I help you with tonight, doll?”</p>
        <p>She might have blushed, but it was hard to tell with the lighting in the place. Those cheap yellow ones, for “the am-bee-ans,” Elroy had said. He rarely says anything, so I could not bear tell him how much they <a href="barredlipslamp">reminded</a> me of...eh, better not fall for that <a href="barredlipsman">trap</a> again.</p>
        """,
    )
    barredlipsman:      new undum.SimpleSituation(
        """
        <p>
        “Oh, I don’ know...maybe we can find out?” she said, squeezing my arms. I knew it then, she couldn’t say it. It held her back. I had to go on ahead for her. I dared, “are we going to ask your husband for ideas?” I was always known to be bold. Her eyes widened, and she controlled herself well. Her squeeze didn’t let when she lowered her gaze, cocked her pretty little blond head and asked, “oh we can’t do that, he’s dead.” So that’s the <a href="barredlipsmangame">game</a>. Well, it's one I can play blindfolded.
        </p>
        """
    )
    barredlipsmangame:  new undum.SimpleSituation(
        """
        <p>“Who killed him, was it you?”</p>
        <p>“What?” I had made her drop her grip. “Don’t joke like that. It was an accident,” she finished, running a finger through her locks. I wasn’t about to let it go, for her sake. “Did someone see? Or maybe...he got him before you could?”</p>
        <p>
        She was uncomfortable now. I was close. “I don’t know what you’re talking about...my husband, he had a--” Stories. I’ve already heard ‘em all. I pushed home, “you don’t have to tell me, doll. Not version two, anyway. I can read it clear, even in this tungsten candlelight.” “No...what version? I really don’t...it was the radio, it was game-night!” And he dropped it in the bath-tub, of course, oops, clumsy lovable hubby-o mine. An all time favorite, well, ever since electric transistor radios were <a href="barredlipsmanhim">invented</a>, anyway.
        </p>
        """
    )
    barredlipsmanhim:   new undum.SimpleSituation(
        """
        <p>
        One thing wasn’t clear though— I took her, not unkindly, by her shoulders. She had tears in her eyes, but not on her soft little cheeks. She didn’t try to resist. After a while, she just looked up at me and whispered, “I really am alone, you must believe me.” And that was it. He left her. “And now you want me to find him, is that it?” Even through her tears, reptilian or not, she made an effort to act confused. “Find who? I told you my husband is de--” “Not HIM, doll. The other guy, your Johny-come-lately. He left you, and now you want revenge is that it?” “What are you talking about?” She was a good enough actress, but I had seen all the acts. It still wasn’t addin’ up. Why? Why did he leave. What would be in it for him? And then as the first drop of tear broke free from her well-controlled eyes, the realization washed over me. He found out that he’d been played. Yes, played, like a fool, like a fiddle, like one of the older tricks in the book. And she’s after me now. She doesn’t want revenge, she wants another plaything. But she <a href="barredlipsmanend">won’t have</a> me that easy.
        </p>
        """
    )
    barredlipsmanend:   new undum.SimpleSituation(
        """
        <p>
        I stood up, and let her go. It was worth a watch how she managed to sway just the right amount before catching the bartop, and her follow-throughs were worth twice that. I did not need to look behind. Once burnt, no... I picked up my and bid goodnight, both to Elroy, who just grunted, and her. Forever. She will have to bear her cushy loads alone. And I know she’ll got the idea when she didn’t call for me. She just stood dare as I walked out of the bar, as if dazed. She might have even trembled a little, but that was probably just going through the motions. Those red lips <a href="barexit">will not</a> burn me.
        </p>
        """
    )
    barredlipslamp:     new undum.SimpleSituation(
        """
        <p>
        Ah damn you Elroy, damn you and your lighting. I couldn’t help myself as I turned to face her, compensating for her recoil from the sharp motion, held her hands and said, “you know what this light reminds me of, do you?” I hated myself for it, but she had it coming with her bright red lips and tired eyes. “Wh-what?” She was scared, but I could not stop now. I subconsciously drew her closer. I hated to do this to her, but she reminded me so much of <a href="barredlipslampher"><i>her</i></a>...
        </p>
        """
    )
    barredlipslampher:  new undum.SimpleSituation(
        """
        <p>
        “She sold groceries and poultry eggs by the light of the post at East End St. So...tungsten hot.”
        </p>
        <p>
        She stared at me in suspense, or perhaps awaiting the impending unhappy-ending. “I bought a dozen off her every week on Friday, and she smiled, her lips, lips as red as yours, barely moved.” She trembled now. “Her eyes were always tired, but never dim, ever. She was always there when I needed her...with her <i>goods</i>, and her pursed smile. Until...”
        </p>
        <p>“What...<a href="barredlipslampuntil">happened</a> to her?”
        </p>
        """
    )
    barredlipslampuntil:  new undum.SimpleSituation(
        """
        <p>“She died.”</p>
        <p>She, the girl I held in my hands, didn’t move, didn’t bat an eyelash, she didn’t even breath for seconds. But she had to ask, “<a href="barredlipslampdeath">how</a>?”</p>
        """
    )
    barredlipslampdeath:  new undum.SimpleSituation(
        """
        <p>I let her go. It had been enough. She didn’t need to hear all this. But she had a right to know now. I could not keep the truth from her.</p>
        <p>“She choked on a celery. It’s all her 90 year-old larynx could take, that poor poor bitch. She didn’t deserve to die. Not yet...”</p>
        <p>I could see the news shocked her. I had not expect her to be so easily rattled by the truth, she seemed to have seem at least this much, but she wriggled out of my fingers. She got up from her stool still tugging at her stole for comfort. She didn’t even look at her margarita before hastily adding, “I...I think I have to go, now,” and was gone. And all I was left with was a niggling nostalgia or lost dime-a-dozen. Nothing is fair in this town. Perhaps, it was time to <a href="barexit">move on</a>.</p>
        """
    )
    
    
    barredlipsignore:   new undum.SimpleSituation(
        """
        <p>
        And what’s the rush? As far as I know, I’m off-hours. Momma taught me to be polite to the ladies; so I gesture her, as vaguely as I want and sip my glass. What does she want? “Nice hat you’ve got there.” Smalltalk? This won’t go well, mark my words. “let me guess, cop?” Hah, I almost chuckle into my glass. Cop. Was it a hint. A Freudian-slip? I had finished my glass, no excuses for silence. I had to know, but not let it show. I asked her. “You know a <a href="barredlipsignorefunny">haberdasher</a>, doll?”
        </p>
        """,
    )
    barredlipsignorefunny:   new undum.SimpleSituation(
        """
        <p>
        She looked at me funny. And I ain’t no joker. She didn’t pick it up, or did she? She licked her lips, at me? She licked her lips and and delicately coughed at Elroy, looking for a drink.
        </p>
        <p>“Buy me one, big guy?”</p>
        <p>Do I? Can I <a href="barredlipsignoreafford">afford</a> it? Or maybe I’m <a href="barredlipsignorebroke">broke</a>?</p>
        """,
    )
    barredlipsignoreafford:   new undum.SimpleSituation(
        """
        <p>
        I wanted her to do the talking, so it was the best course of action to take. Elroy knew what she wanted, even though I’d never seen her before in my life -- and I’d remember those lips if I had. Made me more suspicious. She got a <a href="barredlipsignoredrink">margarita</a> for her troubles.
        </p>
        """,
    )
    barredlipsignorebroke:   new undum.SimpleSituation(
        """
        <p>
        “I try to keep my conscience clean, sweetheart. Your poison, your call.” I didn’t lie to her, “I am off the stuff myself...” She shrugged, and ordered a <a href="barredlipsignoredrink">margarita</a>.
        </p>
        """,
    )
    barredlipsignoredrink:   new undum.SimpleSituation(
        """
        <p>
        I’d fancied her for a bloody-mary, but she surprised me. Can’t hold that against a girl, but she had secrets, and she wanted mine. I hadn’t any proof, not this early in the night, but I just <i>knew</i>. Call it...a <i>Pee-Eye’s</i> intuition. She had to talk, her, and not me. I had to stoke her the right way.
        </p>
        <p>“What’s a pretty little thing like you doing at a place like this at this time of the night?”</p>
        <p>
        She laughs, her teeth white against those lips. So red. “Are you interrogating me, inspector,” she asked, and then sipped her glass. She seemed to want to stick to this line. <a href="barredlipsignorefine">Fine</a> by me. 
        </p>
        """,
    )
    barredlipsignorefine:   new undum.SimpleSituation(
        """
        <p>
        The trouble with my line of work, aside from the pay, or the lack ther’of, is that nobody likes you much. Not the coppers, and not the robbers. You’re stuck on the fence, for good...or maybe for worse. And both side of wants to poke you over to the other side’s yard. It’s easy with the goons, they don’t like you, they shoot you. The pros usually let off a warning, before shooting you anyway, but they’re easy, see?
        </p>
        <p>But the coppers, they got to pretend to be playing by the rules, and impersonating an officer...hah, nobody ever tries the new tricks, do they? And she’s already on to her, does she know? Is she that good? Or is she just a rookie. Do I keep pressing or should I-- “:cough:,” she coughs.
        </p>
        <p>“Thinking of work?”</p>
        <p>Was I? Wasn’t I <a href="barredlipsignoreoff">off-hours</a>? Or maybe I’m <a href="barredlipsignoreon">never off-hours</a>?</p>
        """,
    )
    barredlipsignoreoff:   new undum.SimpleSituation(
        """
        <p>
        “Not work, sweetheart. Just life. And how very futile it all is...I mean, what is it even for anyway? <a href="barredlipsignoreworry">Why</a> are we here?”
        </p>
        """,
    )
    barredlipsignoreon:   new undum.SimpleSituation(
        """
        <p>
        “Oh, this or that. But it ain’t cops and robbers like you seem to think it is, doll. My line of work is never that black and white. Heh, sometimes it’s <a href="barredlipsignoreworry">plaid</a>!”
        </p>
        """,
    )
    barredlipsignoreworry:   new undum.SimpleSituation(
        """
        <p>“Oh, don’t worry so much guy.” She said, a bit more tipsy than her glass would suggest. “C’mon, let’s think of something else...”</p>
        <p>
        Did she change her plans? Or maybe...yes a setup. I take her to my place, and she plants some sugar. Next morning, I get a friendly neighborhood checkup with shinin’ teeth and a badge. She’s savvy, this girl and her red lips. I let her down gent’ly.
        </p>
        <p>“If I wanted to be someplace else, would I be here at this hour, doll?”
        It seemed to work. Taken a bit off she seemed a bit sober for a moment, “why are <i>you</i> here at “this” hour, then?” Now, what could I tell her that won’t set her off again? The <a href="barredlipsignorecompany">company</a>? The drink, nah, I had finished mine. Or maybe the <a href="barredlipsignorequiet">peace-and-quiet</a>?
        </p>
        """,
    )
    barredlipsignorecompany:   new undum.SimpleSituation(
        """
        <p>“The company, doll.”</p>
        <p>
        A sharp businesslike click, she sets her glass down. And then she looks at me funny again. “Whose company?” She tone had spotlights aimed straight at your face. Hah. And she said I was the cop. I just shrugged. She seemed to get the message. Just before getting up, she looked back at me, and then back at Gar who was polishing her glass. I thought she was gonna turn back and pay, but not on my luck, no. She looked back at me only once more from the door, with a look I could only describe as queer. And <a href="barexit">that’s that</a>.
        </p>
        """,
    )
    barredlipsignorequiet:   new undum.SimpleSituation(
        """
        <p>“What else,” I gestured, “the peace and quiet, doll.”</p>
        <p>Oh. She set her glass down with an almost martial snap. “You want quiet do you?”</p>
        <p>All trace of alcohol gone. She rises like an iceberg in the northern seas. “Peace, and quiet. From me. While you two--”  violently, she points at Elroy, who paid no attention, and myself. Unprofessional of her, I thought. “play cops and robbers. Eh?” I had disappointed her. You can’t win’em all, girl. “FINE!” She finished. And ran out in far better form than her heels would make you think. And <a href="barexit">that’s that</a>.</p>
        """,
    )
    
    barexit:           new undum.SimpleSituation(
        """
        <p>
        At least I had finished my drink. I slapped the roof of my mouth to get rid of the bitter aftertaste, then though better of it and lit a cig to drown it out. The night’s still young, pretty, and her make-up’s still on. Where to next? <a href="park" class="tbw">To the park?</a> A peaceful hour of not being mugged in broad moonlight, if I’m lucky, or maybe <a href="diner">get some grub</a>?
        </p>
        """
    )
        
    
    
    diner:              new undum.SimpleSituation(
        """
        <p>I walk into <a href="./missing" class='once'>_____son's</a> All Night Diner through the fancy revolving doors. I see my reflections multiply on the spotless and only slightly scratched panes, and spin away just as fast. Don't trust people in the mirror; the ones that share your face even less.</p>
        <p>All the lights are on inside. The stove sizzles its low-budget stand-by-simmer, but nobody's home. It's too late for the hungry end-of-shift rush, too early for the nighthawks. I make my way to the table with the least bit of <a href="./window" class='once'>window</a> access, make sure no furry animals are playing poker under the seats, and sit.<p>
        <p>I lied. The place isn't empty. Gloria is here. Gloria is always here.</p>
        <p>“Bacon and eggs, <a href="dineregg">hard-boiled</a>.”</p>
        """,
        actions:
            "window": 
                """
                <p>
                I don't flatter myself into thinking I've made enemies with enough cash to hire a sniper, but you can never be too careful.
                </p>
                """
            "missing": 
                """
                <p>
                Not all glowing vinyl letters are created equal. Some fall before their time.
                </p>
                """
                
        ,
    )
    dineregg:              new undum.SimpleSituation(
        """
        <p>“You are what you eat.”</p>
        <p>That was Gloria. I didn't spend any effort in telling if she compared me to a pig. I have gotten used to her tongue, one way or the other, and she had gotten used to mine. Nobody could fry an egg quite like her, all grease and charred protein. Sometimes I wonder if she imagined it was her late husband she was cooking on the pan; late Mr. _____son. I new <i>him</i> as Frank. Gloria used to know him as the 'cook', then the 'boss', then as 'husband' for a short while, before knowing him as the 'defendant' in the end. All that grease did him in before the case passed.<p>
        <p>I never did get to know what those five missing letters stood for.</p>
        <p>“And you never will, too,” she said, placing the <a href="dinereat">plates</a>.</p>
        """
    )
    dinereat:              new undum.SimpleSituation(
        """
        <p>“Don't argue with the someone who brings you food.” That was something I learned in the pen.</P>
        <p>“Stop it with the words of wisdom, Guy. The worst you've ever gotten from the law is a ticket.”</p>
        <p>If I didn't know any better, I'd say she was readin' my mind. But nobody who reads minds would slip in a dish of <a href="./salad" class='once'>salad</a> with bacon and eggs.<p>
        <p>“You're <a href="dinerwelcome">welcome</a>,” she says. And whirls away, her <a href="./apron" class='once'>apron</a> lashing.</p>
        """,
        actions:
            "salad": 
                """
                <p>
                I never trust greenery I can eat. I rarely see the other kind these days, so I don't complain.
                </p>
                """
            "apron":
                """
                <p>It says “kiss the cook.” It could be the same one Frank _____son used to wear...</p>
                """
        ,
    )
    dinerwelcome:              new undum.SimpleSituation(
        """
        <p>They say waiting is a thankless job. Who am I to argue? It's one thing to compliment the <a href="./cook" class='once'>cook</a>. But isn't <a href="dinerthank">thanking</a> the woman who serves you food almost every night a bit <a href="dinernothank" class="tbw">redundant</a>? Should I still <a href="dinersarcasm" class="tbw">say something</a>?</p>
        """,
        actions:
            "cook":
                """
                <p>Which is also Gloria, since a certain case of the clogged arteries.</p>
                """
    )
    
    dinerthank:              new undum.SimpleSituation(
        """
        <p>I mumble some grateful words, and cut into the bubbling yellow mass of egg. The sharp intake of breath almost does not register to my ears, but the rest does.</p>
        <p>“Did you just thank me?” Her tone was less than <i>gracious</i>.</p>
        <p>“Yes.”</p>
        <p>“Why?” She asks, sitting on the opposite side. Food occupied my mind, and I tried to let it occupy my mouth. But she would not have it. “Why, Guy? She wasn't trying to rhyme. “You never thank me. Not once. This seems fishy. You're planning something aren't you? What is it?”</p>
        <p>I chew my bacon, and she chews her lips. I know better than to point out if she looks <a href="./cute" class='once'>cute</a> doing so.</p>
        <p>“Spit it out, I don't have all day!”</p>
        <p>“Why waste perfectly good bacon that way?” I decide to <a href="dinerthankwhy">play it safe</a>, and try the lettuce.</p>
        """,
        actions:
            "cute":
                """
                <p>She tries. She does. She's been through a lot. She runs the place all by herself. For that, she needs an image. And she'd go as far as to stab my with a spoon if I mention that her youth is slipping though her mask. A knife, if I actually use the word “cute.”</p>
                """
    )
    dinerthankwhy:              new undum.SimpleSituation(
        """
        <p>“Is it about money?”</p>
        <p>I stay quiet, and work on my egg-whites.</p>
        <p>“No...it's too early in the month for that.”</p>
        <p>I nod. She knows this <i>professional</i> well.</p>
        <p>“Are you in trouble again? I can't let you hide out in the freezer, you know.”</p>
        <p>“I know.” It was the only cooler that wasn't going to be permanent back then.</p>
        <She fidgets for a while. Tugging at the apron. Tapping her foot. She still has questions for me. Big ones, by the look of things. She shoots.</p>
        <p>“Are you...trying to flirt with me?”</p>
        <p>I finish my food. Drink my glass of water. So this is where we end up going. Her face was no redder than usual, with her natural complexion and her working with a stove, but her voice had a timber. She never slips up like this. Is this how it started with Frank? Is that how it ended?</p>
        <p>What do I answer? Do I tell her she was <a href="dinerthankwhyyes">right</a>? Or be <a href="dinerthankwhyno">frank</a> with it; no pun intended.</p> 
        """
    )
    dinerthankwhyno:              new undum.SimpleSituation(
        """
        <p>“No.”</p>
        <p>What else could I say? She was not a bad looking young woman. Her hair was just the right shade, her hips were just the right shape. Just right without being a show-stopper, or a show-starter, depending on your perspective. But she had a life. She had had a hard one already, but still had one left. A better one, hopefully. Who was I to take it away.
        Mine is no life for a woman like her. I have nothing to give her.</p>
        <p>Save for my bill, which I paid with change. There might have been sighs, and complaints that I “don't get no hints.” There might have been rolled eyes, or maybe moist ones. But they couldn't hold me back.</p>
        <p>I walked back <a href="dinerexit">out</a> the revolving doors, trying not to look at my reflections in the eye.</p>
        """
    )
    dinerthankwhyyes:              new undum.SimpleSituation(
        """
        <p>“Yes, love.”</p>
        <p>She sits perfectly still for, say, three seconds. Then she starts shaking her head, then part her lips, and finally utters, “No. Nah. Nope. Uh-uh. You're lying. It can't be that easy. Where's the seedy double entendre, where's the witty twisted compliment. That's <i>not</i> how you roll, Guy.” She lightly punches the table. Once, twice, thrice. “There's not even cigarette smoke in the air, or any moody lighting, for crying out loud. Where the grit, where's the romance in that?”</p>
        <p>I shrug. It was worth a try even though I knew she'd see through it just like that. I pay my bills near her elbow which led up to her hand that she used to prop her face up. Her lips almost a gesture of disappointment. Almost, it could even be amusement, women.</p>
        <p>I didn't say she looked cute back then either. That'd spoil all the work. I just walked <a href="dinerexit">out</a> the revolving doors, paying no heed to the reflections. I's damn sure they were all looking at me funny just like she was.</p>
        """
    )
    
    dinerexit:        new undum.SimpleSituation(
        """
        <p>The air was crisp outside, and colder. I was full, and maybe a little bit empty too.</p>
        <p>Where now? The <a href="bar">juicer</a> might be the default choice, or maybe I could use an exercise at the <a href="park" class="tbw">park</a>. I had calories to burn and no regrets. Almost.</p>
        """
    )
    
    
    park:               new undum.SimpleSituation(
        """
        <p>TBW</p>
        """,
        enter: (character, system, from) ->
            if character.qualities.time <= 1
                system.write(
                    """
                    <p>TBW</p>
                    """
                )
            else
                system.write(
                    """
                    <p>TBW</p>
                    """
                )
        ,
    )
    
    parkexit:        new undum.SimpleSituation(
        """
        <p>TBW</p>
        """
    )



undum.game.start = "intro"



undum.game.init = (character, system) ->
    character.qualities.time = 1
  
