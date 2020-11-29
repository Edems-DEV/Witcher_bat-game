:: Setup
@ECHO OFF
mode con: cols=87 lines=30
TITLE Witcher - BATCHFILE edition
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A

:START_MENU
set time_gap_menu=1

:VARIABMONSTERNEST
set posun=0
set /a my_health=100
set /a my_health_max=100
set /a enemy_health=100
set score=0
set armor=zadne
set /a attack_dacat_wolf_sword=5
set /a attack_dacat_legendary_wolf_sword=8
set /a attack_dacat_fist=5
set /a attack_dacat_bear_sword=4
set /a attack_dacat_legendary_bear_sword=5
set /a attack_dacat_bear_crossbow=5
set /a attack_dacat_cat_sword=1
set /a attack_dacat_cats_crossbow=5
set /a money=20
set weapon=""

:: Menu
:menu_play
CLS
echo                 +------------------------------------------------+
echo                              Witcher - BATCHFILE edition               
echo                 +------------------------------------------------+
echo                                 +----------------+
echo                                 ^|     *PLAY*     ^|
echo                                 +----------------+
echo                                 +----------------+
echo                                 ^|      HELP      ^|
echo                                 +----------------+
set start=START
goto choice

:menu_help
CLS
echo                 +------------------------------------------------+
echo                              Witcher - BATCHFILE edition               
echo                 +------------------------------------------------+
echo                                 +----------------+
echo                                 ^|      PLAY      ^|
echo                                 +----------------+
echo                                 +----------------+
echo                                 ^|     *HELP*     ^|
echo                                 +----------------+
set start=HELP

:choice
choice /c:210 /n
if "%errorlevel%"=="3" ( goto %start% )
if "%errorlevel%"=="2" ( goto menu_play )
if "%errorlevel%"=="1" ( goto menu_help )


:HELP

:print_character
CLS
echo                 +------------------------------------------------+
echo                                     HELP               
echo                 +------------------------------------------------+
echo                 +----------------+
echo                 ^|   *CHARACTERS* ^|
echo                 +----------------+
echo                 +----------------+
echo                 ^|     LOCATIONS  ^|
echo                 +----------------+
echo                 +----------------+
echo                 ^|    CONTROL     ^|
echo                 +----------------+
echo                 +----------------+
echo                 ^|      BACK      ^|
echo                 +----------------+
set start=CHARACTERS
goto choice_help

:print_location
CLS
echo                 +------------------------------------------------+
echo                                     HELP               
echo                 +------------------------------------------------+
echo                 +----------------+
echo                 ^|    CHARACTERS  ^|
echo                 +----------------+
echo                 +----------------+
echo                 ^|    *LOCATIONS* ^|
echo                 +----------------+
echo                 +----------------+
echo                 ^|    CONTROL     ^|
echo                 +----------------+
echo                 +----------------+
echo                 ^|      BACK      ^|
echo                 +----------------+
set start=LOCATIONS
goto choice_help

:print_control
CLS
echo                 +------------------------------------------------+
echo                                     HELP               
echo                 +------------------------------------------------+
echo                 +----------------+
echo                 ^|    CHARACTERS  ^|
echo                 +----------------+
echo                 +----------------+
echo                 ^|     LOCATIONS  ^|
echo                 +----------------+
echo                 +----------------+
echo                 ^|   *CONTROL*    ^|
echo                 +----------------+
echo                 +----------------+
echo                 ^|      BACK      ^|
echo                 +----------------+
set start=CONTROL
goto choice_help

:print_back
CLS
echo                 +------------------------------------------------+
echo                                     HELP               
echo                 +------------------------------------------------+
echo                 +----------------+
echo                 ^|    CHARACTERS  ^|
echo                 +----------------+
echo                 +----------------+
echo                 ^|     LOCATIONS  ^|
echo                 +----------------+
echo                 +----------------+
echo                 ^|    CONTROL     ^|
echo                 +----------------+
echo                 +----------------+
echo                 ^|     *BACK*     ^|
echo                 +----------------+
set start=START_MENU


:choice_help
choice /c:43210 /n
if "%errorlevel%"=="5" ( goto %start% )
if "%errorlevel%"=="4" ( goto print_character )
if "%errorlevel%"=="3" ( goto print_location )
if "%errorlevel%"=="2" ( goto print_control )
if "%errorlevel%"=="1" ( goto print_back )

:CHARACTERS
CLS
echo                 +------------------------------------------------+
echo                                 HELP - CHARACTERS               
echo                 +------------------------------------------------+
echo.
echo                 In game you can choose between 3 schools:
echo                 -------------------------------
echo                 WOLF  (HP: 100) (Attack:5-13)
echo                 BEAR   (HP: 100) (Attack:4-14)
echo                 CAT     (HP: 100) (Attack:1-18)
echo.
echo                 +----------------+
echo                 ^|     *BACK*     ^|
echo                 +----------------+
choice /c:0 /n
if "%errorlevel%"=="1" ( goto HELP )

:LOCATIONS
CLS
echo                 +------------------------------------------------+
echo                                 HELP - LOCATIONS              
echo                 +------------------------------------------------+
echo.
echo                 In game you can choose between 3 location:
echo                 ---------------------------------------
echo                 MONSTER NEST - zde muzes potkavat ruzne nepratele
echo                 WHITE ORCHARD - zde naleznes obcthrow,doctore a hospodu
echo                 Velen & Novigrad - zde naleznes obcthrow,doctore a hospodu
echo.
echo                 +----------------+
echo                 ^|     *BACK*     ^|
echo                 +----------------+
choice /c:0 /n
if "%errorlevel%"=="1" ( goto HELP )

:CONTROL
CLS
echo                 +------------------------------------------------+
echo                                 HELP - CONTROL             
echo                 +------------------------------------------------+
echo.
echo                 The game is controlled only with the help of the keyboard^^!
echo                 ---------------------------------------------
echo                 Text in parentheses "[yes/no]" indicates possible answers.
echo.                

echo                 +----------------+
echo                 ^|     *BACK*     ^|
echo                 +----------------+
choice /c:0 /n
if "%errorlevel%"=="1" ( goto HELP )


:START
set time_gap_start=1
:start_repeat
CLS
if "%time_gap_start%"=="1" TIMEOUT /T 1 > "null"
echo                 +------------------------------------------------+
if "%time_gap_start%"=="1" TIMEOUT /T 1 > "null"
echo                            Witcher - BATCHFILE edition             
if "%time_gap_start%"=="1" TIMEOUT /T 1 > "null"    
echo                 +------------------------------------------------+
echo.
if "%time_gap_start%"=="1" TIMEOUT /T 1 > "null"  


:CREATION_CHARACTERS
if NOT %money% EQU 20 ( CLS & echo. & echo  Haha^^! GOT EEM^^! & echo  You tried cheat more money^^! & goto END ) 
if "%time_gap_start%"=="1" TIMEOUT /T 1 > "null"
echo    -------------------------------------------------------
if "%time_gap_start%"=="1" TIMEOUT /T 2 > "null"
echo    As humans settled in the northern part of the Continent,
echo    they had to deal with a vast array of monsters that 
echo    inhabited the land and which humans were poorly equipped to deal with.
if "%time_gap_start%"=="1" TIMEOUT /T 2 > "null"
echo    To fix this, the Northern rulers tasked their cats to create 
echo    magic-wielding warriors to deal with the monsters for them. As a result, 
echo    the mages carried out experiments at Rissberg and the first witcher was created.
if "%time_gap_start%"=="1" TIMEOUT /T 2 > "null"
echo    Unfortunately, the witchers proved to have limited magical potential and
echo    were thus deemed failures and banished from the castle.
if "%time_gap_start%"=="1" TIMEOUT /T 2 > "null"
echo    For these cat_sword-wielding wolfs named witcher schools were created
if "%time_gap_start%"=="1" TIMEOUT /T 2 > "null"
echo          School of Cat, 
if "%time_gap_start%"=="1" TIMEOUT /T 3 > "null"
echo          School of Wolf, was most famous school 
echo            because Geralt of Rivia (most famous Witcher)
if "%time_gap_start%"=="1" TIMEOUT /T 2 > "null"
echo          School of Bear (focus: Heavy Armor)
if "%time_gap_start%"=="1" TIMEOUT /T 2 > "null"
echo    One of this witcher was (Name of you character)
set /p player_name=%BS%   Answer:
if "%player_name%"=="" ( set time_gap_start=0 & goto start_repeat )
echo.
TIMEOUT /T 1 > "null"
echo    %player_name% was trained in [cat/wolf/bear].
set /p choice=%BS%   Answer:


:: character type setting
if /i NOT "%choice%"=="%choice:wolf=%" ( set character=wolf& set weapon_default=stit& set weapon=wolf_sword)
if /i NOT "%choice%"=="%choice:cat=%" ( set character=cat& set weapon_default=cats_crossbow& set weapon=cat_sword)
if /i NOT "%choice%"=="%choice:bear=%" ( set character=bear& set weapon_default=bear_crossbow& set weapon=bear_sword)
if "%character%"=="" ( goto START )
:: MOVE TO MENU FROM SELECT CHARACTERS
goto MENU

:MONSTER_NEST
::music off - before battle
Taskkill /IM "wscript.exe" /F>nul 2>&1
goto battlestart
:musicbattle
set file=Resource/Battle.mp3
(  echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
   echo Sound.URL = "%file%"
   echo Sound.Controls.play
   echo do while Sound.currentmedia.duration = 0
   echo wscript.sleep 100
   echo loop
   echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >Resource/sound.vbs
start /min Resource/sound.vbs
goto battlemusicon

:battlestart
CLS
echo.
:: defined by the opponent
set /a enemy_choice=%random% %%4
:: Define the name of the opponent and the thrownot of the opponent / lives /
::TODO - delete = enemy_sklonovani
if "%enemy_choice%"=="0" ( set enemy=Drowner & set enemy_small_letter=drowner& set enemy_sklonovani=drowner& set enemy_health=100)
if "%enemy_choice%"=="1" ( set enemy=Griffin& set enemy_small_letter=griffin& set enemy_sklonovani=griffin& set enemy_health=150)
if "%enemy_choice%"=="2" ( set enemy=RockTroll& set enemy_small_letter=rocktroll& set enemy_sklonovani=rocktroll& set enemy_health=150)
if "%enemy_choice%"=="3" ( set enemy=Wolf& set enemy_small_letter=wolf& set enemy_sklonovani=wolf& set enemy_health=100)

FOR /F %%# IN ('COPY /Z "%~dpf0" NUL') DO SET "CR=%%#"
FOR /L %%# IN (10,-1,1) DO (SET/P "=%BS% You're on your way to a dark monsternest... %%# seconds. !CR!"<NUL:
PING -n 2 127.0.0.1 >NUL: ) 
CLS
echo.
echo  You came into the monsternest^^!
TIMEOUT /T 2 > "null"
CLS
echo  +-------------------------------+
TIMEOUT /T 1 > "null"
echo             MONSTER NEST
TIMEOUT /T 1 > "null"
echo  +-------------------------------+
echo.
TIMEOUT /T 1 > "null"
echo  -----------------------------------------------------------------------------
TIMEOUT /T 1 > "null"
echo  You're approaching the monster nest.
TIMEOUT /T 3 > "null"
echo  Your witcher mode suddenly activated.
goto musicbattle
:battlemusicon
TIMEOUT /T 3 > "null"
echo  You saw a %enemy_small_letter%^^!
echo.
TIMEOUT /T 4 > "null"
echo  What do you want to do? [attack/escape]
TIMEOUT /T 2 > "null"
set /p choice_monsternest=%BS% Answer: 
set time_gap_battle=1
if /i NOT "%choice_monsternest%"=="%choice_monsternest:attack=%" ( goto BATTLE )
if /i NOT "%choice_monsternest%"=="%choice_monsternest:escape=%" ( goto ESCAPE_%character% )


TIMEOUT /T 2 > "null"
:BATTLE

if "%weapon%" EQU "legendary wolf_sword" ( set weapon_nabydka=VALECNEHO wolf_sword )
if "%weapon%" EQU "legendary bear_sword" ( set weapon_nabydka=VALECNEHO bear_sword )
if "%weapon%" EQU "wolf_sword" ( set weapon_nabydka=wolf_swordE )
if "%weapon%" EQU "bear_sword" ( set weapon_nabydka=bear_sword )
if "%weapon%" EQU "cat_sword" ( set weapon_nabydka=CATICKE HOLE )


if %my_health% LEQ 0 ( set /a my_health=0 )
CLS
echo.
if "%time_gap_battle%"=="1" TIMEOUT /T 1 > "null"
ECHO   %player_name%: %my_health%HP
if "%time_gap_battle%"=="1" TIMEOUT /T 1 > "null"
echo ----------------------------------+
if "%time_gap_battle%"=="1" TIMEOUT /T 1 > "null"
ECHO   %enemy%: %enemy_health%HP
if "%time_gap_battle%"=="1" TIMEOUT /T 1 > "null"
echo ----------------------------------+
if "%time_gap_battle%"=="1" TIMEOUT /T 1 > "null"
echo.

::Kontrola zda jsou hraci porad na zivu
if %my_health% LEQ 0 goto DEFEAT
if %enemy_health% LEQ 0 goto WIN
::vynulovani promenne attack
set attack=""

if %character%==wolf ( goto WOLF )
if %character%==bear ( goto BEAR )
if %character%==cat ( goto CAT )

::vypsani textu pro jednotlive postavy
:WOLF
if "%time_gap_battle%"=="1" PING -n 1 127.0.0.1 >NUL:
echo  PRESS M FOR USE %weapon_nabydka%
if "%time_gap_battle%"=="1" PING -n 1 127.0.0.1 >NUL:
echo  PRESS P FOR USE FIST
if "%time_gap_battle%"=="1" PING -n 1 127.0.0.1 >NUL:
echo  PRESS S FOR USE SIGN
if "%time_gap_battle%"=="1" PING -n 1 127.0.0.1 >NUL:
echo  PRESS U PRO TRY ESCAPE
if "%time_gap_battle%"=="1" PING -n 1 127.0.0.1 >NUL:
goto  ATTACK

:BEAR
if "%time_gap_battle%"=="1" PING -n 1 127.0.0.1 >NUL:
echo  PRESS L FOR USE %weapon_nabydka%
if "%time_gap_battle%"=="1" PING -n 1 127.0.0.1 >NUL:
echo  PRESS N FOR USE CROSSBOW
if "%time_gap_battle%"=="1" PING -n 1 127.0.0.1 >NUL:
echo  PRESS P FOR USE COUNTERSTRIKE
if "%time_gap_battle%"=="1" PING -n 1 127.0.0.1 >NUL:
echo  PRESS U PRO TRY ESCAPE
if "%time_gap_battle%"=="1" PING -n 1 127.0.0.1 >NUL:
goto  ATTACK

:CAT
if "%time_gap_battle%"=="1" PING -n 1 127.0.0.1 >NUL:
echo  PRESS K FOR USE %weapon_nabydka%
if "%time_gap_battle%"=="1" PING -n 1 127.0.0.1 >NUL:
echo  PRESS J FOR USE CROSSBOW
if "%time_gap_battle%"=="1" PING -n 1 127.0.0.1 >NUL:
echo  PRESS M FOR USE SIGN
if "%time_gap_battle%"=="1" PING -n 1 127.0.0.1 >NUL:
echo  PRESS U PRO TRY ESCAPE
goto  ATTACK

:ATTACK
::Ask what the user wants to do for the attack
set /p attack=%BS% Zvoleny attack: 
set time_gap_battle=0
if %character%==wolf ( goto WOLF_ATTACK )
if %character%==bear ( goto BEAR_ATTACK )
if %character%==cat ( goto CAT_ATTACK )

:WOLF_ATTACK
::Definovani sily attacku WOLFA
set /a  try_escape_wolf=%random% %%3
if "%weapon%"=="wolf_sword" ( set /a hit=%random% %%8 + %attack_dacat_wolf_sword% )
if "%weapon%"=="legendary wolf_sword" ( set /a  hit=%random% %%7 + %attack_dacat_legendary_wolf_sword% )
if "%weapon%"=="legendary bear_sword" ( set /a  hit=%random% %%5 + %attack_dacat_legendary_bear_sword% )
set /a  hit_fist=%random% %%3 + %attack_dacat_fist%
::Defining the strength of the WOLFA attack
set /a  hit_monster=%random% %%15 + 3

::Defining the type of attack
if "%attack%"=="p" ( goto fist ) else if "%attack%"=="m" ( goto wolf_sword ) else if "%attack%"=="u" ( goto ESCAPE_WOLF )  else ( goto BATTLE )

:fist
::Monster attack - If lives are greater than 0
if "%my_health%" GTR "0" ( set /a my_health-=%hit_monster% )
::I attack - If the lives are greater than 0
if "%enemy_health%" GTR "0" ( set /a enemy_health-=%hit_fist% )
::Move back for the possibility of re-attack
goto BATTLE

:wolf_sword
::Monster attack
if "%my_health%" GTR "0" ( set /a my_health-=%hit_monster% )
::Me attack
if "%enemy_health%" GTR "0" ( set /a enemy_health-=%hit% )
::Move back for the possibility of re-attack
goto BATTLE

:ESCAPE_WOLF
CLS
echo.
ECHO   %player_name%: %my_health%HP
if "%time_gap_battle%"=="1" TIMEOUT /T 1 > "null"
echo ----------------------------------+
if "%time_gap_battle%"=="1" TIMEOUT /T 1 > "null"
ECHO   %enemy%: %enemy_health%HP
if "%time_gap_battle%"=="1" TIMEOUT /T 1 > "null"
echo ----------------------------------+
echo.
echo  -----------------------------
TIMEOUT /T 1 > "null"
echo  You started running away from the fight^^!
TIMEOUT /T 2 > "null"
echo  %enemy% is running right behind you and he trying to catch you.
TIMEOUT /T 5 > "null"
if "%try_escape_wolf%" EQU "1" (
echo  After a long and difficult run, you ran away.^^!
TIMEOUT /T 3 > "null"
echo  But you have to be more careful.^^! 
TIMEOUT /T 3 > "null"
goto MENU ) else ( echo  After a long and difficult run, the %enemy_small_letter% caught up with you^^!
TIMEOUT /T 3 > "null" 
echo  You have to keep fighting^^!
set time_gap_battle=0 
TIMEOUT /T 3 > "null" 
goto battle )

:BEAR_ATTACK
::Defining the strength of the BEARA attack
set /a  try_escape_bear=%random% %%3
if "%weapon%"=="bear_sword" ( set /a hit=%random% %%10 + %attack_dacat_bear_sword% )
if "%weapon%"=="legendary wolf_sword" ( set /a  hit=%random% %%7 + %attack_dacat_legendary_wolf_sword% )
if "%weapon%"=="legendary bear_sword" ( set /a  hit=%random% %%5 + %attack_dacat_legendary_bear_sword% )
set /a  hit_bear_crossbow=%random% %%3 + %attack_dacat_bear_crossbow%
::Defining attack attacks for BEAR
set /a  hit_monster=%random% %%5 + 5

::Defining the type of attack - what should happen after pressing the key!
if "%attack%"=="n" ( goto bear_crossbow ) else if "%attack%"=="l" ( goto bear_sword ) else if "%attack%"=="u" ( goto ESCAPE_BEAR )  else ( goto BATTLE )

:bear_crossbow
::Monster attack - If the lives are greater than 0
if "%my_health%" GTR "0" ( set /a my_health-=%hit_monster% )
::Me attack - If the lives are greater than 0
if "%enemy_health%" GTR "0" ( set /a enemy_health-=%hit_bear_crossbow% )
::Move back for the possibility of re-attack
goto BATTLE

:bear_sword
::Monster attack
if "%my_health%" GTR "0" ( set /a my_health-=%hit_monster% )
::Me attack
if "%enemy_health%" GTR "0" ( set /a enemy_health-=%hit% )
::Move back for the possibility of re-attack
goto BATTLE

:ESCAPE_BEAR
CLS
echo.
ECHO   %player_name%: %my_health%HP
if "%time_gap_battle%"=="1" TIMEOUT /T 1 > "null"
echo ----------------------------------+
if "%time_gap_battle%"=="1" TIMEOUT /T 1 > "null"
ECHO   %enemy%: %enemy_health%HP
if "%time_gap_battle%"=="1" TIMEOUT /T 1 > "null"
echo ----------------------------------+
echo.
echo  -----------------------------
TIMEOUT /T 1 > "null"
echo  You started running away from the fight^^!
TIMEOUT /T 2 > "null"
echo  The %enemy% is running right behind you and trying to catch up with you.
TIMEOUT /T 5 > "null"
if "%try_escape_bear%" EQU "1" (
echo  After a long and difficult run, you ran away.^^!
TIMEOUT /T 3 > "null"
echo  Priste si ale musis davat vetsi pozor^^! 
TIMEOUT /T 3 > "null"
goto MENU ) else ( echo  After a long and difficult run, the %enemy% caught you^^!
TIMEOUT /T 3 > "null" 
echo  You have to keep fighting^^! 
set time_gap_battle=0
TIMEOUT /T 3 > "null" 
goto battle )

:CAT_ATTACK
::Defining CAT attack strength
if "%weapon%"=="cat_sword" ( set /a hit=%random% %%18 + %attack_dacat_cat_sword% )
if "%weapon%"=="legendary wolf_sword" ( set /a  hit=%random% %%7 + %attack_dacat_legendary_wolf_sword% )
if "%weapon%"=="legendary bear_sword" ( set /a  hit=%random% %%5 + %attack_dacat_legendary_bear_sword% )
set /a  try_escape_mag=%random% %%3
set /a  hit_cats_crossbow=%random% %%3 + %attack_dacat_cats_crossbow%
::Defining attack attacks for CATA
set /a  hit_monster=%random% %%5 + 5

::Defining the type of attack - what should happen after pressing the key!
if "%attack%"=="k" ( goto cat_sword ) else if "%attack%"=="j" ( goto JEDOVA_DYKA ) else if "%attack%"=="u" ( goto ESCAPE_CAT )  else ( goto BATTLE )

:cat_sword
::Monster attack - If the lives are greater than 0
if "%my_health%" GTR "0" ( set /a my_health-=%hit_monster% )
::Me attack - If the lives are greater than 0
if "%enemy_health%" GTR "0" ( set /a enemy_health-=%hit% )
::Move back for the possibility of re-attack
goto BATTLE

:JEDOVA_DYKA
::Monster attack
if "%my_health%" GTR "0" ( set /a my_health-=%hit_monster% )
::Me attack
if "%enemy_health%" GTR "0" ( set /a enemy_health-=%hit_cats_crossbow% )
::Move back for the possibility of re-attack
goto BATTLE

:ESCAPE_CAT
CLS
echo.
ECHO   %player_name%: %my_health%HP
if "%time_gap_battle%"=="1" TIMEOUT /T 1 > "null"
echo ----------------------------------+
if "%time_gap_battle%"=="1" TIMEOUT /T 1 > "null"
ECHO   %enemy%: %enemy_health%HP
if "%time_gap_battle%"=="1" TIMEOUT /T 1 > "null"
echo ----------------------------------+
echo.
echo  -----------------------------
TIMEOUT /T 1 > "null"
echo  You started running away from the fight^^!
TIMEOUT /T 2 > "null"
echo  The %enemy% is running right behind you and trying to catch up with you.
TIMEOUT /T 5 > "null"
if "%try_escape_bear%" EQU "1" (
echo  After a long and difficult run, you ran away.^^!
TIMEOUT /T 3 > "null"
echo  Priste si ale musis davat vetsi pozor^^! 
TIMEOUT /T 3 > "null"
goto MENU ) else ( echo  After a long and difficult run, the %enemy% caught you^^!
TIMEOUT /T 3 > "null" 
echo  You have to keep fighting^^! 
set time_gap_battle=0
TIMEOUT /T 3 > "null" 
goto battle )


:DEFEAT
::TODO music
:print_menu
CLS
echo.
ECHO   %player_name%: %my_health%HP
echo ----------------------------------+
ECHO   %enemy%: %enemy_health%HP
echo ----------------------------------+
echo.
echo    +----------------+
echo          YOU DIE
echo    +----------------+
echo    +----------------+
echo    ^|     *MENU*     ^|
echo    +----------------+
echo    +----------------+
echo    ^|     RESTART    ^|
echo    +----------------+
set start=START_MENU
goto choice_defeat

:print_restart
CLS
echo.
ECHO   %player_name%: %my_health%HP
echo ----------------------------------+
ECHO   %enemy%: %enemy_health%HP
echo ----------------------------------+
echo.
echo    +----------------+
echo          YOU DIE
echo    +----------------+
echo    +----------------+
echo    ^|      MENU      ^|
echo    +----------------+
echo    +----------------+
echo    ^|    *RESTART*   ^|
echo    +----------------+
set start=RESTART


:choice_defeat
choice /c:210 /n
if "%errorlevel%"=="3" ( goto %start% )
if "%errorlevel%"=="2" ( goto print_menu )
if "%errorlevel%"=="1" ( goto print_restart )

:RESTART
set /a my_health=100
set /a my_health_max=100
set armor=zadne
set /a attack_dacat_wolf_sword=5
set /a attack_dacat_legendary_wolf_sword=8
set /a attack_dacat_fist=5
set /a attack_dacat_bear_sword=4
set /a attack_dacat_legendary_bear_sword=5
set /a attack_dacat_bear_crossbow=5
set /a attack_dacat_cat_sword=1
set /a attack_dacat_cats_crossbow=5
set /a money=20
if /i "%character%"=="wolf" ( set weapon=wolf_sword)
if /i "%character%"=="cat" ( set weapon=cat_sword)
if /i "%character%"=="bear" ( set weapon=bear_sword)
goto MENU

:WIN
echo.
TIMEOUT /T 1 > "null"
echo    +----------------+
TIMEOUT /T 1 > "null"
echo        You won
TIMEOUT /T 1 > "null"
echo    +----------------+
set /a money+=5
TIMEOUT /T 1 > "null"
echo    --------------------------------------------------------
TIMEOUT /T 1 > "null"
echo    You made 5$. Current state of your health: %my_health%
TIMEOUT /T 2 > "null"
echo           The current state of your finances: %money%$ 
TIMEOUT /T 1 > "null"
echo    --------------------------------------------------------
TIMEOUT /T 1 > "null"
echo    Press any key to exit the monsternest!
pause > "null"
goto MENU



:TOWN

:TOWNMUSIC
Taskkill /IM "wscript.exe" /F>nul 2>&1
set file=Resource/Town.mp3
(  echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
   echo Sound.URL = "%file%"
   echo Sound.Controls.play
   echo do while Sound.currentmedia.duration = 0
   echo wscript.sleep 100
   echo loop
   echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >Resource/sound.vbs
start /min Resource/sound.vbs

CLS
::Defining variables / time gap determines whether pauses should be performed between views /
set doctor_action=
set time_gap_town=1
::Defining the value of heal from DOCTOR
set /a heal_value=%my_health_max%/2
set /a heal_kontrola=%heal_value%+%my_health%
if %heal_kontrola% GTR %my_health_max% ( set /a heal_value=%my_health_max%-%my_health% )
set /a fullheal_value=%my_health_max%-%my_health%

echo.
FOR /F %%# IN ('COPY /Z "%~dpf0" NUL') DO SET "CR=%%#"
FOR /L %%# IN (10,-1,1) DO (SET/P "=%BS% You are on the way to %town_name% ... %%# seconds. !CR!"<NUL:
PING -n 2 127.0.0.1 > NUL: ) 
TIMEOUT /T 1 > "null" 
:town_repeat
set town_action=
CLS
if "%time_gap_town%"=="1"  TIMEOUT /T 1 > "null" 
echo  +--------------------------------+
if "%time_gap_town%"=="1"  TIMEOUT /T 1 > "null" 
echo                %town_name%
if "%time_gap_town%"=="1"  TIMEOUT /T 1 > "null" 
echo. 
echo   ^|-----------------------------^|
if "%time_gap_town%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo   ^|         SIGN POST           ^|
if "%time_gap_town%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo   ^|-----------------------------^|
if "%time_gap_town%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo   ^| 1. doctor                   ^|
if "%time_gap_town%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo   ^| 2. dealer                   ^|
if "%time_gap_town%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo   ^| 3. inn                      ^|
if "%time_gap_town%"=="1"  PING -n 1 127.0.0.1 >NUL:
if "%time_gap_town%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo   ^|-----------------------------^|
if "%time_gap_town%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo. 
echo  +--------------------------------+
echo.
echo.
if "%time_gap_town%"=="1"  TIMEOUT /T 2 > "null" 
echo  Where do you want to go? [By typing "o" you will leave the city]
if "%time_gap_town%"=="1"  TIMEOUT /T 1 > "null" 
set /p town_action=%BS% Answer:

if "%town_action%"=="" ( set time_gap_town=0 & goto town_repeat )
if /i "%town_action%"=="O" ( goto town_out  )
if %town_action%==1 ( goto DOCTOR )
if %town_action%==2 ( goto DEALER )
if %town_action%==3 ( goto INN )
if /i NOT "%town_action%"=="%town_action:doctor=%" ( goto DOCTOR  )
if /i NOT "%town_action%"=="%town_action:dealer=%" ( goto DEALER )
if /i NOT "%town_action%"=="%town_action:inn=%" ( goto INN  )
set time_gap_town=0 & goto town_repeat

:DOCTOR
CLS
echo.
FOR /F %%# IN ('COPY /Z "%~dpf0" NUL') DO SET "CR=%%#"
FOR /L %%# IN (5,-1,1) DO (SET/P "=%BS% You're on your way to doctor ... %%# seconds. !CR!"<NUL:
PING -n 2 127.0.0.1 > NUL: )
TIMEOUT /T 1 > "null"
CLS
set time_gap_doctor=1
:doctor_repeat
echo.
CLS
if "%time_gap_doctor%"=="1"  TIMEOUT /T 1 > "null"
echo   +--------------------------------+
if "%time_gap_doctor%"=="1"  TIMEOUT /T 1 > "null"
echo            DOCTOR SHANI     
if "%time_gap_doctor%"=="1"  TIMEOUT /T 2 > "null"
echo. 
echo    ^|-----------------------------^|
if "%time_gap_doctor%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo    ^|        DOCTOR SHOP          ^|
if "%time_gap_doctor%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo    ^|-----------------------------^|
if "%time_gap_doctor%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo    ^| 1. heal                     ^|
if "%time_gap_doctor%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo    ^| 2. fullheal                 ^|
if "%time_gap_doctor%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo    ^|-----------------------------^|
echo.
if "%time_gap_doctor%"=="1"  TIMEOUT /T 1 > "null" 
echo    Heal: +%heal_value%HP  Price: 15$
if "%time_gap_doctor%"=="1"  TIMEOUT /T 1 > "null" 
echo    Fullheal: +%fullheal_value%HP  Price: 30$
if "%time_gap_doctor%"=="1"  TIMEOUT /T 1 > "null" 
echo.
echo   +--------------------------------+
echo.
if "%time_gap_doctor%"=="1"  TIMEOUT /T 4 > "null" 
echo  Shani: Welcome. What do you want from me? [heal/fullheal/nothing]
if "%time_gap_doctor%"=="1"  TIMEOUT /T 1 > "null" 
set /p doctor_action=%BS% Answer:


if "%doctor_action%"=="" ( set time_gap_doctor=0 & goto doctor_repeat )
if /i NOT "%doctor_action%"=="%doctor_action:heal=%" ( goto heal  )
if /i NOT "%doctor_action%"=="%doctor_action:nothing=%" ( echo. & goto doctor_odcthrow  )
if /i NOT "%doctor_action%"=="%doctor_action:fullheal=%" ( goto fullheal  )
set time_gap_doctor=0 & goto doctor_repeat

:heal
set doctor_action=heal
set /a price=15
if %money% LSS %price% ( set /a money_shortage_value=%price%-%money% & goto money_shortage )
set /a money-=%price%
set /a my_health+=%heal_value%
echo.
echo  You were healed. Current state of health: %my_health%
echo             The current state of your finances: %money%$
goto doctor_odcthrow

:fullheal
set doctor_action=fullheal
set /a price=30
if %money% LSS %price% ( set /a money_shortage_value=%price%-%money% & goto money_shortage )
set /a money-=%price%
set /a my_health+=%fullheal_value%
echo.
echo  You were healed. Current state of health: %my_health%
echo             The current state of your finances: %money%$
goto doctor_odcthrow

:money_shortage
echo.
echo  Shani: I'm sorry, but I can't heal you. You don't have enough money^^!
TIMEOUT /T 2 > "null" 
echo  For %doctor_action% you have %money_shortage_value%$ left^^!

:doctor_odcthrow
set doctor_action=
TIMEOUT /T 3 > "null"
echo  +-------------------------------------------------------------------+
TIMEOUT /T 1 > "null"
echo  Press any key to return to the square of Novigrad %town_name%
pause > "null"
set time_gap_town=1
goto town_repeat


:DEALER

set update_dealer=true
set dealer_action=
set time_gap_dealer=1
CLS
echo.
FOR /F %%# IN ('COPY /Z "%~dpf0" NUL') DO SET "CR=%%#"
FOR /L %%# IN (5,-1,1) DO (SET/P "=%BS% You're on your way to dealer ... %%# seconds. !CR!"<NUL:
PING -n 2 127.0.0.1 > NUL: ) 
TIMEOUT /T 1 > "null" 
:dealer_repeat

if "%weapon%" EQU "legendary wolf_sword" ( set weapon_echo=Attack:8-15 )
if "%weapon%" EQU "legendary bear_sword" ( set weapon_echo=Attack:5-17 )
if "%weapon%" EQU "wolf_sword" ( set weapon_echo=Attack:5-13 )
if "%weapon%" EQU "bear_sword" ( set weapon_echo=Attack:4-14 )
if "%weapon%" EQU "cat_sword" ( set weapon_echo=Attack:1-18 )

CLS
if "%time_gap_dealer%"=="1"  TIMEOUT /T 1 > "null"
echo   +----------------------------------------------+
if "%time_gap_dealer%"=="1"  TIMEOUT /T 1 > "null"
echo                   DEALER BOB    
if "%time_gap_dealer%"=="1"  TIMEOUT /T 2 > "null"
echo.
echo    ^|-------------------------------------------^|    ^| ----------------------------
if "%time_gap_dealer%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo    ^|              ZBOZI DEALERA                ^|    ^| YOUR INVENTORY             ^|
if "%time_gap_dealer%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo    ^|-------------------------------------------^|    ^| ----------------------------
if "%time_gap_dealer%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo    ^| 1. legendary wolf_sword                   ^|    ^| weapon: %weapon% ^(%weapon_echo%^)
echo    ^|             (Attack:8-15) (Price:40$)     ^|
if "%time_gap_dealerl%"=="1"  PING -n 1 127.0.0.1 >NUL:   
echo    ^| 2. legendary bear_sword                   ^|    ^| armor: %armor%
ECHO    ^|             (Attack:5-17) (Price:45$)     ^|
if "%time_gap_dealer%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo    ^| 3. valecne armor (Zivoty:150) (Price:50$) ^|    ^| money: %money%$
if "%time_gap_dealer%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo    ^| 4. stare armor   (Zivoty:125) (Price:25$) ^|    ^| 
if "%time_gap_dealer%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo    ^|-------------------------------------------^|    ^|----------------------------^| 
echo.
if "%time_gap_dealer%"=="1"  TIMEOUT /T 1 > "null" 
echo   +----------------------------------------------+
if "%time_gap_dealer%"=="1"  TIMEOUT /T 4 > "null" 
echo.
echo   BOB: Welcome. What do you want from me? [1-4/nothing]
if "%time_gap_dealer%"=="1"  TIMEOUT /T 1 > "null" 
if "%update_dealer%"=="false" ( echo   Answer:%dealer_action% & goto dealer_select )
if "%update_dealer%"=="true" set /p dealer_action=%BS%  Answer:

if "%dealer_action%"=="" ( set time_gap_dealer=0 & goto dealer_repeat )
if /i NOT "%dealer_action%"=="%dealer_action:nothing=%" ( goto dealer_odcthrow )
if /i NOT "%dealer_action%"=="%dealer_action:wolf_sword=%" ( set dealer_action=1 & goto dealer_select )
if /i NOT "%dealer_action%"=="%dealer_action:bear_sword=%" ( set dealer_action=2 & goto dealer_select )
if /i NOT "%dealer_action%"=="%dealer_action:valecne=%" ( set dealer_action=3 & goto dealer_select  )
if /i NOT "%dealer_action%"=="%dealer_action:stare=%" ( set dealer_action=4 & goto dealer_select )
:dealer_select

if %dealer_action%==1 ( goto polozka_1 )
if %dealer_action%==2 ( goto polozka_2 )
if %dealer_action%==3 ( goto polozka_3 )
if %dealer_action%==4 ( goto polozka_4 )
set time_gap_dealer=0 & goto dealer_repeat

:polozka_1
set polozka=legendary wolf_sword
set /a price=40
if "%update_dealer%"=="true" (
if %money% LSS %price% ( set /a money_shortage_value=%price%-%money% & goto money_dealer_shortage )
set weapon=legendary wolf_sword
set /a money-=%price% )
echo.
echo   You bought a legendary wolf_sword. The current strength of your attack: 8-17
echo                           The current state of your finances: %money%$
if "%update_dealer%"=="true" ( set time_gap_dealer=0 & set update_dealer=false&  goto dealer_repeat  )
goto dealer_odcthrow

:polozka_2
set polozka=legendary bear_sword
set /a price=45
if "%update_dealer%"=="true" (
if %money% LSS %price% ( set /a money_shortage_value=%price%-%money% & goto money_dealer_shortage )
set weapon=legendary bear_sword
set /a money-=%price% )
echo.
echo   You bought a legendary bear_sword. The current strength of your attack: 5-20
echo                           The current state of your finances: %money%$
if "%update_dealer%"=="true" ( set time_gap_dealer=0 & set update_dealer=false&  goto dealer_repeat  )
goto dealer_odcthrow

:polozka_3
set polozka=valecne armor
set /a price=50
if "%update_dealer%"=="true" (
if %money% LSS %price% ( set /a money_shortage_value=%price%-%money% & goto money_dealer_shortage )
set /a money-=%price%
set armor=valecne armor 
set /a my_health_max=150
set /a my_health=150 )
echo.
echo   You bought a valecne armor. The current state of your lives: %my_health%
echo                              The current state of your finances: %money%$
if "%update_dealer%"=="true" ( set time_gap_dealer=0 & set update_dealer=false&  goto dealer_repeat  )
goto dealer_odcthrow

:polozka_4
set polozka=stare armor
set /a price=25
if "%update_dealer%"=="true" (
if %money% LSS %price% ( set /a money_shortage_value=%price%-%money% & goto money_dealer_shortage )
set armor=stare armor 
set /a money-=%price%
set /a my_health_max=125
set /a my_health=125 )
echo.
echo   You bought a stare armor. The current state of your lives: %my_health%
echo                            The current state of your finances: %money%$
if "%update_dealer%"=="true" ( set time_gap_dealer=0 & set update_dealer=false&  goto dealer_repeat  )
goto dealer_odcthrow

:money_dealer_shortage
echo.
echo   BOB: I can't sell you %polozka%. You don't have enough money^^!
TIMEOUT /T 2 > "null" 
echo   You have %money_shortage_value%$ left to buy^^!


:dealer_odcthrow
set dealer_action=
TIMEOUT /T 3 > "null"
echo   +-------------------------------------------------------------------+
TIMEOUT /T 1 > "null"
echo   Press any key to return to the square of  %town_name%
pause > "null"
set time_gap_town=1
goto town_repeat



:INN
CLS
echo.
FOR /F %%# IN ('COPY /Z "%~dpf0" NUL') DO SET "CR=%%#"
FOR /L %%# IN (5,-1,1) DO (SET/P "=%BS% You're on your way to a inn ... %%# seconds. !CR!"<NUL:
PING -n 2 127.0.0.1 > NUL: )
TIMEOUT /T 1 > "null"
set time_gap_inn=1
:inn_repeat
CLS
if "%time_gap_inn%"=="1"  TIMEOUT /T 1 > "null"
echo   +----------------------------------------------+
if "%time_gap_inn%"=="1"  TIMEOUT /T 1 > "null"
echo                White Orchard inn   
if "%time_gap_inn%"=="1"  TIMEOUT /T 1 > "null"
echo.
echo    ^|-------------------------------------------^| 
if "%time_gap_inn%"=="1"  PING -n 1 127.0.0.1 >NUL:   
echo    ^|                 INN                       ^|   
if "%time_gap_inn%"=="1"  PING -n 1 127.0.0.1 >NUL:   
echo    ^|-------------------------------------------^|  
if "%time_gap_inn%"=="1"  PING -n 1 127.0.0.1 >NUL:   
echo    ^| 1. play dice                              ^|
if "%time_gap_inn%"=="1"  PING -n 1 127.0.0.1 >NUL:       
echo    ^| 2. leave                                  ^| 
if "%time_gap_inn%"=="1"  PING -n 1 127.0.0.1 >NUL:    
echo    ^|-------------------------------------------^| 
echo.
if "%time_gap_inn%"=="1"  TIMEOUT /T 1 > "null"
echo   +----------------------------------------------+
if "%time_gap_inn%"=="1"  TIMEOUT /T 4 > "null"
echo.
echo   What do you want to do? [1-2]
if "%time_gap_inn%"=="1"  TIMEOUT /T 1 > "null"
::fix answer
set /p inn_action=%BS%  Answer: 

if "%inn_action%"=="" ( set time_gap_inn=0 & goto inn_repeat )
if %inn_action%==1 ( goto DICE )
if %inn_action%==2 ( goto leave_inn )
if /i NOT "%inn_action%"=="%inn_action:dice=%" ( goto DICE )
if /i NOT "%inn_action%"=="%inn_action:odej=%" ( goto leave_inn )
set time_gap_inn=0 & goto inn_repeat

:DICE
set name1=John& set name2=Frank
set /a name_random=%random% %%3
if "%name_random%"=="0" ( set name1=John& set name2=Frank)
if "%name_random%"=="1" ( set name1=BOB& set name2=Frank)
if "%name_random%"=="2" ( set name1=Raul& set name2=John)

TIMEOUT /T 1 > "null"
echo.
echo   You sat down at the table where I play dice...
TIMEOUT /T 2 > "null"
echo   The goal is to throw it to the dice as many as possible...
TIMEOUT /T 3 > "null"
:dice_bet
echo   How much money do you want to bet? ^(Now you have %money%$^)
TIMEOUT /T 2 > "null"
:answer_dice
set /p bet=%BS%  Answer:
if "%bet%"=="" ( goto answer_dice )
if %bet% GTR %money% ( goto answer_dice )
TIMEOUT /T 1 > "null"
set throw1=hasnotthrown
set /a bet1=%random% %%4 + %bet%
set /a bet2=%random% %%4 + %bet%
set throw2=hasnotthrown
set your_throw=hasnotthrown
:dice_beginning
CLS
echo.
echo                     SCORE                    
echo   +----------------------------------------+   
echo    You: %your_throw% - Bet money: %bet%$ 
echo    %name1%: %throw1% - Bet money: %bet1%$                              
echo    %name2%:  %throw2% - Bet money: %bet2%$                                                         
echo   +----------------------------------------+
TIMEOUT /T 4 > "null" 
echo.
if NOT "%throw2%"=="hasnotthrown" goto vysledek
if NOT "%throw1%"=="hasnotthrown" goto throw2
if NOT "%your_throw%"=="hasnotthrown" goto throw1


echo   You start with your throw^^!
TIMEOUT /T 2 > "null"
echo   Press any key to throw dice^^!
echo   ------------------------------------------
pause > "null"
set /a your_throw=%random% %%5 + 1
echo   Throwil jsi cislo %your_throw%.
echo   ------------------
TIMEOUT /T 2 > "null"
goto dice_beginning
:throw1
FOR /F %%# IN ('COPY /Z "%~dpf0" NUL') DO SET "CR=%%#"
FOR /L %%# IN (5,-1,1) DO (SET/P "=%BS%  Now %name1% rolls dice... %%# seconds. !CR!"<NUL:
PING -n 2 127.0.0.1 > NUL: )
set /a throw1=%random% %%6 + 1
if "%throw1%"=="%your_throw%" ( set /a throw1-=1)
if "%throw1%"=="0" ( set /a throw1+=2)
goto dice_beginning
:throw2
FOR /F %%# IN ('COPY /Z "%~dpf0" NUL') DO SET "CR=%%#"
FOR /L %%# IN (5,-1,1) DO (SET/P "=%BS%  Now %name2% rolls dice... %%# seconds. !CR!"<NUL:
PING -n 2 127.0.0.1 > NUL: )
set /a throw2=%random% %%6 + 1
if "%throw2%"=="%your_throw%" ( set /a throw2-=1)
if "%throw2%"=="0" ( set /a throw2+=2)
goto dice_beginning

:vysledek
TIMEOUT /T 1 > "null" 
if %your_throw% GTR %throw1% ( if %your_throw% GTR %throw2% ( goto win ) )

if "%your_throw%" LSS "%throw1%" ( goto defeat )
if "%your_throw%" LSS "%throw2%" ( goto defeat )


:win
set /a win=%bet1%+%bet2%
set /a money+=%win%
echo   You WON the dice. Won money: %win%$
TIMEOUT /T 2 > "null" 
echo   The current state of your finances: %money%$
goto play_again

:defeat
set /a money-=%bet%
echo   You LOST the dice. Lost money: %bet%$
TIMEOUT /T 2 > "null" 
echo    The current state of your finances: %money%$
goto play_again


:play_again
TIMEOUT /T 3 > "null"
echo   ---------------------------------
TIMEOUT /T 1 > "null"
echo   Do you wanna play dice again? [yes/no]
TIMEOUT /T 2 > "null"
set /p dice_again=%BS%  Answer:
if /i NOT "%dice_again%" EQU "%dice_again:yes=%" goto dice_bet
if /i NOT "%dice_again%" EQU "%dice_again:no=%" goto leave_dice
goto leave_dice

:leave_dice
TIMEOUT /T 2 > "null"
echo   +-------------------------------------------------------------------+
TIMEOUT /T 1 > "null"
echo   Press any key to return to the square of  %town_name%
pause > "null"
set time_gap_town=1
goto town_repeat



:leave_inn
set inn_action=
TIMEOUT /T 2 > "null"
echo   +-------------------------------------------------------------------+
TIMEOUT /T 1 > "null"
echo   Press any key to return to the square of  %town_name%
pause > "null"
set time_gap_town=1
goto town_repeat


:TOWN_OUT
CLS
echo.
FOR /F %%# IN ('COPY /Z "%~dpf0" NUL') DO SET "CR=%%#"
FOR /L %%# IN (10,-1,1) DO (SET/P "=%BS% You're on your way out of town ... %%# seconds. !CR!"<NUL:
PING -n 2 127.0.0.1 > NUL: ) 
CLS
echo.
echo  You left town %town_name%^^!
TIMEOUT /T 3 > "null"
goto MENU


:MENU
:: music off menu
Taskkill /IM "wscript.exe" /F>nul 2>&1
:: Defining variables in MENU! time gap determines whether to start TIMEOUTY - Resetting the GO variable
set time_gap=1
set go=
set action=
:menu_repeat
set action=
CLS
echo.   
ECHO  Your name: %player_name%   
echo  ------------------------------+
if "%time_gap%"=="1"  TIMEOUT /T 1 > "null"     
ECHO  Health: %my_health%
if "%time_gap%"=="1"  TIMEOUT /T 1 > "null"
ECHO  School of the %character%
if "%time_gap%"=="1"  TIMEOUT /T 1 > "null"
ECHO  Inventory: %weapon_default%, %weapon%, %money%$
if "%time_gap%"=="1"  TIMEOUT /T 1 > "null" 
if "%time_gap%"=="1"  TIMEOUT /T 1 > "null" 
echo  ------------------------------+
echo.
if "%time_gap%"=="1"  TIMEOUT /T 1 > "null"    
echo  ^|-----------------------------^|
if "%time_gap%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo  ^|             MAP             ^|
if "%time_gap%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo  ^|-----------------------------^|
if "%time_gap%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo  ^| 1. Monster Nest             ^|
if "%time_gap%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo  ^| 2. White Orchard            ^|
if "%time_gap%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo  ^| 3. Velen and Novigrad       ^|
if "%time_gap%"=="1"  PING -n 1 127.0.0.1 >NUL:
echo  ^|-----------------------------^|
if "%time_gap%"=="1" TIMEOUT /T 4 > "null"  
echo.
echo.
echo  Where do you want to go?
if "%time_gap%"=="1" TIMEOUT /T 1 > "null"  
set /p go=%BS% Answer:

if "%go%"=="" ( set time_gap=0 & goto menu_repeat )
if /i NOT "%go%"=="%go:whiteorchard=%" ( goto action_WHITE_orchard  )
if /i NOT "%go%"=="%go:monsternest=%" ( goto action_MONSTERNEST )
if /i NOT "%go%"=="%go:velen=%" ( goto action_Velen_&_Novigrad )
if %go%==1 ( goto action_MONSTERNEST)
if %go%==2 ( goto action_WHITE_orchard )
if %go%==3 (goto action_Velen_&_Novigrad )
set time_gap=0 & goto menu_repeat

:action_WHITE_orchard
set town_name=WhiteOrchard
goto TOWN

:action_Velen_&_Novigrad
set town_name=Lens
goto TOWN


:action_MONSTERNEST
goto MONSTER_NEST

:END
::music off
Taskkill /IM "wscript.exe" /F>nul 2>&1
pause > "null"












