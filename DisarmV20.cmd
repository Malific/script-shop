#Disarm V2.1
counter set 0
INTRO:
echo
put echo /on
waitfor echo
echo
echo ***********************************************
echo **  [|][|]   [|]  []   [][] []|[] [][]  [][] **
echo ** [] [] [] [] [] []    []  []     []  []    **
echo ** [] [] [] []|[] []    []  [][]   []  []    **
echo ** [] [] [] [] [] [][] [][] []    [][]  [][] **
echo ***********************************************
echo
put echo /off
waitfor echo
echo
echo DisarmV20
echo Last Tweak 5/11/2009 5:58PM
echo
echo SITE:  http://www.malific.com/
echo AIM:   Malific Drockmur
echo EMAIL: drockmali@hotmail.com
echo BACKUP: http://www.geocities.com/malificdr/
echo
echo *******************************
echo ** Special Thanks:
echo ** This script made possible by Markhor's Guide to Traps
echo ** http://markman.name/dr/aller.html
echo *******************************
echo
IF_4 goto Credit
echo
echo
echo ********************************************************************************
echo ** Usage: .DisarmV20 <YES/NO> <Disarm> <Lockpick> <Harvest Storage> (person)
echo **
echo ** YES/NO = Do you want to automatically dump items the script can't loot by double dismantling the box?
echo ** Disarm = Careful Quick Normal Blind
echo ** Lockpick = Careful Quick Normal Blind
echo ** Harvest Storage = Container (or trashcan) for harvested materials
echo ** Person = full first name of person if picking for someone else (optional)
echo **
echo ** Multiword containers need to be connected by periods.
echo ** Blackened.case trash.bin
echo **
echo ** Example: .Disarmv20 yes careful quick trash.bin Malific
echo **
echo ********************************************************************************
echo
echo
exit

Credit:
counter set 1
ALL:
QUICK:
CAREFUL:
NORMAL:
BLIND:

next1:
	match stow STORE HELP
	match stow in what?
	match next11 you put
	match next11 STOW HELP
put stow right
	matchwait

next11:
pause
	match stow STORE HELP
	match stow in what?
	match armorop you put
	match armorop STOW HELP
put stow left
	matchwait

stow:
	echo
	echo ***************************************************************
	echo **                                                           **
	echo ** YOU MUST SET YOUR CONTAINER FOR STOWING ITEMS TO CONTINUE **
	echo **                                                           **
	echo ***************************************************************
	echo
put STORE HELP
	match next1 you put your
	matchwait

armorop:
	echo
	echo ***************************************************************
	echo **                                                           **
	echo **              TO REMOVE ARMOR TYPE <ARMOR>                 **
	echo **        TO GO STRAIGHT TO DISARMING TYPE <DISARM>          **
	echo **                                                           **
	echo ***************************************************************
	echo
	match start armor
	match next disarm
	matchwait

start:
pause 1
	match removecoif coif
	match removerobe  robe
	match removebuckler buckler
	match removegloves gloves
	match removegauntlets gauntlets
	match removebalaclava balaclava
	match removecowl cowl
	match removecoat coat
	match removeleathers leathers
	match removehauberk hauberk
	match removearmor armor
	match removemail  mail
	match removehood hood
	match removebreastplate breastplate
	match removeplate plate
	match removejerkin jerkin
	match removelorica lorica
	match removeshirt shirt
	match removehelm helm
	match removetasset tasset
	match removeaventail aventail
	match removegreaves greaves
	match removevambraces vambraces
	match removechain chain
	match removeshield shield
	match removetarge targe
	match removesipar sipar
	match removehat cavalier hat
	match removemask  mask
	match removeknuckles  knuckles
	match next nothing of that sort
	match start2 Encumbrance
put inv armor
put encumb
	matchwait

start2:
pause 1
	match removecorselet  corselet
	match next nothing of that sort
	match warn Encumbrance
put inv armor
put encumb
	matchwait


WARN:
	match next go what?
	echo
	echo *********************************************************
	echo **  Automatic removal may not support the more exotic  **
	echo **           pieces. Remove missed items and           **
	echo **               type <GO> To resume.                  **
	echo *********************************************************
	echo
	matchwait

removecoif:
put remove coif
wait
put stow coif
	match start you put your
	match stow in what?
	matchwait

removerobe:
put remove robe
wait
put stow robe
	match start you put your
	match stow in what?
	matchwait

removeknuckles:
put remove knuckles
wait
put stow knuckles
	match start you put your
	match stow in what?
	matchwait

removehat:
put remove hat
wait
put stow hat
	match start you put your
	match stow in what?
	matchwait

removesipar:
put remove sipar
wait
put stow sipar
	match start you put your
	match stow in what?
	matchwait

removebuckler:
put remove buckler
wait
put stow buckler
	match start you put your
	match stow in what?
	matchwait

removetarge:
put remove targe
wait
put stow targe
	match start you put your
	match stow in what?
	matchwait

removeshield:
put remove shield
wait
put stow shield
	match start you put your
	match stow in what?
	matchwait

removechain:
put remove chain
wait
put stow chain
	match start you put your
	match stow in what?
	matchwait

removevambraces:
put remove vambraces
wait
put stow vambraces
	match start you put your
	match stow in what?
	matchwait

removegreaves:
put remove greaves
wait
put stow greaves
	match start you put your
	match stow in what?
	matchwait

removeaventail:
put remove aventail
wait
put stow aventail
	match start you put your
	match stow in what?
	matchwait

removetasset:
put remove tasset
wait
put stow tasset
	match start you put your
	match stow in what?
	matchwait

removehelm:
put remove helm
wait
put stow helm
	match start you put your
	match stow in what?
	matchwait

removeshirt:
put remove shirt
wait
put stow shirt
	match start you put your
	match stow in what?
	matchwait


removelorica:
put remove lorica
wait
put stow lorica
	match start you put your
	match stow in what?
	matchwait

removejerkin:
put remove jerkin
wait
put stow jerkin
	match start you put your
	match stow in what?
	matchwait

removeplate:
put remove plate
wait
put stow plate
	match start you put your
	match stow in what?
	matchwait

removebreastplate:
put remove breastplate
wait
put stow breastplate
	match start you put your
	match stow in what?
	matchwait

removehood:
put remove hood
wait
put stow hood
	match start you put your
	match stow in what?
	matchwait

removemail:
put remove mail
wait
put stow mail
	match start you put your
	match stow in what?
	matchwait

removearmor:
put remove armor
wait
put stow armor
	match start you put your
	match stow in what?
	matchwait

removehauberk:
put remove hauberk
wait
put stow hauberk
	match start you put your
	match stow in what?
	matchwait

removeleathers:
put remove leathers
wait
put stow leathers
	match start you put your
	match stow in what?
	matchwait

removecoat:
put remove coat
wait
put stow coat
	match start you put your
	match stow in what?
	matchwait

removecowl:
put remove cowl
wait
put stow cowl
	match start you put your
	match stow in what?
	matchwait

removebalaclava:
put remove balaclava
wait
put stow balaclava
	match start you put your
	match stow in what?
	matchwait

removegauntlets:
put remove gauntlets
wait
put stow gauntlets
	match start you put your
	match stow in what?
	matchwait

removemask:
put remove mask
wait
put stow mask
	match start you put your
	match stow in what?
	matchwait

removecorselet:
put remove corselet
wait
put stow corselet
	match start2 you put your
	match stow in what?
	matchwait

removegloves:
put remove gloves
wait
put stow gloves
	match start you put your
	match stow in what?
	matchwait


exit1:

	echo
	echo ***********************************************************
	echo ** Welcome to the new, the innovative, the semiautomatic **
	echo **            PUT-YOUR-ARMOR-BACK-ON script              **
	echo **                                                       **
	echo **        Brought to you by Malific Drockmur             **
	echo **                                                       **
	echo **  Simply type the name of the piece you want to wear!  **
	echo **          Just hit ESC to quit the script              **
	echo **                                                       **
	echo **      And remember always spell out the word!          **
	echo **                                                       **
	echo ***********************************************************
	echo
goto weararm


weararmor:
pause 1
	echo
	echo **********************************************************
	echo ** A wonderful choice! Is there anything else you want? **
	echo **     If not, Just hit ESC and Thanks for playing!     **
	echo **                                                      **
	echo ** By the way, if there's anything that this won't grab **
	echo ** be sure to let Malific know at DrockMali@Hotmail.com **
	echo **********************************************************
	echo




weararm:
	match wearcoif coif
	match getrobe  robe
	match getbuckler buckler
	match getgloves gloves
	match getbreastplate breastplate
	match getgauntlets gauntlets
	match getbalaclava balaclava
	match getcowl cowl
	match getleathers leathers
	match gethauberk hauberk
	match getarmor armor
	match getmail  mail
	match gethood hood
	match getplate plate
	match getjerkin jerkin
	match getlorica lorica
	match getshirt shirt
	match gethelm helm
	match gettasset tasset
	match getaventail aventail
	match getgreaves greave
	match getvambraces vambrace
	match getshield shield
	match gettarge targe
	match gethandwraps handwraps
	match getknuckles knuckles
	match getcoat coat
	match getmask  mask
	match getchain  chain
	matchwait

getcoif:
put get coif
wait
put wear coif
goto weararmor

getrobe:
put get robe
wait
put wear robe
goto weararmor

getknuckles:
put get knuckles
wait
put wear knuckles
goto weararmor

gethandwraps:
put get handwraps
wait
put wear handwraps
goto weararmor

getbuckler:
put get buckler
wait
put wear buckler
goto weararmor

gettarge:
put get targe
wait
put wear targe
goto weararmor

getchain:
put get chain
wait
put wear chain
goto weararmor

getvambraces:
put get vambraces
wait
put wear vambraces
goto weararmor

getgreaves:
put get greaves
wait
put wear greaves
goto weararmor

getaventail:
put get aventail
wait
put wear aventail
goto weararmor

gettasset:
put get tasset
wait
put wear tasset
goto weararmor

gethelm:
put get helm
wait
put wear helm
goto weararmor

getshirt:
put get shirt
wait
put wear shirt
goto weararmor

getlorica:
put get lorica
wait
put wear lorica
goto weararmor

getjerkin:
put get jerkin
wait
put wear jerkin
goto weararmor

getplate:
put get plate
wait
put wear plate
goto weararmor

getbreastplate:
put get breastplate
wait
put wear breastplate
goto weararmor

gethood:
put get hood
wait
put wear hood
goto weararmor

getmail:
put get mail
wait
put wear mail
goto weararmor

getarmor:
put get armor
wait
put wear armor
goto weararmor

gethauberk:
put get hauberk
wait
put wear hauberk
goto weararmor

getleathers:
put get leathers
wait
put wear leathers
goto weararmor

getcoat:
put get coat
wait
put wear coat
goto weararmor

getcowl:
put get cowl
wait
put wear cowl
goto weararmor

getbalaclava:
put get balaclava
wait
put wear balaclava
goto weararmor

getgauntlets:
put get gauntlets
wait
put wear gauntlets
goto weararmor

getmask:
put get mask
wait
put wear mask
goto weararmor

getgloves:
put get gloves
wait
put wear gloves
goto weararmor

getshield:
put get shield
wait
put wear shield
goto weararmor


next:
pause
IF_5 goto accept
goto boxes




#ACCEPTING FROM ANOTHER PLAYER


accept:
put accept
	match accept2 you have no offers
	match expdis you accept
	matchwait

accept2:
	echo
	echo *********************
	echo *                   *
	echo *  Waiting for box  *
	echo *                   *
	echo *********************
	echo
waitfor offers you
put accept
pause
goto expdis




GETTING THE BOX SECTION:

boxes:
put stow right
goto coffer1

coffer:
coffer1:
pause
	match gcoffer1 It is locked
	match chest1 referring to?
	match coffer2 That is already open
	match coffer2 you open
put open my first coffer
	matchwait

gcoffer1:
pause
put get my first coffer
pause
goto expdis


coffer2:
pause
	match gcoffer2 It is locked
	match chest1 referring to?
	match coffer3 That is already open
	match coffer3 you open
put open my second coffer
	matchwait

gcoffer2:
pause
put get my second coffer
pause
goto expdis

coffer3:
pause
	match gcoffer3 It is locked
	match chest1 referring to?
	match coffer4 That is already open
	match coffer4 you open
put open my third coffer
	matchwait

gcoffer3:
pause
put get my third coffer
pause
goto expdis


coffer4:
pause
	match gcoffer4 It is locked
	match chest1 referring to?
	match coffer5 That is already open
	match coffer5 you open
put open my fourth coffer
	matchwait

gcoffer4:
pause
put get my fourth coffer
pause
goto expdis


coffer5:
pause
	match gcoffer5 It is locked.
	match chest1 referring to?
	match coffer6 That is already open
	match coffer6 you open
put open my fifth coffer
	matchwait

gcoffer5:
pause
put get my fifth coffer
pause
goto expdis

coffer6:
pause
	match gcoffer6 It is locked.
	match chest1 referring to?
	match coffer7 That is already open
	match coffer7 you open
put open my sixth coffer
	matchwait

gcoffer6:
pause
put get my sixth coffer
pause
goto expdis

coffer7:
goto chest1


chest:
chest1:
pause
	match gchest1 It is locked
	match trunk1 referring to?
	match chest2 That is already open
	match chest2 you open
put open my first chest
	matchwait

gchest1:
pause
put get my first chest
pause
goto expdis


chest2:
pause
	match gchest2 It is locked
	match trunk1 referring to?
	match chest3 That is already open
	match chest3 you open
put open my second chest
	matchwait

gchest2:
pause
put get my second chest
pause
goto expdis

chest3:
pause
	match gchest3 It is locked
	match trunk1 referring to?
	match chest4 That is already open
	match chest4 you open
put open my third chest
	matchwait

gchest3:
pause
put get my third chest
pause
goto expdis


chest4:
pause
put open my fourth chest
	match gchest4 It is locked
	match trunk1 referring to?
	match chest5 That is already open
	match chest5 you open
	matchwait

gchest4:
pause
put get my fourth chest
pause
goto expdis


chest5:
pause
	match gchest5 It is locked.
	match trunk1 referring to?
	match chest6 That is already open
	match chest6 you open
put open my fifth chest
	matchwait

gchest5:
pause
put get my fifth chest
pause
goto expdis


chest6:
pause
	match gchest6 It is locked.
	match trunk1 referring to?
	match chest7 That is already open
	match chest7 you open
put open my sixth chest
	matchwait

gchest6:
pause
put get my sixth chest
pause
goto expdis

chest7:
goto trunk1


trunk:
trunk1:
pause
	match gtrunk1 It is locked
	match strongbox1 referring to?
	match trunk2 That is already open
	match trunk2 you open
put open my first trunk
	matchwait

gtrunk1:
pause
put get my first trunk
pause
goto expdis


trunk2:
pause
	match gtrunk2 It is locked
	match strongbox1 referring to?
	match trunk3 That is already open
	match trunk3 you open
put open my second trunk
	matchwait

gtrunk2:
pause
put get my second trunk
pause
goto expdis


trunk3:
pause
	match gtrunk3 It is locked
	match strongbox1 referring to?
	match trunk4 That is already open
	match trunk4 you open
put open my third trunk
	matchwait

gtrunk3:
pause
put get my third trunk
pause
goto expdis


trunk4:
pause
	match gtrunk4 It is locked
	match strongbox1 referring to?
	match trunk5 That is already open
	match trunk5 you open
put open my fourth trunk
	matchwait

gtrunk4:
pause
put get my fourth trunk
pause
goto expdis

trunk5:
pause
	match gtrunk5 It is locked.
	match strongbox1 referring to?
	match trunk6 That is already open
	match trunk6 you open
put open my fifth trunk
	matchwait

gtrunk5:
pause
put get my fifth trunk
pause
goto expdis

trunk6:
pause
	match gtrunk6 It is locked.
	match strongbox1 referring to?
	match trunk7 That is already open
	match trunk7 you open
put open my sixth trunk
	matchwait

gtrunk6:
pause
put get my sixth trunk
pause
goto expdis

trunk7:
goto strongbox1


strongbox:
strongbox1:
pause
	match gstrongbox1 It is locked
	match strongbox7 referring to?
	match strongbox2 That is already open
	match strongbox2 you open
put open my first strongbox
	matchwait

gstrongbox1:
pause
put get my first strongbox
pause
goto expdis

strongbox2:
pause
	match gstrongbox2 It is locked
	match strongbox7 referring to?
	match strongbox3 That is already open
	match strongbox3 you open
put open my second strongbox
	matchwait

gstrongbox2:
pause
put get my second strongbox
pause
goto expdis


strongbox3:
pause
	match gstrongbox3 It is locked
	match strongbox7 referring to?
	match strongbox4 That is already open
	match strongbox4 you open
put open my third strongbox
	matchwait

gstrongbox3:
pause
put get my third strongbox
pause
goto expdis


strongbox4:
pause
	match gstrongbox4 It is locked
	match strongbox7 referring to?
	match strongbox5 That is already open
	match strongbox5 you open
put open my fourth strongbox
	matchwait

gstrongbox4:
pause
put get my fourth strongbox
pause
goto expdis


strongbox5:
pause
	match gstrongbox5 It is locked.
	match strongbox7 referring to?
	match strongbox6 That is already open
	match strongbox6 you open
put open my fifth strongbox
	matchwait

gstrongbox5:
pause
put get my fifth strongbox
pause
goto expdis

strongbox6:
pause
	match gstrongbox6 It is locked.
	match strongbox7 referring to?
	match strongbox7 That is already open
	match strongbox7 you open
put open my sixth strongbox
	matchwait

gstrongbox6:
pause
put get my sixth strongbox
pause
goto expdis

strongbox7:
goto casket1

casket:
casket1:
pause
	match gcasket1 It is locked
	match box1 referring to?
	match casket2 That is already open
	match casket2 you open
put open my first casket
	matchwait

gcasket1:
pause
put get my first casket
pause
goto expdis


casket2:
pause
	match gcasket2 It is locked
	match box1 referring to?
	match casket3 That is already open
	match casket3 you open
put open my second casket
	matchwait

gcasket2:
pause
put get my second casket
pause
goto expdis

casket3:
pause
	match gcasket3 It is locked
	match box1 referring to?
	match casket4 That is already open
	match casket4 you open
put open my third casket
	matchwait

gcasket3:
pause
put get my third casket
pause
goto expdis


casket4:
pause
	match gcasket4 It is locked
	match box1 referring to?
	match casket5 That is already open
	match casket5 you open
put open my fourth casket
	matchwait

gcasket4:
pause
put get my fourth casket
pause
goto expdis


casket5:
pause
	match gcasket5 It is locked.
	match box1 referring to?
	match casket6 That is already open
	match casket6 you open
put open my fifth casket
	matchwait

gcasket5:
pause
put get my fifth casket
pause
goto expdis

casket6:
pause
	match gcasket6 It is locked.
	match box1 referring to?
	match casket7 That is already open
	match casket7 you open
put open my sixth casket
	matchwait

gcasket6:
pause
put get my sixth casket
pause
goto expdis

casket7:
goto box1

box:
box1:
pause
	match gbox1 It is locked
	match skippet1 referring to?
	match box2 That is already open
	match box2 you open
put open my first box
	matchwait

gbox1:
pause
put get my first box
pause
goto expdis


box2:
pause
	match gbox2 It is locked
	match skippet1 referring to?
	match box3 That is already open
	match box3 you open
put open my second box
	matchwait

gbox2:
pause
put get my second box
pause
goto expdis


box3:
pause
	match gbox3 It is locked
	match skippet1 referring to?
	match box4 That is already open
	match box4 you open
put open my third box
	matchwait

gbox3:
pause
put get my third box
pause
goto expdis


box4:
pause
	match gbox4 It is locked
	match skippet1 referring to?
	match box5 That is already open
	match box5 you open
put open my fourth box
	matchwait

gbox4:
pause
put get my fourth box
pause
goto expdis


box5:
pause
	match gbox5 It is locked.
	match skippet1 referring to?
	match box6 That is already open
	match box6 you open
put open my fifth box
	matchwait

gbox5:
pause
put get my fifth box
pause
goto expdis


box6:
pause
	match gbox6 It is locked.
	match skippet1 referring to?
	match box7 That is already open
	match box7 you open
put open my sixth box
	matchwait

gbox6:
pause
put get my sixth box
pause
goto expdis

box7:
goto skippet1

skippet:
skippet1:
pause
	match gskippet1 It is locked
	match caddy1 referring to?
	match skippet2 That is already open
	match skippet2 you open
put open my first skippet
	matchwait

gskippet1:
pause
put get my first skippet
pause
goto expdis


skippet2:
pause
	match gskippet2 It is locked
	match caddy1 referring to?
	match skippet3 That is already open
	match skippet3 you open
put open my second skippet
	matchwait

gskippet2:
pause
put get my second skippet
pause
goto expdis


skippet3:
pause
	match gskippet3 It is locked
	match caddy1 referring to?
	match skippet4 That is already open
	match skippet4 you open
put open my third skippet
	matchwait

gskippet3:
pause
put get my third skippet
pause
goto expdis


skippet4:
pause
	match gskippet4 It is locked
	match caddy1 referring to?
	match skippet5 That is already open
	match skippet5 you open
put open my fourth skippet
	matchwait

gskippet4:
pause
put get my fourth skippet
pause
goto expdis


skippet5:
pause
	match gskippet5 It is locked.
	match caddy1 referring to?
	match skippet6 That is already open
	match skippet6 you open
put open my fifth skippet
	matchwait

gskippet5:
pause
put get my fifth skippet
pause
goto expdis


skippet6:
pause
	match gskippet6 It is locked.
	match caddy1 referring to?
	match skippet7 That is already open
	match skippet7 you open
put open my sixth skippet
	matchwait

gskippet6:
pause
put get my sixth skippet
pause
goto expdis

skippet7:
goto caddy1

caddy:
caddy1:
pause
	match gcaddy1 It is locked
	match crate1 referring to?
	match caddy2 That is already open
	match caddy2 you open
put open my first caddy
	matchwait

gcaddy1:
pause
put get my first caddy
pause
goto expdis


caddy2:
pause
	match gcaddy2 It is locked
	match crate1 referring to?
	match caddy3 That is already open
	match caddy3 you open
put open my second caddy
	matchwait

gcaddy2:
pause
put get my second caddy
pause
goto expdis


caddy3:
pause
	match gcaddy3 It is locked
	match crate1 referring to?
	match caddy4 That is already open
	match caddy4 you open
put open my third caddy
	matchwait

gcaddy3:
pause
put get my third caddy
pause
goto expdis


caddy4:
pause
	match gcaddy4 It is locked
	match crate1 referring to?
	match caddy5 That is already open
	match caddy5 you open
put open my fourth caddy
	matchwait

gcaddy4:
pause
put get my fourth caddy
pause
goto expdis


caddy5:
pause
	match gcaddy5 It is locked.
	match crate1 referring to?
	match caddy6 That is already open
	match caddy6 you open
put open my fifth caddy
	matchwait

gcaddy5:
pause
put get my fifth caddy
pause
goto expdis


caddy6:
pause
	match gcaddy6 It is locked.
	match crate1 referring to?
	match caddy7 That is already open
	match caddy7 you open
put open my sixth caddy
	matchwait

gcaddy6:
pause
put get my sixth caddy
pause
goto expdis

caddy7:
goto crate1


crate:
crate1:
pause
	match gcrate1 It is locked
	match exit1 referring to?
	match crate2 That is already open
	match crate2 you open
put open my first crate
	matchwait

gcrate1:
pause
put get my first crate
pause
goto expdis


crate2:
pause
	match gcrate2 It is locked
	match exit1 referring to?
	match crate3 That is already open
	match crate3 you open
put open my second crate
	matchwait

gcrate2:
pause
put get my second crate
pause
goto expdis


crate3:
pause
	match gcrate3 It is locked
	match exit1 referring to?
	match crate4 That is already open
	match crate4 you open
put open my third crate
	matchwait

gcrate3:
pause
put get my third crate
pause
goto expdis


crate4:
pause
	match gcrate4 It is locked
	match exit1 referring to?
	match crate5 That is already open
	match crate5 you open
put open my fourth crate
	matchwait

gcrate4:
pause
put get my fourth crate
pause
goto expdis


crate5:
pause
	match gcrate5 It is locked.
	match exit1 referring to?
	match crate6 That is already open
	match crate6 you open
put open my fifth crate
	matchwait

gcrate5:
pause
put get my fifth crate
pause
goto expdis


crate6:
pause
	match gcrate6 It is locked.
	match exit1 referring to?
	match crate7 That is already open
	match crate7 you open
put open my sixth crate
	matchwait

gcrate6:
pause
put get my sixth crate
pause
goto expdis

crate7:
goto exit1




DISARMING SECTION:

expdis:
put skill disarm
	match sleep % mind lock
	match awaken Exp help
	matchwait

sleep:
pause
IF_5 put sleep
IF_5 goto glance
	echo *************
	echo *           *
	echo *  Pausing  *
	echo *           *
	echo *************
pause 15
goto expdis

awaken:
put awaken
goto glance

glance:
put glance
	match distrunk1 trunk in your
	match dischest1 chest in your
	match discoffer1 coffer in your
	match disstrongbox1 strongbox in your
	match disskippet1 skippet in your
	match discaddy1 caddy in your
	match discasket1 casket in your
	match disbox1 box in your
	match discrate1 crate in your
	match next empty hands
	matchwait

distrunk1:
save trunk
goto BoxApp

dischest1:
save chest
goto BoxApp

discoffer1:
save coffer
goto BoxApp

disstrongbox1:
save strongbox
goto BoxApp

disskippet1:
save skippet
goto BoxApp

discasket1:
save casket
goto BoxApp

discaddy1:
save caddy
goto BoxApp

disbox1:
save box
goto BoxApp

discrate1:
save crate
goto BoxApp

BoxApp:
pause
put app my %s
pause
goto disident

DISARMING AREA:


disident:
pause
	match disident ...wait
	match disident fails to reveal to you what type of trap protects it.
	match Naphtha1 you notice a small notch beside a tiny metal lever on the front.
	match Poison You notice a tiny needle with a greenish discoloration on its tip hidden next to the keyhole.
	match Boomer A glistening black square, surrounded by a tight ring of fibrous cord, catches your eye.
	match Acid As you look closely, you notice a tiny hole right next to the lock which looks to be a trap of some kind.
	match Razor Out of the corner of your eye, you notice a glint of razor sharp steel hidden within a suspicious looking seam on the
	match Shocker You notice two silver studs right below the keyhole which look dangerously out of place there.
	match Gas You notice a vial of lime green liquid just under the
	match Mana for traps, you notice a bronze seal over the
	match Bolt concealing the points of several wickedly barbed crossbow bolts.
	match Nerve You notice a tiny needle with a rust colored discoloration on its tip hidden next to the keyhole.
	match Naphtha A tiny striker is cleverly concealed under the lid, set to ignite a frighteningly large vial of naphtha.
	match Lightning Looking closely into the keyhole, you spy what appears to be a pulsating ball with some
	match Shrapnel keyhole is packed tightly with a powder around the insides of the lock.
	match Disease patiently, you see what appears to be a small, swollen animal bladder recessed inside the keyhole.
	match Dart The glint of silver from the tip of a dart
	match Laughing Examining the box for traps reveals a tiny glass tube filled with a black gaseous substance of some sort
	match Bouncer keyhole you see what seems to be a pin lodged against the tumblers of the lock
	match Pbolt concealing the points of several crossbow bolts glistening with moisture.
	match Shockwave Right above the lock inside the keyhole, you see a tiny metal tube just poking out of a small wad of brown clay.
	match Rune with an careful eye, you notice a small glowing rune hidden inside the box near the lock.
	match Frogger lumpy green rune
	match Mime Some sort of fatty bladder sticks out from the edges of this miniature metallic visage.
	match Shadowling with a careful eye, you notice a small black crystal deep in the shadows of the
	match Flea Small black dots bounce inside, though the lack of transparency makes it impossible to be certain what they are.
	match Teleporter are covered with a thin metal circle that has been lacquered with a shade of
	match Thief front is the painted image of a small yet amazingly pretty Elf girl
	match Vykathi covered black scarab of some unidentifiable substance clings to the
	match Sleeper lock indicate that something is awry.
	match pick don't see any reason
	match CHECKID roundtime
put disarm my %s Identify
	matchwait

CHECKID:
pause
	match CHECKID ...wait
	match DISCHECK A bent needle sticks harmlessly out from its hidden compartment near the lock.
	match DISCHECK Several strands of wicker detonator lay inside the casement, separated harmlessly from their charge.
	match DISCHECK You notice a tiny hole near the lock which has been stuffed with dirt rendering the trap harmless. 
	match DISCHECK to a razor-sharp scythe blade within the gap.
	match DISCHECK It looks like there used to be something in them, but whatever it was has been pried out.
	match DISCHECK Someone has unhooked the stopper, rendering it harmless.
	match DISCHECK The seal has been pried away from the lid.
	match DISCHECK have been bent in such a way that they no longer will function.
	match DISCHECK You see a pin and shaft lodged into the frame of the
	match DISCHECK It appears, however, that the dart has been moved too far out of position for the mechanism to function properly.
	match DISCHECK A small hole near the lock seems to have had something removed. All you see now is a spring that's been sprung.
	match DISCHECK You see a shattered glass tube with a tiny hammer inside the lock
	match DISCHECK You notice a some type of animal bladder and a disconnected string near the lock.
	match DISCHECK and the remnants of some type of powder
	match DISCHECK You notice a sphere with some type of lacing around it. It seems a small portion of the trap has been removed.
	match DISCHECK and a damp stain down the front, as if something had been poured out the hole.
	match DISCHECK Several small pinholes centered around the keyhole indicate that some sort of apparatus, previously attached, was picked apart and removed from the 
	match DISCHECK but has been defaced and is barely recognizable. 
	match DISCHECK has been peeled away from the hinges of the
	match DISCHECK implies that some small round object was torn free and discarded.
	match DISCHECK You see nothing of interest in the 
	match DISCHECK Behind this metallic visage rests a small deflated bladder.
	match DISCHECK It seems far enough away from the lock to be harmless. 
	match DISCHECK You see what appears to be some sort of clay. The leading edge near the lock itself has been pulled away and whatever was inside, removed. 
	match DISCHECK lock are sealed with dirt, blocking whatever would have come out.
	match disident roundtime
put disarm my %s identify
	matchwait


DISCHECK:
Disarm:
pause
	match disarm ...wait
	match next referring to?
	match critfail something to shift
	match disarm You work with the trap for a while but are unable to make any progress.
	match BlowPoison needle, you notice with horror a greenish coating
	match BlowBoomer An acrid stream of sulfurous air hisses quietly
	match BlowAcid A stream of corrosive acid sprays out from the
	match BlowRazor With a sinister swishing noise, a deadly sharp scythe blade whips out the front of the
	match BlowShocker There is a sudden flash of greenish light, and a huge electrical charge sends you flying backwards through the air.
	match BlowGas A stoppered vial opens with a pop and cloud of thick green vapor begins to pour out of the
	match BlowMana breaks in half. A glass sphere on the seal begins to glow with an eerie black light, which grows and spreads until it covers your entire body like a shimmering cloak of darkness.
	match BlowBolt Just as your ears register the sound of a sharp snap
	match BlowNerve Looking at the needle, you notice with horror the rust colored coating on the tip.
	match BlowNaphtha You barely have time to register a faint click before a blinding flash explodes around you, and you find yourself being hurled halfsenseless through the air!
	match BlowLightning Moving with the grace of a pregnant goat, you carelessly flick at the piece of metal causing a lace to rupture the sphere.
	match BlowShrapnel You make a small hole in the side of the box and take deep breath to blow the powder free but a hint of smoke causes you to stare at the keyhole in amazement. With a sudden "Kaboom", the
	match BlowDisease With a cautious hand, you attempt to undo the string tying the bladder to the locking mechanism only to be greeted with a loud "Poof" followed by a cloud of small particles that flow from the
	match BlowDart The dart flies though your fingers and plants itself solidly in your forehead!
	match BlowLaughing Almost casually, you press on the tiny hammer set to break the tube. The hammer slips from its locked
	match BlowBouncer Nothing happened. Maybe it was a dud.
	match BlowShockwave You get a feeling that something isn't right. Before you have time to think what it might be you find...
	match BlowRune and emits a sound like tormented souls being freed, then fades away suddenly.
	match BlowFrogger has gotten much bigger!
	match BlowMime and clumsily shred the fatty bladder behind it in the process.
	match BlowShadowling "liquid shadows"
	match BlowFlea You wiggle the milky-white tube back and forth for a few moments in an attempt to remove it from
	match BlowThief With a nasty look and a liberal amount of hurled, unladylike epithets, she wiggles back inside and slams
	match BlowVykathi Not sure where to start, you begin by prying off the body of the crusty scarab, hoping to break it free of its clinging legs. It seems to
	match BlowSleeper You feel like you've done a good job of blocking up the pinholes, until you peer closely to examine your handywork.  At that moment, small puffs of blue powder
	match DisAnalyze2 is not yet fully disarmed.
	match DisAnalyze roundtime
put disarm my %s %2
	matchwait

DisAnalyze:
pause
	match DisAnalyze ...wait
	match DisAnalyze You are unable to determine a proper method of extracting part of the
	match next referring to?
	match DisarmHarvest roundtime
	match DisarmHarvest You've already analyzed
put disarm my %s Analyze
	matchwait

DisarmHarvest:
pause
	match DisarmHarvest ...wait
	match DisarmHarvest You fumble around with the trap apparatus, but are unable to extract anything of value.
	match HarvestStow roundtime
	match HarvestStow previous trap have already been completely harvested.
	match pick too much for it to be successfully harvested.
	match pick unsuitable for harvesting
	match DisarmCheckHarvest hands are too full
put disarm my %s harvest
	matchwait


DisarmCheckHarvest:
pause
	match disarmCheckHarvest ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match stow1 STORE HELP
	match stow1 in what?
	match DisarmHarvest you put
	match pick STOW HELP
put stow left
	matchwait

HarvestStow:
pause
	match HarvestStow ...wait
	match LEG leg in your left hand
	match FACE face in your left hand
	match SEAL seal in your left hand
	match CRYSTAL crystal in your left hand
	match TUBE tube in your left hand
	match RUNE1 rune in your left hand
	match NEEDLE needle in your left hand
	match RESERVOIR reservoir in your left hand
	match STRIKER striker in your left hand
	match BLADE blade in your left hand
	match SPRING spring in your left hand
	match CUBE cube in your left hand
	match STUDS studs in your left hand
	match DISC disc in your left hand
	match VIAL vial in your left hand
	match PIN pin in your left hand
	match HAMMER hammer in your left hand
	match pick nothing in your left hand
put glance
	matchwait

LEG:
pause
	match LEG ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my leg in %4
	matchwait

FACE:
pause
	match FACE ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my face in %4
	matchwait

SEAL:
pause
	match SEAL ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my seal in %4
	matchwait

CRYSTAL:
pause
	match CRYSTAL ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my crystal in %4
	matchwait

TUBE:
pause
	match TUBE ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my tube in %4
	matchwait

RUNE1:
pause
	match RUNE1 ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my rune in %4
	matchwait

NEEDLE:
pause
	match NEEDLE ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my needle in %4
	matchwait

RESERVOIR:
pause
	match RESERVOIR ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my reservoir in %4
	matchwait

STRIKER:
pause
	match STRIKER ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my striker in %4
	matchwait

BLADE:
pause
	match BLADE ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my blade in %4
	matchwait

SPRING:
pause
	match SPRING ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my spring in %4
	matchwait

CUBE:
pause
	match CUBE ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my cube in %4
	matchwait

STUDS:
pause
	match STUDS ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my studs in %4
	matchwait

PIN:
pause
	match PIN ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my pin in %4
	matchwait

DISC:
pause
	match DISC ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my disc in %4
	matchwait

VIAL:
pause
	match VIAL ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my vial in %4
	matchwait

HAMMER:
pause
	match HAMMER ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my hammer in %4
	matchwait

Stow2:
	echo
	echo ***********************************************************
	echo ** THE CONTAINER YOU ARE USING TO STOW THINGS IN IS FULL!**
	echo **           PLEASE CHOOSE ANOTHER CONTAINER             **
	echo **          OR FREE UP YOUR HANDS AND TYPE <GO>          **
	echo ***********************************************************
put STORE HELP
	match pick go what?
	match pick you put your
	matchwait

stow1:
	echo ***************************************************************
	echo **          YOU MUST SET YOUR CONTAINER FOR STOWING          **
	echo **          HARVESTED ITEMS! (CHECK YOUR LEFT HAND)          **
	echo ***************************************************************
put STORE HELP
	match pick you put your
	matchwait

DisAnalyze2:
pause
	match DisAnalyze2 ...wait
	match DisAnalyze2 You are unable to determine a proper method of extracting part of the
	match next referring to?
	match DisarmHarvest2 roundtime
	match DisarmHarvest2 You've already analyzed
put disarm my %s Analyze
	matchwait

DisarmHarvest2:
pause
	match DisarmHarvest2 ...wait
	match DisarmHarvest2 You fumble around with the trap apparatus, but are unable to extract anything of value.
	match HarvestStow2 roundtime
	match HarvestStow2 previous trap have already been completely harvested.
	match disident too much for it to be successfully harvested.
	match disident unsuitable for harvesting
	match DisarmCheckHarvest2 hands are too full
put disarm my %s harvest
	matchwait


DisarmCheckHarvest2:
pause
	match disarmCheckHarvest2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match stow12 in what?
	match stow12 STORE HELP
	match DisarmHarvest you put
	match disident STOW HELP
put stow left
	matchwait

HarvestStow2:
pause
	match Harveststow2 ...wait
	match LEG2 leg in your left hand
	match FACE2 face in your left hand
	match SEAL2 seal in your left hand
	match CRYSTAL2 crystal in your left hand
	match TUBE2 tube in your left hand
	match RUNE2 rune in your left hand
	match NEEDLE2 needle in your left hand
	match RESERVOIR2 reservoir in your left hand
	match STRIKER2 striker in your left hand
	match BLADE2 blade in your left hand
	match SPRING2 spring in your left hand
	match CUBE2 cube in your left hand
	match STUDS2 studs in your left hand
	match DISC2 disc in your left hand
	match VIAL2 vial in your left hand
	match PIN2 pin in your left hand
	match HAMMER2 hammer in your left hand
put glance
	matchwait

LEG2:
pause
	match LEG2 ...wait
	match stow2 isn't any more room
	match stow2 no matter how
	match pick you put
	match pick you drop
	match pick you place
put put my leg in %4
	matchwait

FACE2:
pause
	match FACE2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match disident you put
	match disident you drop
	match disident you place
put put my face in %4
	matchwait

SEAL2:
pause
	match SEAL2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match disident you put
	match disident you drop
	match disident you place
put put my seal in %4
	matchwait

CRYSTAL2:
pause
	match CRYSTAL2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match disident you put
	match disident you drop
	match disident you place
put put my crystal in %4
	matchwait

TUBE2:
pause
	match TUBE2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match disident you put
	match disident you drop
	match disident you place
put put my tube in %4
	matchwait

RUNE2:
pause
	match RUNE2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match disident you put
	match disident you drop
	match disident you place
put put my rune in %4
	matchwait

NEEDLE2:
pause
	match NEEDLE2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match disident you put
	match disident you drop
	match disident you place
put put my needle in %4
	matchwait

RESERVOIR2:
pause
	match RESERVOIR2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match disident you put
	match disident you drop
	match disident you place
put put my reservoir in %4
	matchwait

STRIKER2:
pause
	match STRIKER2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match disident you put
	match disident you drop
	match disident you place
put put my striker in %4
	matchwait

BLADE2:
pause
	match BLADE2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match disident you put
	match disident you drop
	match disident you place
put put my blade in %4
	matchwait

SPRING2:
pause
	match SPRING2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match disident you put
	match disident you drop
	match disident you place
put put my spring in %4
	matchwait

CUBE2:
pause
	match CUBE2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match disident you put
	match disident you drop
	match disident you place
put put my cube in %4
	matchwait

STUDS2:
pause
	match STUDS2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match disident you put
	match disident you drop
	match disident you place
put put my studs in %4
	matchwait

PIN2:
pause
	match PIN2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match disident you put
	match disident you drop
	match disident you place
put put my pin in %4
	matchwait

DISC2:
pause
	match DISC2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match disident you put
	match disident you drop
	match disident you place
put put my disc in %4
	matchwait

VIAL2:
pause
	match VIAL2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match disident you put
	match disident you drop
	match disident you place
put put my vial in %4
	matchwait

HAMMER2:
pause
	match HAMMER2 ...wait
	match stow22 isn't any more room
	match stow22 no matter how
	match disident you put
	match disident you drop
	match disident you place
put put my hammer in %4
	matchwait



Stow22:
	echo
	echo ***********************************************************
	echo ** THE CONTINER YOU ARE USING TO STOW THINGS IN IS FULL! **
	echo **           PLEASE CHOOSE ANOTHER CONTAINER             **
	echo **          OR FREE UP YOUR HANDS AND TYPE <GO>          **
	echo ***********************************************************
put STORE HELP
	match disident go what?
	match disident you put your
	matchwait

stow12:
	echo ***************************************************************
	echo **          YOU MUST SET YOUR CONTAINER FOR STOWING          **
	echo **          HARVESTED ITEMS! (CHECK YOUR LEFT HAND)          **
	echo ***************************************************************
put STORE HELP
	match disident you put your
	matchwait



CritFail:
	echo
	echo ****************************************************
	echo **         YOU HAD A CRITICAL FAILURE!            **
	echo ** THE CHANCE THE TRAP WILL GO OFF HAS INCREASED! **
	echo **             CONTINUING SCRIPT.                 **
	echo ****************************************************
	echo
pause 2
goto dis%2


PICKING SECTION:


pick:
pause
	match pick ...wait
	match explock you get a
	match nopick referring to?
put get my lockpick
	matchwait

nopick:
pause
	echo ***********************************
	echo **                               **
	echo **  YOU ARE OUT OF LOCKPICKS!!!  **
	echo **                               **
	echo **  TYPE <GO> WHEN YOU GET ONE,  **
	echo **  OR HIT <ESC> TO END SCRIPT   **
	echo **                               **
	echo ***********************************
	match explock Go what?
	matchwait

explock:
pause
	match sleeplock % mind lock
	match awakenlock Exp help
put skill lock
	matchwait

sleeplock:
pause
IF_5 put sleep
IF_5 goto PICKID
	echo
	echo *************
	echo *           *
	echo *  Pausing  *
	echo *           *
	echo *************
	echo
pause 15
goto explock

awakenlock:
put awaken
PICKID:
pause
	match PICKID ...wait
	match PICKID fails to teach you anything
	match PICKANA Somebody has already inspected the current lock on this
	match PICKANA Roundtime
	match DoneBox It's not even locked, why bother?
put pick my %s identify
	matchwait

PICKANA:
pause
	match PICKANA ...wait
	match Pickbox This lock has already helpfully been analyzed...
	match Pickbox roundtime
put pick my %s analyze
	matchwait

Pickbox:
pause
	match PickBox ...wait
	match PickBox You are unable to make any progress towards opening the lock.
	match Broke just broke
	match Broke you discard the now useless lockpick.
	match PICKID You discover another
	match DoneBox Roundtime
put pick my %s %3
	matchWait

Broke:
pause
	echo
	echo ************************
	echo **  Your pick broke!  **
	echo ************************
	echo
goto pick

DoneBox:
pause
IF_5 put stow my lock
IF_5 put open my %s
IF_5	echo ************************
IF_5	echo ** Take your Tip! (if any)
IF_5	echo **    Type  GO
IF_5	echo ** When you're Done
IF_5	echo ***********************
IF_5 pause
IF_5 put look in my %s
IF_5 waitfor Go what?
IF_5 put give %5
IF_5 waitfor has accepted your offer
IF_5 goto thiefcheck
	echo
	echo *******************
	echo **               **
	echo **  Box opened!  **
	echo **               **
	echo *******************


loot:
pause
put stow my lock
	echo
	echo ********************************************
	echo ** Make sure you have a GEM Pouch on you! **
	echo ********************************************
	echo
goto %c

0:
1:
2:
3:
4:
5:


getgem1:
pause
	match getgem1 ...wait
	match opengem you get
	match nogem referring to?
	match remgem1 already in you
put get my gem pouch
	matchwait

remgem1:
pause
	match remgem1 ...wait
	match opengem you remove
	match nogem remove what?
put rem my gem pouch
	matchwait

getgem2:
pause
	match getgem2 ...wait
	match opengem you get
	match getgem6 referring to?
	match remgem2 already in you
put get my second gem pouch
	matchwait

remgem2:
pause
	match remgem2 ...wait
	match opengem you remove
	match getgem6 remove what?
put rem my second gem pouch
	matchwait

getgem3:
pause
	match getgem3 ...wait
	match opengem you get
	match getgem6 referring to?
	match remgem3 already in you
put get my third gem pouch
	matchwait

remgem3:
pause
	match remgem3 ...wait
	match opengem you remove
	match getgem6 remove what?
put rem my third gem pouch
	matchwait

getgem4:
pause
	match getgem4 ...wait
	match opengem you get
	match getgem6 referring to?
	match remgem4 already in you
put get my fourth gem pouch
	matchwait

remgem4:
pause
	match remgem4 ...wait
	match opengem you remove
	match getgem6 remove what?
put rem my fourth gem pouch
	matchwait

getgem5:
pause
	match getgem5 ...wait
	match opengem you get
	match getgem6 referring to?
	match remgem5 already in you
put get my fifth gem pouch
	matchwait

remgem5:
pause
	match remgem5 ...wait
	match opengem you remove
	match getgem6 remove what?
put rem my fifth gem pouch
	matchwait

getgem6:
counter subtract 1
	echo
	echo ****************************************************
	echo ** YOU HAVE %c FULL GEM POUCH(ES)!  GO SELL THEM!  **
	echo **    HIT <ESC> TO EXIT SCRIPT AND SELL           **
	echo **   OTHERWISE THE SCRIPT WILL SKIP LOOTING PHASE **
	echo ****************************************************
	echo
counter set 10
put stow right
goto thiefcheck

11:
	echo
	echo ****************************
	echo ** YOU HAVE NO GEM POUCH! **
	echo **   SKIPPING AUTOLOOT   **
	echo ****************************
	echo
put stow right
goto thiefcheck

10:
	echo
	echo *********************************
	echo ** YOU'RE GEM POUCHES ARE FULL **
	echo **    SKIPPING AUTOLOOT       **
	echo *********************************
	echo
put stow right
goto thiefcheck

nogem:
pause
	echo
	echo *********************************
	echo ** You don't have a gem pouch! **
	echo **    Skipping autoloot.      **
	echo *********************************
	echo
counter set 11
put stow right
goto thiefcheck


opengem:
pause
put open my gem pouch
pause
put open my %s
pause
put look in my %s
pause
	match stowget can't fit anything
	match stowpouch you take
	match stowpouch aren't any
put fill my gem pouch with my %s
	matchwait

stowget:
counter add 1
pause
put stow my gem pouch
goto getgem%c

stowpouch:
pause
put stow my gem pouch

lookloot:
pause 2
	match lookloot ...wait
	match getcoin coin
	match getrune rune
	match getcard card
	match getscroll scroll
	match gettablet tablet
	match getkgweth kyanite
	match getjgweth jadeite
	match drop there is nothing
	match lookloot type ahead
	match unrecognizedloot_%1 Encumbrance
put look in my %s
put encum
	matchwait

unrecognizedloot_N:
unrecognizedloot_NO:
	echo
	echo *******************************************
	echo ** There are items in here I can't loot. **
	echo ** Support for extra items coming soon.  **
	echo **    For now take out what you want     **
	echo **     and throw out what you don't.     **
	echo *******************************************
	echo
	match lookloot you put
	match lookloot you drop
	match thiefcheck roundtime
	matchwait

getjgweth:
pause
put get jadeite gweth
	match stowloot STORE HELP
	match stowloot in what?
	match lookloot you put
	match lookloot STOW HELP
put stow left
	matchwait

getkgweth:
pause
put get kyanite gweth
	match stowloot STORE HELP
	match stowloot in what?
	match lookloot you put
	match lookloot STOW HELP
put stow left
	matchwait

getcard:
pause
put get card
	match stowloot STORE HELP
	match stowloot in what?
	match lookloot you put
	match lookloot STOW HELP
put stow left
	matchwait

getcoin:
pause
put get coin
put get coin
goto lookloot

getscroll:
pause
put get scroll in my %s
	match stowloot STORE HELP
	match stowloot in what?
	match lookloot you put
	match lookloot STOW HELP
put stow left
	matchwait

getrune:
pause
put get rune in my %s
	match stowloot STORE HELP
	match stowloot in what?
	match lookloot you put
	match lookloot STOW HELP
put stow left
	matchwait

gettablet:
pause
put get tablet
	match stowloot STORE HELP
	match stowloot in what?
	match lookloot you put
	match lookloot STOW HELP
put stow left
	matchwait

stowloot:
	echo ***************************************************************
	echo **                                                           **
	echo ** YOU MUST SET YOUR CONTAINER FOR STOWING ITEMS TO CONTINUE **
	echo **                                                           **
	echo ***************************************************************
put STORE HELP
	match lookloot you put your
	matchwait


unrecognizedloot_Y:
unrecognizedloot_YE:
unrecognizedloot_YES:
	echo
	echo **
	echo ** Performing a DUMP Dismantle!
	echo **
	echo
put dismantle my %s
drop:
pause
put dismantle my %s
goto thiefcheck

Thiefcheck:
pause
	match fixlock Guild: Thief
IF_5	match accept TDP
IF_5 put info
IF_5	matchwait
	match %s TDP
put info
	matchwait

fixlock:
pause
put get my lock
pause
	match notfixed You can't figure out
	match fixed roundtime
	match fixed doesn't look like it needs any repairing
	match NoCon in no condition
put fix my lock
	matchwait

notfixed:
	echo
	echo ********************************************************
	echo ** Sorry friend Baker, you're too young to fix those. **
	echo ********************************************************
	echo
goto fixed

NoCon:
	echo
	echo *****************************************************************
	echo ** Better have those wounds looked at if you want to fix this. **
	echo *****************************************************************
	echo

fixed:
pause
put stow my lock
IF_5 goto accept
goto %s



Trap Messaging section:


NERVE:
	echo *******************************************
	echo **
	echo **      FOUND A NERVE POISON TRAP
	echo **
	echo *******************************************
goto DISCHECK


BlowNerve:
pause
	echo **********************************************************
	echo **	BLEW A NERVE POISON TRAP.  WATCH YOUR HEALTH!
	echo **              CONTINUING SCRIPT....
	echo **********************************************************
put health
pause 2
goto GLANCE

BOOMER:
	echo *******************************************
	echo **
	echo **              FOUND A BOOMER
	echo **
	echo *******************************************
goto DISCHECK

BlowBoomer:
pause
	echo ***********************************************
	echo **   BLEW AN EXPLOSION TRAP...CONTINUING SCRIPT
	echo ***********************************************
put health
pause 2
goto GLANCE

ACID:
	echo *******************************************
	echo **
	echo **      FOUND AN ACID TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowAcid:
pause
	echo *********************************************
	echo **    BLEW AN ACID TRAP...WATCH FOR BLEEDERS.
	echo **              CONTINUING SCRIPT.
	echo *********************************************
pause 2
goto glance

POISON:
	echo *******************************************
	echo **
	echo **        FOUND A POISON TRAP
	echo **
	echo *******************************************
goto DISCHECK


BlowPoison:
pause
	echo **********************************************************
	echo **	BLEW A POISON TRAP.  WATCH YOUR HEALTH!
	echo **              CONTINUING SCRIPT....
	echo **********************************************************
put health
pause 2
goto glance

MANA:
	echo *******************************************
	echo **
	echo **      FOUND A MANA ZAPPER TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowMana:
pause
	echo ***************************************************************
	echo **  BLEW A MANA TRAP...DONT PLAN ON CASTING MAGIC FOR A WHILE
	echo **                  CONTINUING SCRIPT...
	echo ***************************************************************
pause 2
goto glance

PBOLT:
	echo *******************************************
	echo **
	echo **      FOUND A POISONED BOLTS TRAP
	echo **
	echo *******************************************
goto DISCHECK

BOLT:
	echo *******************************************
	echo **
	echo **          FOUND A BOLTS TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowBolt:
pause
	echo **************************************************************
	echo ** BLEW A BOLTS/POISON BOLTS TRAP, DON'T FORGET TO TEND YOURSELF
	echo **           CONTINUING SCRIPT...
	echo **************************************************************
put health
pause 2
goto glance

SHOCKER:
	echo *******************************************
	echo **
	echo **         FOUND A SHOCKER TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowShocker:
pause
	echo *************************************************
	echo **  BLEW A SHOCKER TRAP, CHECK YOUR HEALTH
	echo **       CONTINUING SCRIPT...
	echo *************************************************
put health
pause 2
put get %s
goto glance

GAS:
	echo ************************************************
	echo **
	echo **      FOUND A GAS TRAP. TYPE <GO> TO CONTINUE
	echo **
	echo ************************************************
WAITFOR GO WHAT?
goto DISCHECK

BlowGas:
pause
	echo ********************************************************
	echo **
	echo **    BLEW A GAS TRAP,   HURRY UP AND LEAVE THE ROOM!!!!
	echo **
	echo **    TYPE <GO> TO CONTINUE SCRIPT, OR HIT <ESC> TO END IT
	echo **
	echo ******************************************************
put health
	match glance go what?
	matchwait

NAPHTHA1:
	echo *******************************************
	echo **
	echo **      FOUND A NAPHTHA SOAKER TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowNAPHTHA1:
	echo *******************************************
	echo **
	echo **      BLEW A NAPHTHA SOAKER TRAP
	echo **       You're okay... for now..
	echo *******************************************
goto DISCHECK

NAPHTHA:
	echo *******************************************
	echo **
	echo **      FOUND A NAPHTHA TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowNaphtha:
pause
	echo ************************************************************
	echo **    BLEW A NAPHTHA TRAP, DON'T FORGET TO CHECK YOUR HEALTH!
	echo **
	echo **    TYPE <GO> TO CONTINUE SCRIPT, OR HIT <ESC> TO END IT
	echo **
	echo ************************************************************
put health
	match glance go what?
	matchwait

FLEA:
	echo *******************************************
	echo **
	echo **            FOUND A FLEA TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowFlea:
	echo ************************************************************
	echo **
	echo **     YOU'VE BLOWN A FLEA TRAP!!
	echo **
	echo **      GO JUMP IN A LAKE!!  OR SOME BODY OF WATER...
	echo **
	echo **    TYPE <GO> TO CONTINUE SCRIPT, OR HIT <ESC> TO END IT
	echo **
	echo ************************************************************
PAUSE
GOTO GLANCE

RAZOR:
	echo *******************************************
	echo **
	echo **      FOUND A RAZOR BLADE TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowRazor:
pause
	echo **********************************************************************
	echo **
	echo ** BLEW A RAZOR TRAP, TEND YOURSELF, AND GET YOUR HANDS REATTACHED
	echo **
	echo **********************************************************************
put health
	echo **
	echo ** Autotending in.. 5 **
pause
	echo ** 4 **
pause
	echo ** 3 **
pause
	echo ** 2 **
pause
	echo ** 1 **
pause
	echo ** 0 **
put tend my left hand
pause
pause
put tend my right hand
exit

DART:
	echo *******************************************
	echo **
	echo **      FOUND A CYANIDE TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowDart:
pause
	echo ***********************************************************
	echo **
	echo **    BLEW A CYANIDE TRAP, FIND AN EMPATH BEFORE YOU DIE!!!
	echo **
	echo **    TYPE <GO> TO CONTINUE SCRIPT, OR HIT <ESC> TO END IT
	echo **
	echo ************************************************************
put health
	match glance go what?
	matchwait

BOUNCER:
	echo *******************************************
	echo **
	echo **      FOUND A BOUNCING TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowBouncer:
pause
	echo ***********************************************************
	echo **
	echo **    BLEW A BOUNCING TRAP, HURRY UP AND CHASE IT!!!
	echo **
	echo **    TYPE <GO> TO CONTINUE SCRIPT, OR HIT <ESC> TO END IT
	echo **
	echo ************************************************************
	match glance go what?
	matchwait

MIME:
	echo *******************************************
	echo **
	echo **      FOUND A MIME TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowMime:
pause
	echo **********************************************************************************
	echo **
	echo **   BLEW A MIME TRAP, CAN'T DO ANYTHING FOR AN HOUR OR FIND A CLERIC WITH UNCURSE
	echo **
	echo **********************************************************************************
exit

SHADOWLING:
	echo *******************************************
	echo **
	echo **        FOUND A SHADOWLING TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowShadowling:
pause
	echo **************************************************************************
	echo **
	echo **   BLEW A SHADOWLING TRAP, DON'T PLAN ON SPEAKING NORMAL FOR A WHILE!!!
	echo **
	echo **                        CONTINUING SCRIPT....
	echo **
	echo **************************************************************************
goto glance

FROGGER:
	echo *******************************************
	echo **
	echo **            FOUND A FROG TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowFrogger:
	echo ********************************************************
	echo **
	echo **      BLEW A FROG RUNE TRAP, FIND SOMEONE TO KISS YOU
	echo **
	echo **   TYPE <GO> TO CONTINUE SCRIPT, OR HIT <ESC> TO END IT
	echo **
	echo ********************************************************
put health
	match glance go what?
	matchwait

THIEF:
	echo *******************************************
	echo **
	echo **      FOUND A THIEF FAE TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowThief:
pause
	echo ****************************************************************
	echo **
	echo **  BLEW A THIEF FAE TRAP!! DON'T WORRY YOUR ITEM IS IN THE BOX.
	echo **
	echo **      CONTINUING SCRIPT.....
	echo **
	echo ****************************************************************
PAUSE 2
GOTO GLANCE

LAUGHING:
	echo *******************************************
	echo **
	echo **      FOUND A LAUGHING GAS TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowLaughing:
pause
	echo ***********************************
	echo **
	echo **    BLEW A LAUGHING GAS TRAP
	echo **
	echo **       CONTINUING SCRIPT....
	echo **
	echo ***********************************
goto glance

LIGHTNING:
	echo *******************************************
	echo **
	echo **         FOUND A LIGHTNING TRAP
	echo **
	echo *******************************************
goto DISCHECK


BlowLightning:
pause
	echo ****************************************************
	echo **
	echo **   BLEW A LIGHTNING BOLT TRAP, CHECK YOUR HEALTH!
	echo **
	echo **                CONTINUING SCRIPT....
	echo **
	echo ****************************************************
wait
put health
pause 2
goto glance

SLEEPER:
	echo *******************************************
	echo **
	echo **            FOUND A SLEEPER TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowSleeper:
pause
	echo **
	echo ***************************************************
	echo **
	echo **   BLEW A SLEEPER TRAP, WAKING YOU BACK UP!!
	echo **
	echo **       DON'T DO ANYTHING UNTIL WE SAY SO!
	echo **           Or you'll fall back alseep!
	echo ***************************************************
	echo **
PUT wake
pause 40
	echo **
	echo ********************************************************
	echo **
	echo **        OKAY YOU SHOULD BE AWAKE NOW
	echo **
	echo **                CONTINUING SCRIPT....
	echo **
	echo ********************************************************
	echo **
put get %s
WAIT
goto glance

Shockwave:
pause
	echo ***********************************
	echo **
	echo **       FOUND A SHOCKWAVE TRAP
	echo **
	echo ***********************************
goto DISCHECK

BlowShockwave:
	echo *******************************************************
	echo **
	echo **   THE CONCUSSION BLEW!! WATCH YOU LIFE.
	echo **
	echo **   TYPE <GO> TO CONTINUE SCRIPT, OR HIT <ESC> TO END IT
	echo **
	echo *******************************************************
	match GLANCE Go what?
	matchwait

Disease:
	echo *******************************************
	echo **
	echo **      FOUND A DISEASE TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowDisease:
	echo ***********************************************************
	echo **
	echo **    BLEW A DISEASE TRAP, FIND AN EMPATH BEFORE YOU DIE!!!
	echo **
	echo **    TYPE <GO> TO CONTINUE SCRIPT, OR HIT <ESC> TO END IT
	echo **
	echo ************************************************************
put health
	match glance go what?
	matchwait

Rune:
	echo *******************************************
	echo **
	echo **            FOUND A CURSE TRAP
	echo **
	echo *******************************************
goto DISCHECK

BlowRune:
pause
	echo ***********************************************************
	echo **
	echo **        BLEW A CURSE TRAP, BEST GET YOURSELF UNCURSED.
	echo **
	echo **     TYPE <GO> TO CONTINUE SCRIPT, OR HIT <ESC> TO END IT
	echo **
	echo ***********************************************************
	match glance go what?
	matchwait

Shrapnel:
	echo **************************************************
	echo **
	echo **     FOUND A SHRAPNEL TRAP! TYPE <GO> TO CONTINUE
	echo **
	echo **************************************************
WAITFOR go what?
goto DISCHECK

BlowShrapnel:
pause
	echo *******************************************************************
	echo **
	echo **  BLEW A SHRAPNEL TRAP!! REMOVE THE SHRAPNEL AND STOP THE BLEEDING.
	echo **
	echo **       HOPE YOU WEREN'T IN A FULL ROOM.
	echo **
	echo **     TYPE <GO> TO CONTINUE SCRIPT, OR HIT <ESC> TO END IT
	echo **
	echo *******************************************************************
PUT HEALTH
	match Glance Go what?
	matchwait

Vykathi:
	echo *********************************************************
	echo **
	echo **  BLESSED ELANTHIA!! YOU'VE FOUND A VYKATHI TRAP!!!
	echo **
	echo **      DUE TO THE SEVERE NATURE OF THIS TRAP IT IS
	echo **         SUGGESTED YOU DISARM IT MANUALLY.
	echo **
	echo **     TYPE <GO> TO DISARM, OR HIT <ESC> TO END THE SCRIPT
	echo **
	echo *********************************************************
	match DISCHECK Go what?
	matchwait

BlowVykathi:
	echo **********************************************************
	echo **
	echo **         YOU JUST BLEW A VYKATHI TRAP!!!
	echo **
	echo **     DON'T JUST SIT THERE AND READ THIS TEXT,  RUN!!
	echo **
	echo **********************************************************
PAUSE
PUT YELL Vykathi! Run!
exit

Teleporter:
pause
	echo ***************************************************************
	echo **
	echo **   YOU'VE FOUND A TELEPORTER TRAP, IF THE MOON MATCHING THE
	echo **     CIRCLE'S COLOR IS NOT UP AND YOU TRIGGER THIS TRAP IT IS
	echo **   INSTANT DEATH!!!!
	echo **
	echo **      TYPE <GO> TO DISARM, OR HIT <ESC> TO END THE SCRIPT
	echo **
	echo ***************************************************************
	match distele1 Go what?
	matchwait

telebn:
	echo ***********************************************************
	echo **
	echo **   YOU'RE DEAD! SORRY FRIEND YOU BLEW A TELEPORT TRAP
	echo **
	echo **   THE MOON YOU NEEDED WASN'T OUT, SO YOU DISINTEGRATED!!
	echo **
	echo ***********************************************************
	echo **
EXIT

Teleby:
	echo **********************************************************
	echo **
	echo **   YOU BLEW A TELEPORT TRAP!! GOOD THING THE MOON WAS OUT!
	echo **
	echo **    FIGURE OUT WHERE YOU ARE THEN GET BACK HOME.
	echo **
	echo **   TYPE <GO> TO CONTINUE SCRIPT, OR HIT <ESC> TO END IT
	echo **
	echo ***********************************************************
	match Glance Go what?
	matchwait

CritFailt:
	echo **
	echo ****************************************************
	echo **         YOU HAD A CRITICAL FAILURE!            **
	echo ** THE CHANCE THE TRAP WILL GO OFF HAS INCREASED! **
	echo **             CONTINUING SCRIPT.                 **
	echo ****************************************************
	echo **
pause 2
goto distele

CritFailt2:
	echo **
	echo ****************************************************
	echo **         YOU HAD A CRITICAL FAILURE!            **
	echo ** THE CHANCE THE TRAP WILL GO OFF HAS INCREASED! **
	echo **             CONTINUING SCRIPT.                 **
	echo ****************************************************
	echo **
pause 2
goto disarm2tele

DisTele1:
pause
	match distele1 ...wait
	match next referring to?
	match dischecktele With a confident grin
	match distele1 you attempt to use a rock you picked
	match dischecktele roundtime
	match markchecktele Are you going to mark your best guess?
put disarm my %s Mark
	matchwait

markchecktele:
pause
	match markchecktele ...wait
	match dischecktele Some thoughtful soul has
	match dischecktele ....
	match disident You see nothing unusual.
put look at my %s
	matchwait

discheckTele:
goto Distele%2



DisTeleBlind:
DisTeleBlin:
DisTeleBli:
DisTeleBl:
DisTeleB:
DisTeleNormal:
DisTeleNorma:
DisTeleNorm:
DisTeleNor:
DisTeleNo:
DisTeleN:
DisTeleAll:
DisTeleAl:
DisTeleA:
DisTeleCareful:
DisTeleCarefu:
DisTeleCaref:
DisTeleCare:
DisTeleCar:
DisTeleCa:
DisTeleC:
DisTeleQuick:
DisTeleQuic:
DisTeleQui:
DisTeleQu:
DisTeleQ:
DisTele:
	match distele ...wait
	match critfailT something to shift
	match distele fumbling fails
	match telebn last painful thought
	match teleby experience a great
	match distele roundtime
	match Disarm2tele has already harvested
put disarm my %s %2
	matchwait

Disarm2tele:
pause
	match disarm2tele ...wait
	match critfailT2 something to shift
	match disarm2tele fumbling fails
	match telebn last painful thought
	match teleby experience a great
	match disarm2tele roundtime
put disarm my %s Normal
	matchwait

disarmchecktele:
pause
	match disarmchecktele ...wait
	match pick doesn't appear to be trapped.
	match disident roundtime
put app my %s
	matchwait



labelError:
	echo **    DEBUG_MODE
	echo ** Tweak: 5/11/2009 5:58PM
	echo ************************
	echo **    Save = %s
	echo ** Counter = %c
	echo **       0 = %0
	echo **       1 = %1
	echo **       2 = %2
	echo **       3 = %3
	echo **       4 = %4
IF_5	echo **       5 = %5
	echo ************************
exit
Support:
	echo ** Traps Supported
	echo ** Razor
	echo ** Shocker
	echo ** Mana
	echo ** Bolt
	echo ** Nerve Poison
	echo ** Naphtha  -  Need blown.
	echo ** Lightning
	echo ** Shrapnel
	echo ** Disease
	echo ** Dart
	echo ** Laughing Gas
	echo ** Poison Bolts
	echo ** Shockwave
	echo ** Frogger
	echo ** Mime
	echo ** Shadowling
	echo ** Sleeper
	echo ** Teleporter
	echo ** Thief Fae
	echo ** Vykathi
	echo ** Flea
	echo ** Rune
	echo ** Acid
	echo ** Poison
	echo ** Boomer
	echo ** Gas
	echo ** Bouncer
	echo ** Fireball

	echo ** Boxes Supported
	echo ** strongbox
	echo ** caddy
	echo ** casket
	echo ** trunk
	echo ** box
	echo ** coffer
	echo ** chest
	echo ** skippet
	echo ** crate
exit