#SFhunter Version 2
counter set 0
goto TOP
goto %zHFromEZ

INTRO:
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
echo SFhunter Version 2
echo Last tweak 4/16/2009 6:20PM
echo
echo SITE:  http://www.malific.com/ or http://www.geocities.com/malificdr/
echo AIM:   Malific Drockmur
echo EMAIL: drockmali@hotmail.com
echo
echo }}}}}}}}} .SFhunter HELP {{{{{{{{{
echo
IF_1 goto BEGIN
goto %zHD

INTRO_NEW:
EZcheck_%EZrange:
setvariable zHFromEZ TOP
TOP:
#Jeorgiesetvariable zHloot YES_LOOT
#Jeorgiesetvariable zHskin SKIN1
#Jeorgiesetvariable zHskindrop BUN_NO
#Jeorgieput sheath
#Jeorgiegoto JEORGIE
setvariable zHloot NO_LOOT
setvariable zHskin SEARCH
setvariable zHskindrop NOBUN
setvariable zHlootgem 1
setvariable zHlootcoin 1
setvariable zHlootbox 1
setvariable zHlootjunk 1
JEORGIE:
setvariable zHsearch  
setvariable zHexpC OFF
setvariable zHskinexp BUN
setvariable zHretreat SKIN1_
setvariable zHamb OFF
setvariable zHarrange ARR_NO
setvariable zHmonsterapp NO_APP
setvariable zHmulti OFF
setvariable zHexpA OFF
setvariable zHexpB OFF
setvariable zHtype 0
setvariable zHrange 1
setvariable zHrange1 fire
setvariable zHrepeat RANGE
setvariable zHmana NA
setvariable zHspell NA
setvariable zHmc NA
setvariable zHm NA
setvariable zHexpM ON
setvariable zHget OFF
setvariable zHCOM1 OFF
setvariable zHCOM2 OFF
setvariable zHCOM3 OFF
setvariable zHCOM4 OFF
setvariable zHCOM5 OFF
setvariable zHcount OFF
setvariable zHCOUNT NA
setvariable zHcBrawl OFF
setvariable zHbrawltype WEAPON
setvariable zHskinsS 0
setvariable zHlootsS 0
setvariable zHkillsS 0
setvariable zHcritters 0
GOTO INTRO

%zHD:
echo
echo **************************************************************************************
echo ** Welcome to SFhunter!           Created By: Malific Drockmur
echo **
echo ** Basic usage
echo ** .SFhunter {weapon} (shield) *shields are always optional*
echo **
echo ** For a complete list of syntaxes restart the script as:
echo ** }}}}}}}}}.SFhunter HELP{{{{{{{{{
echo **
echo ** SFhunter was designed to support all weapon types. It works
echo ** them quickly and effectively, and can skin and loot kills.
echo **
echo ** Please note this is NOT an AFK script. If you get into
echo ** trouble the script will NOT get you out of it.
echo **************************************************************************************
echo
echo **************************************************************************************
echo ** TAKE ADVANTAGE OF MAKING A DEFAULT SETTING!
echo ** This allows you to type JUST '.SFhunter' to start hunting!
echo ** See .SFhunter HELP and type in 'default' for details!
echo **************************************************************************************
echo
echo ** }}}}}}}}}.SFhunter HELP{{{{{{{{{
exit

BEGIN_PAUSE:
pause

10000:
0:
1:
2:
BEGIN:
	match WEAPON_CHECK you draw
	match WEAPON_CHECK re already holding
	match BEGIN_HANDS free hand
	match WEAPON_CHECK free to
	matchre BEGINA /out of reach|remove|What were you|can't seem|Wield what\?/i
	match BEGINA You can only wield a weapon or a shield!
	match BEGIN_PAUSE ...wait
	match BEGIN_PAUSE type ahead
put wield right my %1
	matchwait

BEGINA_PAUSE:
pause
BEGINA:
	match WEAPON_CHECK you sling
	match WEAPON_CHECK re already holding
	match WEAPON_CHECK inventory
	match WEAPON_CHECK you remove
	match BEGIN_HANDS free hand
	match BEGINB remove what?
	match BEGIN_HANDS hands are full
	match BEGINA_PAUSE ...wait
	match BEGINA_PAUSE type ahead
put remove my %1
	matchwait

BEGINB_PAUSE:
pause
BEGINB:
	match B_BALDRIC baldric
	match WEAPON_CHECK you get
	match VARI_CHECK What were you
	match BEGINB_PAUSE ...wait
	match BEGINB_PAUSE type ahead
put get my %1
	matchwait

B_BALDRIC:
	echo
	echo B_BALDRIC:
	echo
setvariable zHget ON
setvariable zHgetA in my baldric
goto WEAPON_CHECK


VARI_CHECK_PAUSE:
pause
VARI_CHECK:
	echo
	echo VARI_CHECK:
	echo
	match %1 roundtime
	match VARI_CHECK_PAUSE ...wait
	match VARI_CHECK_PAUSE type ahead
	match %1 You cannot back away from a chance to continue your slaughter!
	match %1 You retreat
	match %1 You sneak back
	match %1 already as far
	match %1 You stop advancing
put retreat
	matchwait

BEGIN_HANDS:
	echo
	echo BEGIN_HANDS:
	echo
	echo **************************
	echo ** Your hands are full!
	echo **    Ending script.
	echo **************************
	echo

exit

DEAD:
put *** You are Dead.
	echo
	echo **************************
	echo ** You Seem to be dead.
	echo **    Ending Script.
	echo **************************
	echo
exit


WEAPON_CHECK:
	echo
	echo WEAPON_CHECK:
	echo
setvariable zHweapon %1
	match LE light edged
	match ME medium edged
	match HE heavy edged
	match 2HE two-handed edged
	match LB light blunt
	match MB medium blunt
	match HB heavy blunt
	match 2HB two-handed blunt
	match STAFF_SLING staff sling
	match SHORT_BOW short bow
	match LONG_BOW long bow
	match COMP_BOW composite bow
	match LX light crossbow
	match HX heavy crossbow
	match SHORT_STAFF short staff
	match Q_STAFF quarter staff
	match PIKE  pike 
	match HALBERD halberd
	match SLINGS sling
	match BEGIN_NOWEAP What were you
	match BEGIN_HANDS It's hard to appraise
	match UN_ID roundtime
put appraise my %1 quick
	matchwait

LE_PAUSE:
pause
LE:
	echo
	echo LE:
	echo
LE2:
	match LE_SLICE leaf-blade
	match LE_SLICE Jagged Dao
	match LE_SLICE jagged dragon-pommel dao
	match LE_SLICE Curved Kythe
	match LE_SLICE Koummya
	match LE_SLICE Jambiya
	match LE_SLICE Serrated Steel Dao
	match LE_SLICE Gold and Blue-enameled Oben
	match LE_SLICE Darkly-Tinted Oben
	match LE_SLICE Bejeweled Silver Knife
	match LE_SLICE Crescent-bladed Shaska
	match LE_SLICE katar
	match LE_SLICE kanabu
	match LE_STAB Thin Steel Katar with Viper Fang Hilt
	match LE_STAB right hand
	match LE_PAUSE ...wait
	match LE_PAUSE type ahead
put glance
	matchwait


LE_SLICE:
setvariable zHexp Light.Edged
	echo
	echo LE_SLICE:
	echo
setvariable zHcombo1 parry
setvariable zHcombo2 feint
setvariable zHcombo3 draw
setvariable zHcombo4 slice
setvariable zHcombo5 chop
setvariable zHcombo6 sweep
setvariable zHcombo7 unused
setvariable zHcombo8 unused
#setvariable zHcombo1 parry
#setvariable zHcombo2 feint
#setvariable zHcombo3 draw
#setvariable zHcombo4 thrust
#setvariable zHcombo5 jab
#setvariable zHcombo6 unused
#setvariable zHcombo7 unused
#setvariable zHcombo8 unused
counter add 600
IF_2 goto EQUIP_2
goto %c


LE_STAB:
setvariable zHexp Light.Edged
	echo
	echo LE_THRUST:
	echo
setvariable zHcombo1 parry
setvariable zHcombo2 feint
setvariable zHcombo3 lunge
setvariable zHcombo4 thrust
setvariable zHcombo5 jab
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
counter add 500
#setvariable zHcombo1 parry
#setvariable zHcombo2 feint
#setvariable zHcombo3 draw
#setvariable zHcombo4 thrust
#setvariable zHcombo5 pummel
#setvariable zHcombo6 dodge
#setvariable zHcombo7 thrust
#setvariable zHcombo8 unused
#counter add 700
IF_2 goto EQUIP_2
goto %c

ME_PAUSE:
pause
ME:
	echo
	echo ME:
	echo
	match ME_SLICE Sapara
	match ME_SLICE Scimitar
	match ME_SLICE Cutlass
	match ME_SLICE Axe
	match ME_SLICE Hatchet
	match ME_SLICE Shotel
	match ME_SLICE Tei'oloh'ata
	match ME_SLICE Parang
	match ME_SLICE Sword
	match ME_SLICE Telo
	match ME_SLICE Adze
	match ME_SLICE Curlade
	match ME_SLICE Hanger
	match ME_SLICE Scythe-blade
	match ME_SLICE Cleaver
	match ME_SLICE Lata'oloh
	match ME_SLICE Mirror Blade
	match ME_ILTESH Iltesh
	match ME_STAB Rapier
	match ME_STAB Nambeli
	match ME_STAB Yataghan
	match ME_STAB Shashqa
	match ME_STAB Gladius
	match ME_STAB Pasabas
	match ME_STAB Foil
	match ME_STAB Thrusting Blade
	match ME_STAB Sabre
	match ME_SLICE right hand
	match ME_PAUSE ...wait
	match ME_PAUSE type ahead
put glance
	matchwait

#Not Steph's
ME_SLICE:
setvariable zHexp Medium.Edged
	echo
	echo ME_SLICE:
	echo
setvariable zHcombo1 parry
setvariable zHcombo2 feint
setvariable zHcombo3 draw
setvariable zHcombo4 sweep
setvariable zHcombo5 slice
setvariable zHcombo6 chop
setvariable zHcombo7 unused
setvariable zHcombo8 unused
counter add 600
IF_2 goto EQUIP_2
goto %c

ME_ILTESH:
setvariable zHexp Medium.Edged
	echo
	echo ME_ILTESH:
	echo
setvariable zHcombo1 feint
setvariable zHcombo2 draw
setvariable zHcombo3 sweep
setvariable zHcombo4 slice
setvariable zHcombo5 chop
setvariable zHcombo6 lunge
setvariable zHcombo7 thrust
setvariable zHcombo8 jab
counter add 800
IF_2 goto EQUIP_2
goto %c

ME_STAB:
setvariable zHexp Medium.Edged
	echo
	echo ME_THRUST:
	echo
setvariable zHcombo1 parry
setvariable zHcombo2 feint
setvariable zHcombo3 draw
setvariable zHcombo4 sweep
setvariable zHcombo5 thrust
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
counter add 500
IF_2 goto EQUIP_2
goto %c

HE_PAUSE:
pause
HE:
	echo
	echo HE:
	echo
	match HE_STAB Enamel-Hilted Longsword
	match HE_STAB Namkoba
	match HE_STAB Reinforced Cinquedea
	match HE_SLICE right hand
	match HE_PAUSE ...wait
	match HE_PAUSE type ahead
put glance
	matchwait

HE_SLICE:
setvariable zHexp Heavy.Edged
	echo
	echo HE_SLICE:
	echo
setvariable zHcombo1 parry
setvariable zHcombo2 feint
setvariable zHcombo3 draw
setvariable zHcombo4 sweep
setvariable zHcombo5 slice
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
counter add 500
IF_2 goto EQUIP_2
goto %c


HE_STAB:
setvariable zHexp Heavy.Edged
	echo
	echo HE_THRUST:
	echo
setvariable zHcombo1 parry
setvariable zHcombo2 feint
setvariable zHcombo3 lunge
setvariable zHcombo4 thrust
setvariable zHcombo5 jab
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
counter add 500
IF_2 goto EQUIP_2
goto %c

2HE:
setvariable zHexp Twohanded.Edged
	echo
	echo 2HE:
	echo
setvariable zHcombo1 parry
setvariable zHcombo2 feint
setvariable zHcombo3 draw
setvariable zHcombo4 sweep
setvariable zHcombo5 slice
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
counter add 500
goto %c

LB:
setvariable zHexp Light.Blunt
	echo
	echo LB:
	echo
setvariable zHcombo1 dodge
#setvariable zHcombo2 feint
setvariable zHcombo2 bash
setvariable zHcombo3 sweep
setvariable zHcombo4 draw
#setvariable zHcombo5 jab
setvariable zHcombo5 slice
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
counter add 500
IF_2 goto EQUIP_2
goto %c

MB:
setvariable zHexp Medium.Blunt
	echo
	echo MB:
	echo
setvariable zHcombo1 dodge
setvariable zHcombo2 feint
setvariable zHcombo3 bash
setvariable zHcombo4 sweep
setvariable zHcombo5 draw
setvariable zHcombo6 jab
setvariable zHcombo7 slice
setvariable zHcombo8 unused
counter add 700
IF_2 goto EQUIP_2
goto %c

HB:
setvariable zHexp Heavy.Blunt
	echo
	echo HB:
	echo
setvariable zHcombo1 feint
setvariable zHcombo2 bash
setvariable zHcombo3 sweep
setvariable zHcombo4 draw
setvariable zHcombo5 slice
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
counter add 500
IF_2 goto EQUIP_2
goto %c

2HB:
setvariable zHexp Twohanded.Blunt
	echo
	echo 2HB:
	echo
setvariable zHcombo1 feint
setvariable zHcombo2 bash
setvariable zHcombo3 sweep
setvariable zHcombo4 draw
setvariable zHcombo5 slice
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
counter add 500
goto %c

SHORT_STAFF:
setvariable zHexp Short.Staff
	echo
	echo SHORT_STAFF:
	echo
setvariable zHcombo1 parry
setvariable zHcombo2 thrust
setvariable zHcombo3 sweep
setvariable zHcombo4 chop
setvariable zHcombo5 jab
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
counter add 500
goto %c

Q_STAFF:
setvariable zHexp Quarter.Staff
	echo
	echo Q_STAFF:
	echo
setvariable zHcombo1 parry
setvariable zHcombo2 thrust
setvariable zHcombo3 sweep
setvariable zHcombo4 bash
setvariable zHcombo5 draw
setvariable zHcombo6 slice
#setvariable zHcombo1 feint
#setvariable zHcombo2 draw
#setvariable zHcombo3 slice
#setvariable zHcombo4 sweep
#setvariable zHcombo5 bash
#setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
counter add 600
goto %c

PIKE:
setvariable zHexp Pike
	echo
	echo PIKE:
	echo
setvariable zHcombo1 dodge
setvariable zHcombo2 jab
setvariable zHcombo3 sweep
setvariable zHcombo4 thrust
setvariable zHcombo5 lunge
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
counter add 500
goto %c

HALBERD:
setvariable zHexp Halberd
	echo
	echo HALBERD:
	echo
setvariable zHcombo1 dodge
setvariable zHcombo2 feint
setvariable zHcombo3 thrust
setvariable zHcombo4 sweep
setvariable zHcombo5 chop
setvariable zHcombo6 jab
setvariable zHcombo7 unused
setvariable zHcombo8 unused
counter add 600
#setvariable zHcombo1 thrust
#setvariable zHcombo2 sweep
#setvariable zHcombo3 slice
#setvariable zHcombo4 chop
#setvariable zHcombo5 jab
#setvariable zHcombo6 unused
#setvariable zHcombo7 unused
#setvariable zHcombo8 unused
#counter add 500
goto %c

SLINGS:
setvariable zHammo rock
setvariable zHexp Sling
	echo
	echo SLING:
	echo
put retreat
waitfor you
put retreat
waitfor you
counter add 100
IF_2 goto EQUIP_2
goto %c

STAFF_SLING:
setvariable zHammo rock
setvariable zHexp Staff.Sling
	echo
	echo STAFF_SLING:
	echo
put retreat
waitfor you
put retreat
waitfor you
counter add 100
goto %c

LX:
setvariable zHammo bolt
setvariable zHexp Light.Crossbow
	echo
	echo LX:
	echo
put retreat
waitfor you
put retreat
waitfor you
counter add 100
IF_2 goto EQUIP_2
goto %c

HX:
setvariable zHammo bolt
setvariable zHexp Heavy.Crossbow
	echo
	echo HX:
	echo
put retreat
waitfor you
put retreat
waitfor you
counter add 100
goto %c

SHORT_BOW:
setvariable zHammo arrow
setvariable zHexp Short.Bow
	echo
	echo SHORT_BOW:
	echo
put retreat
waitfor you
put retreat
waitfor you
counter add 100
goto %c

LONG_BOW:
setvariable zHammo arrow
setvariable zHexp Long.Bow
	echo
	echo LONG_BOW:
	echo
put retreat
waitfor you
put retreat
waitfor you
counter add 100
goto %c

COMP_BOW:
setvariable zHammo arrow
setvariable zHexp Composite.Bow
	echo
	echo COMP_BOW:
	echo
put retreat
waitfor you
put retreat
waitfor you
counter add 100
goto %c

DAN:
DANC:
DANCE:
COUNT:
COUN:
COU:
echo
echo COUNT:
echo
setvariable zHcount ON
shift
goto COUNT_%1

COUNT_0:
setvariable zHCOUNT COUNT_ONE
shift
goto BEGIN
COUNT_1:
setvariable zHCOUNT COUNT_TWO
shift
goto BEGIN
COUNT_2:
setvariable zHCOUNT COUNT_THREE
shift
goto BEGIN
COUNT_3:
setvariable zHCOUNT COUNT_FOUR
shift
goto BEGIN
COUNT_4:
setvariable zHCOUNT COUNT_FIVE
shift
goto BEGIN
COUNT_5:
setvariable zHCOUNT COUNT_SIX
shift
goto BEGIN
COUNT_6:
setvariable zHCOUNT COUNT_SEVEN
shift
goto BEGIN
COUNT_7:
setvariable zHCOUNT COUNT_EIGHT
shift
goto BEGIN
COUNT_8:
setvariable zHCOUNT COUNT_NINE
shift
goto BEGIN
COUNT_9:
setvariable zHCOUNT COUNT_TEN
shift
goto BEGIN
COUNT_10:
setvariable zHCOUNT COUNT_ELEVEN
shift
goto BEGIN
COUNT_11:
setvariable zHCOUNT COUNT_TWELVE
shift
goto BEGIN
COUNT_12:
setvariable zHCOUNT COUNT_THIRTEEN
shift
goto BEGIN
COUNT_13:
setvariable zHCOUNT COUNT_FOURTEEN
shift
goto BEGIN
COUNT_14:
setvariable zHCOUNT COUNT_FIFTEEN
shift
goto BEGIN
COUNT_15:
setvariable zHCOUNT COUNT_SIXTEEN
shift
goto BEGIN
COUNT_16:
setvariable zHCOUNT COUNT_SEVENTEEN
shift
goto BEGIN
COUNT_17:
setvariable zHCOUNT COUNT_EIGHTEEN
shift
goto BEGIN
COUNT_18:
setvariable zHCOUNT COUNT_NINETEEN
shift
goto BEGIN
COUNT_19:
COUNT_20:
setvariable zHCOUNT COUNT_PLUS
shift
goto BEGIN

COMMAND:
COMMAND1:
COMMAN:
COMMAN1:
COMMA:
COMMA1:
COMM:
COMM1:
COM
COM1:
shift
setvariable zHcom1 %1
setvariable zHCOM1 ON
shift
goto BEGIN

COMMAND2:
COMMAN2:
COMMA2:
COMM2:
COM2:
shift
setvariable zHcom2 %1
setvariable zHCOM2 ON
shift
goto BEGIN


COMMAND3:
COMMAN3:
COMMA3:
COMM3:
COM3:
shift
setvariable zHcom3 %1
setvariable zHCOM3 ON
shift
goto BEGIN


COMMAND4:
COMMAN4:
COMMA4:
COMM4:
COM4:
shift
setvariable zHcom4 %1
setvariable zHCOM4 ON
shift
goto BEGIN


COMMAND5:
COMMAN5:
COMMA5:
COMM5:
COM5:
shift
setvariable zHcom5 %1
setvariable zHCOM5 ON
shift
goto BEGIN

REM:
REMO:
REMOV:
REMOVE:
	echo
	echo REMOVE:
	echo
shift
put remove my %1
wait
put stow my %1
wait
shift
goto BEGIN

WEA:
WEAR:
	echo
	echo WEAR:
	echo
shift
put get my %1
wait
put wear my %1
wait
shift
goto BEGIN

EXP:
	echo
	echo EXP:
	echo
setvariable zHexpC ON
shift
goto BEGIN

ATT:
ATTA:
ATTAC:
ATTACK:
	echo
	echo ATTACK:
	echo
shift
put stance attack
wait
goto BEGIN

EVA:
EVAS:
EVAD:
EVASI:
EVADE:
EVASIO:
EVASION:
	echo
	echo EVASION:
	echo
shift
put stance evasion
wait
goto BEGIN

BLO:
BLOC:
BLOCK:
	echo
	echo BLOCK:
	echo
shift
put stance shield
wait
goto BEGIN

PAR:
PARR:
PARRY:
	echo
	echo PARRY:
	echo
shift
put stance parry
wait
goto BEGIN

CUS:
CUST:
CUSTO:
CUSTOM:
	echo
	echo CUSTOM:
	echo
shift
put stance custom
wait
goto BEGIN

REP:
REPE:
REPEA:
REPEAT:
REPEATE:
REPEATER:
	echo
	echo REPEATER:
	echo
put retreat
waitfor you
put retreat
waitfor you
setvariable zHrepeat REPEAT
shift
goto BEGIN

LOG:
VINE:
put retreat
waitfor you
put retreat
waitfor you
setvariable zHexp THROW
setvariable zHexpB THROW
Counter set 1200
	echo
	echo VINE:
	echo
goto THROW_EQUIP


OFF:
OFFH:
OFFHA:
OFFHAN:
OFFHAND:
put retreat
waitfor you
put retreat
waitfor you
setvariable zHexp OFFHAND
setvariable zHexpB OFFHAND
setvariable zHtype OFFHAND
	echo
	echo OFFHAND:
	echo
shift
counter add 2200
	match OFF_THROW_VARI you draw
	match OFF_THROW_VARI free to
	match OFF_THROW_VARI re already
	match BEGIN_HANDS free hand
	matchre OFF_THROW_EQUIP /out of reach|remove|What were you|can't seem|Wield what\?/i
	match OFF_THROW_EQUIP You can only wield a weapon or a shield!
put wield left my %1
	matchwait

OFF_THROW_EQUIP:
	echo
	echo OFF_THROWN_EQUIP:
	echo
	match OFF_THROW_VARI you sling.
	match OFF_THROW_VARI re already
	match OFF_THROW_VARI inventory
	match OFF_THROW_VARI you remove
	match OFF_THROW_VARI_SWAP right hand
	match OFF_THROW_EQUIP_2 remove what?
	match BEGIN_HANDS hands are full
put remove my %1
	matchwait

OFF_THROW_EQUIP_2:
	echo
	echo OFF_THROW_EQUIP_2: 
	echo
	match OFF_THROW_BALDRIC baldric
	match OFF_THROW_VARI_SWAP you get
	match VARI_CHECK What were you
put get my %1
	matchwait

OFF_THROW_BALDRIC:
	echo
	echo OFF_THROW_BALDRIC:
	echo
setvariable zHget ON
setvariable zHgetA in my baldric
goto OFF_THROW_VARI_SWAP

OFF_THROW_VARI_SWAP_PAUSE:
pause
OFF_THROW_VARI_SWAP:
	match OFF_THROW_VARI left hand
	match OFF_THROW_VARI_SWAP_PAUSE right hand
put swap
	matchwait

OFF_THROW_VARI:
counter add 10
IF_2 goto EQUIP_2
goto %c

THR:
THRO:
THROW:
THROWN:
put retreat
waitfor you
put retreat
waitfor you
setvariable zHexpB THROW
	echo
	echo THROWN:
	echo
shift
counter add 1200
	match THROW_VARI you draw
	match THROW_VARI free to
	match THROW_VARI re already
	match BEGIN_HANDS free hand
	matchre THROW_EQUIP /out of reach|remove|What were you|can't seem|Wield what\?/i
	match THROW_BRAWL You can only wield a weapon or a shield!
put wield right my %1
	matchwait

THROW_BRAWL:

THROW_EQUIP:
	echo
	echo THROWN_EQUIP:
	echo
	match THROW_VARI you sling.
	match THROW_VARI re already
	match THROW_VARI inventory
	match THROW_VARI you remove
	match THROW_VARI_SWAP right hand
	match THROW_EQUIP_2 remove what?
	match BEGIN_HANDS hands are full
put remove my %1
	matchwait

THROW_EQUIP_2:
	echo
	echo THROW_EQUIP_2: 
	echo
	match THROW_BALDRIC baldric
	match THROW_VARI_SWAP you get
	match VARI_CHECK What were you
put get my %1
	matchwait

THROW_BALDRIC:
	echo
	echo THROW_BALDRIC:
	echo
setvariable zHget ON
setvariable zHgetA in my baldric
goto THROW_VARI

THROW_VARI_SWAP_PAUSE:
pause
THROW_VARI_SWAP:
	match THROW_VARI right hand
	match THROW_VARI_SWAP_PAUSE left hand
put swap
	matchwait

THROW_VARI:
counter add 10
IF_2 goto EQUIP_2
goto %c



EMP:
EMPU:
EMPA:
EMPUF:
EMPAT:
EMPUFF:
EMPATH:
shift
setvariable zHtype BRAWL
setvariable zHexpA Brawling
setvariable zHexpB ON
setvariable zHcBrawl ON
	echo
	echo EMPATH_BRAWLING:
	echo
setvariable zHcombo1 parry
setvariable zHcombo2 shove
setvariable zHcombo3 circle
setvariable zHcombo4 weave
setvariable zHcombo5 bob
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
counter add 500
goto EMPATH_E

POA:
POAC:
POACH:
POACHI:
POACHIN:
POACHING:
shift
setvariable zHrange 2
setvariable zHrange1 poach
	echo
	echo POACHING:
	echo
put retreat
waitfor you
put retreat
waitfor you
goto BEGIN

SNI:
SNIP:
SNIPE:
SNIPI:
SNIPIN:
SNIPING:
shift
setvariable zHrange 2
setvariable zHrange1 snipe
	echo
	echo SNIPING:
	echo
put retreat
waitfor you
put retreat
waitfor you
goto BEGIN

CHO:
CHOK:
CHOKE:
shift
setvariable zHtype BRAWL
setvariable zHexpA Brawling
setvariable zHexpB ON
setvariable zHcBrawl ON
	echo
	echo CHOKE:
	echo
counter add 300
goto %c

BRA:
BRAW:
BRAWL:
BRAWLI:
BRAWLIN:
BRAWLING:
shift
setvariable zHcBrawl ON
goto BRAWL_EXPB_%zHexpB
BRAWL_EXPB_OFF:
setvariable zHexpB ON
setvariable zHexpA Brawling
BRAWL_EXPB_ON:
setvariable zHtype BRAWL
	echo
	echo BRAWLING:
	echo
B_A:
IF_1 goto B_B
setvariable zHcombo1 dodge
setvariable zHcombo2 gouge
setvariable zHcombo3 claw
setvariable zHcombo4 elbow
setvariable zHcombo5 punch
setvariable zHcombo6 slam
setvariable zHcombo7 unused
setvariable zHcombo8 unused
counter add 600
goto BRAWL_EQUIPMENT

B_B:
setvariable zHcombo1 circle
setvariable zHcombo2 elbow
setvariable zHcombo3 jab
setvariable zHcombo4 kick
setvariable zHcombo5 punch
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
counter add 500
goto BRAWL_EQUIPMENT


AMB:
AMBU:
AMBUS:
AMBUSH:
AMBUSHI:
AMBUSHIN:
AMBUSHING:
shift
setvariable zHamb ON
setvariable zHexpA Stalking
setvariable zHexpB ON
	echo
	echo AMBUSHING:
	echo
counter add 1000
	match AMB_THIEF Guild: Thief
	match BEGIN Wealth:
put info
	matchwait

AMB_THIEF:
counter add 1
goto BEGIN


SNA:
SNAP:
SNAPF:
SNAPFI:
SNAPFIR:
SNAPFIRE:
shift
put retreat
put retreat
	echo
	echo SNAPFIRE:
	echo
counter add 100
goto BEGIN

EQUIP_2_PAUSE:
pause
EQUIP_2:
	echo
	echo EQUIP_2:
	echo
setvariable zHshield %2
	match BEGIN_NOWEAP What were you
	match %c already
	match %c you get
	match %c you sling
	match %c you remove
	match EQUIP_2_PAUSE ...wait
	match EQUIP_2_PAUSE type ahead
put remove my %2
put get my %2
	matchwait

ARR:
ARRA:
ARRAN:
ARRANG:
ARRANGE:
	echo
	echo ARRANGE:
	echo
shift
setvariable zHarrange ARR_YES
setvariable zHskin SKIN1
goto %c


LOOTC:
LOOTCO:
LOOTCOI:
LOOTCOIN:
LOOTCOINS:
shift
	echo
	echo LOOTCOINS:
	echo
setvariable zHloot YES_LOOT
setvariable zHlootcoin 0
goto %c

LOOTB:
LOOTBO:
LOOTBOX:
LOOTBOXE:
LOOTBOXES:
shift
	echo
	echo LOOTBOXES:
	echo
setvariable zHloot YES_LOOT
setvariable zHlootbox 0
goto %c

LOOTG:
LOOTGE:
LOOTGEM:
LOOTGEMS:
shift
	echo
	echo LOOTGEMS:
	echo
setvariable zHloot YES_LOOT
setvariable zHlootgem 0
goto %c

LOOTJ:
LOOTJU:
LOOTJUN:
LOOTJUNK:
shift
	echo
	echo LOOTJUNK:
	echo
setvariable zHloot YES_LOOT
setvariable zHlootjunk 0
goto %c

LOOT:
shift
	echo
	echo LOOT:
	echo
setvariable zHloot YES_LOOT
setvariable zHlootgem 0
setvariable zHlootbox 0
setvariable zHlootcoin 0
goto %c

ST:
SEARCHT:
SEARCHTR:
SEARCHTRE:
SEARCHTREA:
SEARCHTREAS:
SEARCHTREASU:
SEARCHTREASUR:
SEARCHTREASURE:
shift
	echo
	echo SEARCHTREASURE:
	echo
setvariable zHsearch treasure
goto %c

SB:
SEARCHB:
SEARCHBO:
SEARCHBOX:
SEARCHBOXE:
SEARCHBOXES:
shift
	echo
	echo SEARCHBOXES:
	echo
setvariable zHsearch boxes
goto %c

SE:
SEARCHE:
SEARCHEQ:
SEARCHEQU:
SEARCHEQUI:
SEARCHEQUIP:
SEARCHEQUIPM:
SEARCHEQUIPME:
SEARCHEQUIPMEN:
SEARCHEQUIPMENT:
shift
	echo
	echo SEARCHEQUIPMENT:
	echo
setvariable zHsearch equipment
goto %c

SA:
SEARCHA:
SEARCHAL:
SEARCHALL:
shift
	echo
	echo SEARCHALL:
	echo
setvariable zHsearch all
goto %c


SG:
SEARCHG:
SEARCHGO:
SEARCHGOO:
SEARCHGOOD:
SEARCHGOODS:
shift
	echo
	echo SEARCHGOODS:
	echo
setvariable zHsearch goods
goto %c

BAC:
BACK:
BACKS:
BACKST:
BACKSTA:
BACKSTAB:
BACKSTABB:
BACKSTABI:
BACKSTABBI:
BACKSTABIN:
BACKSTABBIN:
BACKSTABING:
BACKSTABBING:
shift
setvariable zHexpA Backstab
setvariable zHexpB ON
	echo
	echo BACKSTABBING:
	echo
counter add 1100
goto %c

SLO:
SLOW:
SLOWE:
SLOWER:
YOU:
YOUN:
YOUNG:
YOUT:
YOUTH:
	echo
	echo SLOWER:
	echo
shift
counter add 2
goto begin

RET:
RETR:
RETRE:
RETREA:
RETREAT:
shift
	echo
	echo RETREAT:
	echo
setvariable zHretreat SKIN_RETREAT
setvariable zHskin SKIN1
goto %c

SKIND:
SKINDR:
SKINDRO:
SKINDROP:
shift
	echo
	echo SKINDROP:
	echo
setvariable zHskindrop BUN_NO
setvariable zHskin SKIN1
goto %c

SKINE:
SKINEX:
SKINEXP:
shift
	echo
	echo SKINEXP:
	echo
setvariable zHskinexp BUN_NO
setvariable zHskin SKIN1
goto %c


SKIN:
SKINN:
SKINNI:
SKINNIN:
SKINNING:
shift
	echo
	echo SKIN:
	echo
setvariable zHskin SKIN1
goto %c

APP:
APPR:
APPRA:
APPRAI:
APPRAIS:
APPRAISE:
APPRAISA:
APPRAISAL:
shift
	echo
	echo APPRAISE:
	echo
setvariable zHmonsterapp YES_APP
goto %c

GAU:
GAUN:
GAUNT:
GAUNTL:
GAUNTLE:
GAUNTLET:
GAUNTLETS:
	echo
	echo GAUNTLETS:
	echo
setvariable zHtype GAUNT
	match LE_SLICE A claw pops out of each of your iron gauntlets.
	match GAUNT_GLANCE You start to slap your iron gauntlets
put slap my gauntlets
	matchwait

GAUNT_GLANCE:
	echo
	echo GAUNT_GLANCE:
	echo
	match LE_SLICE razor-edged claw in your
	match BEGIN_HANDS in your left hand
put glance
	matchwait

SWAP:
BAS:
BAST:
BASTA:
BASTAR:
BASTARD:
	echo
	echo WEAPON_SWAP:
	echo
shift
	match SWAPPABLE_%1 you draw
	match SWAPPABLE_%1 re already
	match BEGIN_HANDS free hand
	match SWAPPABLE_%1 free to
	matchre SWAPPABLE_A /out of reach|remove|What were you|can't seem|Wield what\?/i
	match LABELERROR You can only wield a weapon or a shield!
put wield right my %2
	matchwait


SWAPPABLE_A:
	echo
	echo SWAPPABLE_A:
	echo
	match SWAPPABLE_%1 you sling
	match SWAPPABLE_%1 re already
	match SWAPPABLE_%1 inventory
	match SWAPPABLE_%1 you remove
	match SWAPPABLE_A2 remove what?
	match BEGIN_HANDS hands are full
put remove my %2
	matchwait

SWAPPABLE_A2:
	match SWAPPABLE_BALDRIC baldric
	match SWAPPABLE_%1 you get
	match LABELERROR What were you
put get my %2
	matchwait

SWAPPABLE_BALDRIC:
	echo
	echo SWAPPABLE_BALDRIC:
	echo
setvariable zHget ON
setvariable zHgetA in my baldric
goto SWAPPABLE_%1

SWAPPABLE_QS:
shift
goto SWAPPABLE_QSA


SWAPPABLE_1:
shift
goto SWAPPABLE_1A


SWAPPABLE_2:
shift
goto SWAPPABLE_2A


SWAPPABLE_SS:
shift
goto SWAPPABLE_SSA


SWAPPABLE_B:
shift
goto SWAPPABLE_BA


SWAPPABLE_E:
shift
goto SWAPPABLE_EA


SWAPPABLE_HA:
shift
goto SWAPPABLE_HAA


SWAPPABLE_PI:
shift
goto SWAPPABLE_PIA


SWAPPABLE_1_PAUSE:
pause
SWAPPABLE_1A:
	match WEAPON_CHECK heavy
	match SWAPPABLE_1_PAUSE two-handed
put swap my %1
	matchwait

SWAPPABLE_2_PAUSE:
pause
SWAPPABLE_2A:
	match WEAPON_CHECK two-handed
	match SWAPPABLE_2_PAUSE heavy
put swap my %1
	matchwait

SWAPPABLE_B_PAUSE:
pause
SWAPPABLE_BA:
	match WEAPON_CHECK blunt
	match SWAPPABLE_B_PAUSE edged
put swap my %1
	matchwait

SWAPPABLE_E_PAUSE:
pause
SWAPPABLE_EA:
	match WEAPON_CHECK edged
	match SWAPPABLE_E_PAUSE blunt
put swap my %1
	matchwait

SWAPPABLE_PI_PAUSE:
pause
SWAPPABLE_PIA:
	match WEAPON_CHECK pike
	match SWAPPABLE_PI_PAUSE halberd
	match SWAPPABLE_PI_PAUSE short staff
	match SWAPPABLE_PI_PAUSE quarter staff
put swap my %1
	matchwait
	
SWAPPABLE_SS_PAUSE:
pause
SWAPPABLE_SSA:
	match WEAPON_CHECK short staff
	match SWAPPABLE_SS_PAUSE halberd
	match SWAPPABLE_SS_PAUSE pike
	match SWAPPABLE_SS_PAUSE quarter staff
put swap my %1
	matchwait	

SWAPPABLE_HA_PAUSE:
pause
SWAPPABLE_HAA:
	match WEAPON_CHECK halberd
	match SWAPPABLE_HA_PAUSE short staff
	match SWAPPABLE_HA_PAUSE pike
	match SWAPPABLE_HA_PAUSE quarter staff
put swap my %1
	matchwait

SWAPPABLE_QS_PAUSE:
pause
SWAPPABLE_QSA:
	match WEAPON_CHECK quarter staff
	match SWAPPABLE_QS_PAUSE short staff
	match SWAPPABLE_QS_PAUSE pike
	match SWAPPABLE_QS_PAUSE halberd
put swap my %1
	matchwait

TM:
	echo
	echo TM:
	echo
counter add 2300
setvariable zHm TM
shift
setvariable zHspell %1
shift
setvariable zHmana %1
shift
setvariable zHexpB ON
setvariable zHexpA target
IF_1 goto MAGIC_EQUIP
goto M_BRAWL

MAG:
MAGI:
MAGIC:
	echo
	echo MAGIC:
	echo
counter add 2300
setvariable zHm PM
shift
setvariable zHspell %1
shift
setvariable zHmana %1
shift
setvariable zHexp primary
setvariable zHexpM ON
IF_1 goto MAGIC_EQUIP
goto M_BRAWL

PM:
	echo
	echo PM:
	echo
counter add 2300
setvariable zHm PM
shift
setvariable zHspell %1
shift
setvariable zHmana %1
shift
setvariable zHexpB ON
setvariable zHexpA primary
IF_1 goto MAGIC_EQUIP
goto M_BRAWL

M_BRAWL:
setvariable zHtype BRAWL
setvariable zHexp Brawling
setvariable zHmc COMBO_6_1
setvariable zHcBrawl ON
setvariable zHcombo1 dodge
setvariable zHcombo2 gouge
setvariable zHcombo3 claw
setvariable zHcombo4 elbow
setvariable zHcombo5 punch
setvariable zHcombo6 slam
setvariable zHcombo7 unused
setvariable zHcombo8 unused
shift
goto %c


MAGIC_EQUIP_PAUSE:
pause
MAGIC_EQUIP:
	echo
	echo MAGIC_EQUIP:
	echo
	match M_WEAPON_CHECK you draw
	match M_WEAPON_CHECK re already holding
	match BEGIN_HANDS free hand
	match M_WEAPON_CHECK free to
	matchre M_BEGINA /out of reach|remove|What were you|can't seem|Wield what\?/i
	match M_VARI_CHECK You can only wield a weapon or a shield!
	match MAGIC_EQUIP_PAUSE ...wait
put wield right my %1
	matchwait

M_BEGINA:
	echo
	echo M_BEGINA:
	echo
	match M_WEAPON_CHECK you sling
	match M_WEAPON_CHECK re already holding
	match M_WEAPON_CHECK inventory
	match M_WEAPON_CHECK you remove
	match BEGIN_HANDS free hand
	match M_BEGINB remove what?
	match BEGIN_HANDS hands are full
put remove my %1
	matchwait

M_BEGINB:
	echo
	echo M_BEGINB:
	echo
	match M_B_BALDRIC baldric
	match M_WEAPON_CHECK you get
	match M_VARI_CHECK What were you
put get my %1
	matchwait

M_B_BALDRIC:
	echo
	echo M_B_BALDRIC:
	echo
setvariable zHget ON
setvariable zHgetA in my baldric
goto M_WEAPON_CHECK

M_VARI_CHECK:
	echo
	echo M_VARI_CHECK:
	echo
	goto M_%1
exit

M_WEAPON_CHECK:
	echo
	echo M_WEAPON_CHECK:
	echo
setvariable zHweapon %1
	match M_LE light edged
	match M_ME medium edged
	match M_HE heavy edged
	match M_2HE two-handed edged
	match M_LB light blunt
	match M_MB medium blunt
	match M_HB heavy blunt
	match M_2HB two-handed blunt
	match M_STAFF_SLING staff sling
	match M_SLINGS sling
	match M_SHORT_BOW short bow
	match M_LONG_BOW long bow
	match M_COMP_BOW composite bow
	match M_LX light crossbow
	match M_HX heavy crossbow
	match M_SHORT_STAFF short staff
	match M_Q_STAFF quarter staff
	match M_PIKE  pike 
	match M_HALBERD halberd
	match BEGIN_NOWEAP What were you
	match M_UN_ID roundtime
put appraise my %1 quick
	matchwait

M_REP:
M_REPE:
M_REPEA:
M_REPEAT:
M_REPEATE:
M_REPEATER:
	echo
	echo M_REPEATER:
	echo
put retreat
waitfor you
put retreat
waitfor you
setvariable zHrepeat REPEAT
setvariable zHexp crossbow
shift
goto MAGIC_EQUIP


M_GAU:
M_GAUN:
M_GAUNT:
M_GAUNTL:
M_GAUNTLE:
M_GAUNTLET:
M_GAUNTLETS:
	echo
	echo M_GAUNTLETS:
	echo
setvariable zHtype GAUNT
	match M_LE_SLICE A claw pops out of each of your iron gauntlets.
	match M_GAUNT_GLANCE You start to slap your iron gauntlets
put slap my gauntlets
	matchwait

M_GAUNT_GLANCE:
	echo
	echo M_GAUNT_GLANCE:
	echo
	match M_LE_SLICE razor-edged claw in your
	match BEGIN_HANDS in your left hand
put glance
	matchwait

M_SWAP:
M_BAS:
M_BAST:
M_BASTA:
M_BASTAR:
M_BASTARD:
	echo
	echo M_WEAPON_SWAP:
	echo
shift
	match M_SWAPPABLE_%1 you draw
	match M_SWAPPABLE_%1 re already
	match BEGIN_HANDS free hand
	match M_SWAPPABLE_%1 free to
	matchre M_SWAPPABLE_A /out of reach|remove|What were you|can't seem|Wield what\?/i
	match LABELERROR You can only wield a weapon or a shield!
put wield right my %2
	matchwait

M_SWAPPABLE_A:
	echo
	echo M_SWAPPABLE_A:
	echo
	match M_SWAPPABLE_%1 you sling
	match M_SWAPPABLE_%1 re already
	match M_SWAPPABLE_%1 inventory
	match M_SWAPPABLE_%1 you remove
	match M_SWAPPABLE_A2 remove what?
	match BEGIN_HANDS hands are full
put remove my %2
	matchwait

M_SWAPPABLE_A2:
	match M_SWAPPABLE_BALDRIC baldric
	match M_SWAPPABLE_%1 you get
	match LABELERROR What were you
put get my %2
	matchwait

M_SWAPPABLE_BALDRIC:
	echo
	echo M_SWAPPABLE_BALDRIC:
	echo
setvariable zHget ON
setvariable zHgetA in my baldric
goto M_SWAPPABLE_%1

M_SWAPPABLE_QS:
shift
goto M_SWAPPABLE_QSA


M_SWAPPABLE_1:
shift
goto M_SWAPPABLE_1A


M_SWAPPABLE_2:
shift
goto M_SWAPPABLE_2A


M_SWAPPABLE_SS:
shift
goto M_SWAPPABLE_SSA


M_SWAPPABLE_B:
shift
goto M_SWAPPABLE_BA


M_SWAPPABLE_E:
shift
goto M_SWAPPABLE_EA


M_SWAPPABLE_HA:
shift
goto M_SWAPPABLE_HAA


M_SWAPPABLE_PI:
shift
goto M_SWAPPABLE_PIA


M_SWAPPABLE_1_PAUSE:
pause
M_SWAPPABLE_1A:
	match M_WEAPON_CHECK heavy
	match M_SWAPPABLE_1_PAUSE two-handed
put swap my %1
	matchwait

M_SWAPPABLE_2_PAUSE:
pause
M_SWAPPABLE_2A:
	match M_WEAPON_CHECK two-handed
	match M_SWAPPABLE_2_PAUSE heavy
put swap my %1
	matchwait

M_SWAPPABLE_B_PAUSE:
pause
M_SWAPPABLE_BA:
	match M_WEAPON_CHECK blunt
	match M_SWAPPABLE_B_PAUSE edged
put swap my %1
	matchwait

M_SWAPPABLE_E_PAUSE:
pause
M_SWAPPABLE_EA:
	match M_WEAPON_CHECK edged
	match M_SWAPPABLE_E_PAUSE blunt
put swap my %1
	matchwait

M_SWAPPABLE_PI_PAUSE:
pause
M_SWAPPABLE_PIA:
	match M_WEAPON_CHECK pike
	match M_SWAPPABLE_PI_PAUSE halberd
	match M_SWAPPABLE_PI_PAUSE short staff
	match M_SWAPPABLE_PI_PAUSE quarter staff
put swap my %1
	matchwait
	
M_SWAPPABLE_SS_PAUSE:
pause
M_SWAPPABLE_SSA:
	match M_WEAPON_CHECK short staff
	match M_SWAPPABLE_SS_PAUSE halberd
	match M_SWAPPABLE_SS_PAUSE pike
	match M_SWAPPABLE_SS_PAUSE quarter staff
put swap my %1
	matchwait	

M_SWAPPABLE_HA_PAUSE:
pause
M_SWAPPABLE_HAA:
	match M_WEAPON_CHECK halberd
	match M_SWAPPABLE_HA_PAUSE short staff
	match M_SWAPPABLE_HA_PAUSE pike
	match M_SWAPPABLE_HA_PAUSE quarter staff
put swap my %1
	matchwait

M_SWAPPABLE_QS_PAUSE:
pause
M_SWAPPABLE_QSA:
	match M_WEAPON_CHECK quarter staff
	match M_SWAPPABLE_QS_PAUSE short staff
	match M_SWAPPABLE_QS_PAUSE pike
	match M_SWAPPABLE_QS_PAUSE halberd
put swap my %1
	matchwait

M_LE_PAUSE:
pause
M_LE:
	echo
	echo M_LE:
	echo
M_LE2:
setvariable zHexp Light.Edged
	match M_LE_SLICE leaf-blade
	match M_LE_SLICE Jagged Dao
	match M_LE_SLICE jagged dragon-pommel dao
	match M_LE_SLICE Curved Kythe
	match M_LE_SLICE Koummya
	match M_LE_SLICE Jambiya
	match M_LE_SLICE Serrated Steel Dao
	match M_LE_SLICE Gold and Blue-enameled Oben
	match M_LE_SLICE Darkly-Tinted Oben
	match M_LE_SLICE Bejeweled Silver Knife
	match M_LE_SLICE Crescent-bladed Shaska
	match M_LE_SLICE katar
	match M_LE_SLICE kanabu
	match M_LE_STAB Thin Steel Katar with Viper Fang Hilt
	match M_LE_STAB right hand
	match M_LE_PAUSE ...wait
	match M_LE_PAUSE type ahead
put glance
	matchwait


M_LE_SLICE:
	echo
	echo M_LE_SLICE:
	echo
setvariable zHcombo1 parry
setvariable zHcombo2 feint
setvariable zHcombo3 draw
setvariable zHcombo4 slice
setvariable zHcombo5 chop
setvariable zHcombo6 sweep
setvariable zHcombo7 unused
setvariable zHcombo8 unused
setvariable zHmc COMBO_6_1
setvariable zHexpM ON
#setvariable zHcombo1 parry
#setvariable zHcombo2 feint
#setvariable zHcombo3 draw
#setvariable zHcombo4 thrust
#setvariable zHcombo5 jab
#setvariable zHcombo6 unused
#setvariable zHcombo7 unused
#setvariable zHcombo8 unused
IF_2 goto EQUIP_2
goto %c


M_LE_STAB:
	echo
	echo M_LE_THRUST:
	echo
setvariable zHcombo1 parry
setvariable zHcombo2 feint
setvariable zHcombo3 lunge
setvariable zHcombo4 thrust
setvariable zHcombo5 jab
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
setvariable zHmc COMBO_5_1
setvariable zHexpM ON
#setvariable zHcombo1 parry
#setvariable zHcombo2 feint
#setvariable zHcombo3 draw
#setvariable zHcombo4 thrust
#setvariable zHcombo5 pummel
#setvariable zHcombo6 dodge
#setvariable zHcombo7 thrust
#setvariable zHcombo8 unused
#setvariable zHmc COMBO_7_1
IF_2 goto EQUIP_2
goto %c

M_ME_PAUSE:
pause
M_ME:
setvariable zHexp Medium.Edged
	echo
	echo M_ME:
	echo
	match M_ME_SLICE Sapara
	match M_ME_SLICE Scimitar
	match M_ME_SLICE Cutlass
	match M_ME_SLICE Axe
	match M_ME_SLICE Hatchet
	match M_ME_SLICE Shotel
	match M_ME_SLICE Tei'oloh'ata
	match M_ME_SLICE Parang
	match M_ME_SLICE Sword
	match M_ME_SLICE Telo
	match M_ME_SLICE Adze
	match M_ME_SLICE Curlade
	match M_ME_SLICE Hanger
	match M_ME_SLICE Scythe-blade
	match M_ME_SLICE Cleaver
	match M_ME_SLICE Lata'oloh
	match M_ME_SLICE Mirror Blade
	match M_ME_ILTESH Iltesh
	match M_ME_STAB Rapier
	match M_ME_STAB Nambeli
	match M_ME_STAB Yataghan
	match M_ME_STAB Shashqa
	match M_ME_STAB Gladius
	match M_ME_STAB Pasabas
	match M_ME_STAB Foil
	match M_ME_STAB Thrusting Blade
	match M_ME_STAB Sabre
	match M_ME_SLICE right hand
	match M_ME_PAUSE ...wait
	match M_ME_PAUSE type ahead
put glance
	matchwait

#Not Steph's
M_ME_SLICE:
	echo
	echo M_ME_SLICE:
	echo
setvariable zHcombo1 parry
setvariable zHcombo2 feint
setvariable zHcombo3 draw
setvariable zHcombo4 sweep
setvariable zHcombo5 slice
setvariable zHcombo6 chop
setvariable zHcombo7 unused
setvariable zHcombo8 unused
setvariable zHmc COMBO_6_1
setvariable zHexpM ON
IF_2 goto EQUIP_2
goto %c

M_ME_ILTESH:
	echo
	echo M_ME_ILTESH:
	echo
setvariable zHcombo1 feint
setvariable zHcombo2 draw
setvariable zHcombo3 sweep
setvariable zHcombo4 slice
setvariable zHcombo5 chop
setvariable zHcombo6 lunge
setvariable zHcombo7 thrust
setvariable zHcombo8 jab
setvariable zHmc COMBO_8_1
setvariable zHexpM ON
IF_2 goto EQUIP_2
goto %c

M_ME_STAB:
	echo
	echo M_ME_THRUST:
	echo
setvariable zHcombo1 parry
setvariable zHcombo2 feint
setvariable zHcombo3 draw
setvariable zHcombo4 sweep
setvariable zHcombo5 thrust
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
setvariable zHmc COMBO_5_1
setvariable zHexpM ON
IF_2 goto EQUIP_2
goto %c

M_HE_PAUSE:
pause
M_HE:
	echo
	echo M_HE:
	echo
setvariable zHexp Heavy.Edged
	match M_HE_STAB Enamel-Hilted Longsword
	match M_HE_STAB Namkoba
	match M_HE_STAB Reinforced Cinquedea
	match M_HE_SLICE right hand
	match M_HE_PAUSE ...wait
	match M_HE_PAUSE type ahead
put glance
	matchwait

M_HE_SLICE:
	echo
	echo M_HE_SLICE:
	echo
setvariable zHcombo1 parry
setvariable zHcombo2 feint
setvariable zHcombo3 draw
setvariable zHcombo4 sweep
setvariable zHcombo5 slice
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
setvariable zHmc COMBO_5_1
setvariable zHexpM ON
IF_2 goto EQUIP_2
goto %c


M_HE_STAB:
	echo
	echo M_HE_THRUST:
	echo
setvariable zHcombo1 parry
setvariable zHcombo2 feint
setvariable zHcombo3 lunge
setvariable zHcombo4 thrust
setvariable zHcombo5 jab
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
setvariable zHmc COMBO_5_1
setvariable zHexpM ON
IF_2 goto EQUIP_2
goto %c

M_2HE:
	echo
	echo M_2HE:
	echo
setvariable zHexp Twohanded.Edged
setvariable zHcombo1 parry
setvariable zHcombo2 feint
setvariable zHcombo3 draw
setvariable zHcombo4 sweep
setvariable zHcombo5 slice
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
setvariable zHmc COMBO_5_1
setvariable zHexpM ON
goto %c

M_LB:
	echo
	echo M_LB:
	echo
setvariable zHexp Light.Blunt
setvariable zHcombo1 dodge
#setvariable zHcombo2 feint
setvariable zHcombo2 bash
setvariable zHcombo3 sweep
setvariable zHcombo4 draw
#setvariable zHcombo5 jab
setvariable zHcombo5 slice
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
setvariable zHmc COMBO_5_1
setvariable zHexpM ON
IF_2 goto EQUIP_2
goto %c

M_MB:
	echo
	echo M_MB:
	echo
setvariable zHexp Medium.Blunt
setvariable zHcombo1 dodge
setvariable zHcombo2 feint
setvariable zHcombo3 bash
setvariable zHcombo4 sweep
setvariable zHcombo5 draw
setvariable zHcombo6 jab
setvariable zHcombo7 slice
setvariable zHcombo8 unused
setvariable zHmc COMBO_7_1
setvariable zHexpM ON
IF_2 goto EQUIP_2
goto %c

M_HB:
	echo
	echo M_HB:
	echo
setvariable zHexp Heavy.Blunt
setvariable zHcombo1 feint
setvariable zHcombo2 bash
setvariable zHcombo3 sweep
setvariable zHcombo4 draw
setvariable zHcombo5 slice
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
setvariable zHmc COMBO_5_1
setvariable zHexpM ON
IF_2 goto EQUIP_2
goto %c

M_2HB:
	echo
	echo M_2HB:
	echo
setvariable zHexp Twohanded.Blunt
setvariable zHcombo1 feint
setvariable zHcombo2 bash
setvariable zHcombo3 sweep
setvariable zHcombo4 draw
setvariable zHcombo5 slice
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
setvariable zHmc COMBO_5_1
setvariable zHexpM ON
goto %c

M_SHORT_STAFF:
	echo
	echo M_SHORT_STAFF:
	echo
setvariable zHexp Short.Staff
setvariable zHcombo1 parry
setvariable zHcombo2 thrust
setvariable zHcombo3 sweep
setvariable zHcombo4 chop
setvariable zHcombo5 jab
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
setvariable zHmc COMBO_5_1
setvariable zHexpM ON
goto %c

M_Q_STAFF:
	echo
	echo M_Q_STAFF:
	echo
setvariable zHexp Quarter.Staff
setvariable zHcombo1 parry
setvariable zHcombo2 thrust
setvariable zHcombo3 sweep
setvariable zHcombo4 bash
setvariable zHcombo5 draw
setvariable zHcombo6 slice
setvariable zHcombo7 unused
setvariable zHcombo8 unused
setvariable zHmc COMBO_6_1
setvariable zHexpM ON
goto %c

M_PIKE:
	echo
	echo M_PIKE:
	echo
setvariable zHexp Pike
setvariable zHcombo1 dodge
setvariable zHcombo2 jab
setvariable zHcombo3 sweep
setvariable zHcombo4 thrust
setvariable zHcombo5 lunge
setvariable zHcombo6 unused
setvariable zHcombo7 unused
setvariable zHcombo8 unused
setvariable zHmc COMBO_5_1
setvariable zHexpM ON
goto %c

M_HALBERD:
	echo
	echo M_HALBERD:
	echo
setvariable zHexp Halberd
setvariable zHcombo1 dodge
setvariable zHcombo2 feint
setvariable zHcombo3 thrust
setvariable zHcombo4 sweep
setvariable zHcombo5 chop
setvariable zHcombo6 jab
setvariable zHcombo7 unused
setvariable zHcombo8 unused
setvariable zHmc COMBO_6_1
setvariable zHexpM ON
#setvariable zHcombo1 thrust
#setvariable zHcombo2 sweep
#setvariable zHcombo3 slice
#setvariable zHcombo4 chop
#setvariable zHcombo5 jab
#setvariable zHcombo6 unused
#setvariable zHcombo7 unused
#setvariable zHcombo8 unused
#setvariable zHmc COMBO_5_1
goto %c

M_SLINGS:
setvariable zHammo rock
	echo
	echo M_SLING:
	echo
put retreat
waitfor you
put retreat
waitfor you
setvariable zHmc RANGE_LOAD
setvariable zHexpM SLING
IF_2 goto EQUIP_2
goto %c

M_STAFF_SLING:
setvariable zHammo rock
	echo
	echo M_STAFF_SLING:
	echo
put retreat
waitfor you
put retreat
waitfor you
setvariable zHmc RANGE_LOAD
setvariable zHexpM SLING
goto %c

M_LX:
setvariable zHammo bolt
	echo
	echo M_LX:
	echo
put retreat
waitfor you
put retreat
waitfor you
setvariable zHmc RANGE_LOAD
setvariable zHexpM XBOW
IF_2 goto EQUIP_2
goto %c

M_HX:
setvariable zHammo bolt
	echo
	echo M_HX:
	echo
put retreat
waitfor you
put retreat
waitfor you
setvariable zHmc RANGE_LOAD
setvariable zHexpM XBOW
goto %c

M_SHORT_BOW:
setvariable zHammo arrow
	echo
	echo M_SHORT_BOW:
	echo
put retreat
waitfor you
put retreat
waitfor you
setvariable zHmc RANGE_LOAD
setvariable zHexpM BOW
goto %c

M_LONG_BOW:
setvariable zHammo arrow
	echo
	echo M_LONG_BOW:
	echo
put retreat
waitfor you
put retreat
waitfor you
setvariable zHmc RANGE_LOAD
setvariable zHexpM BOW
goto %c

M_COMP_BOW:
setvariable zHammo arrow
	echo
	echo M_COMP_BOW:
	echo
put retreat
waitfor you
put retreat
waitfor you
setvariable zHmc RANGE_LOAD
setvariable zHexpM BOW
goto %c

SET:
	echo
	echo SET:
	echo
setvariable zHmultiZ 1
shift
SWITCH1:
counter add 1
setvariable zHmulti%c %1
shift
IF_1 goto Switch1
counter add 1
goto MULTI_N%c

MULTI_N2:
deletevariable zHmulti2
MULTI_N3:
deletevariable zHmulti3
MULTI_N4:
deletevariable zHmulti4
MULTI_N5:
deletevariable zHmulti5
MULTI_N6:
deletevariable zHmulti6
MULTI_N7:
deletevariable zHmulti7
MULTI_N8:
deletevariable zHmulti8
MULTI_N9:
deletevariable zHmulti9
MULTI_N10:
deletevariable zHmulti10
MULTI_N11:
deletevariable zHmulti11
MULTI_N12:
deletevariable zHmulti12
MULTI_N13:
deletevariable zHmulti13
MULTI_N14:
deletevariable zHmulti14
MULTI_N15:
deletevariable zHmulti15
MULTI_N16:
deletevariable zHmulti16
MULTI_N17:
deletevariable zHmulti18
MULTI_N19:
deletevariable zHmulti19
MULTI_N20:
deletevariable zHmulti20
echo
echo ************************************
echo **  Multi Weapon Set-up Complete!
echo **        To use it type
echo **       .SFhunter multi
echo ************************************
echo
exit

%EZmulti1:
deletevariable zHmulti1
%EZmulti2:
deletevariable zHmulti2
%EZmulti3:
deletevariable zHmulti3
%EZmulti4:
deletevariable zHmulti4
%EZmulti5:
deletevariable zHmulti5
%EZmulti6:
deletevariable zHmulti6
%EZmulti7:
deletevariable zHmulti7
%EZmulti8:
deletevariable zHmulti8
%EZmulti9:
deletevariable zHmulti9
%EZmulti10:
deletevariable zHmulti10
%EZmulti11:
deletevariable zHmulti11
%EZmulti12:
deletevariable zHmulti12
%EZmulti13:
deletevariable zHmulti13
%EZmulti14:
deletevariable zHmulti14
%EZmulti15:
deletevariable zHmulti15
%EZmulti16:
deletevariable zHmulti16
%EZmulti17:
deletevariable zHmulti18
%EZmulti19:
deletevariable zHmulti19
%EZmulti20:
deletevariable zHmulti20

MULTI:
	echo
	echo MULTI:
	echo
shift
IF_1 setvariable zHmultiZ %1
IF_1 goto MULTI_%1
setvariable zHmultiZ 1
pause
put .SFhunter MultiA %zHmulti1

MULTI_1:
pause
put .SFhunter Multia %zHmulti1
MULTI_2:
pause
put .SFhunter Multia %zHmulti2
MULTI_3:
pause
put .SFhunter Multia %zHmulti3
MULTI_4:
pause
put .SFhunter Multia %zHmulti4
MULTI_5:
pause
put .SFhunter Multia %zHmulti5
MULTI_6:
pause
put .SFhunter Multia %zHmulti6
MULTI_7:
pause
put .SFhunter Multia %zHmulti7
MULTI_8:
pause
put .SFhunter Multia %zHmulti8
MULTI_9:
pause
put .SFhunter Multia %zHmulti9
MULTI_10:
pause
put .SFhunter Multia %zHmulti10
MULTI_11:
pause
put .SFhunter Multia %zHmulti11
MULTI_12:
pause
put .SFhunter Multia %zHmulti12
MULTI_13:
pause
put .SFhunter Multia %zHmulti13
MULTI_14:
pause
put .SFhunter Multia %zHmulti14
MULTI_15:
pause
put .SFhunter Multia %zHmulti15
MULTI_16:
pause
put .SFhunter Multia %zHmulti16
MULTI_17:
pause
put .SFhunter Multia %zHmulti17
MULTI_18:
pause
put .SFhunter Multia %zHmulti18
MULTI_19:
pause
put .SFhunter Multia %zHmulti19
MULTI_20:
pause
put .SFhunter Multia %zHmulti20


%zHmulti1:
%zHmulti2:
%zHmulti3:
%zHmulti4:
%zHmulti5:
%zHmulti6:
%zHmulti7:
%zHmulti8:
%zHmulti9:
%zHmulti10:
%zHmulti11:
%zHmulti12:
%zHmulti13:
%zHmulti14:
%zHmulti15:
%zHmulti16:
%zHmulti17:
%zHmulti18:
%zHmulti19:
%zHmulti20:
setvariable zHmultiZ 1
pause
put .SFhunter Multia %zHmulti1


MULTIA:
	echo
	echo MULTIA:
	echo
Shift
setvariable zHmulti ON
goto %c

DMULTI:
	echo
	echo DMULTI:
	echo
setvariable zHmulti ON
shift
goto BEGIN

DSET:
	echo
	echo DSET:
	echo
setvariable zHD SET_YES
shift
setvariable zHDset %0
counter add 10000
goto %c

10100:
10200:
10300:
10400:
10402:
10500:
10502:
10600:
10602:
10700:
10702:
10800:
10802:
10900:
11000:
11100:
11200:
11300:
11400:
11401:
11500:
11501:
11600:
11601:
11700:
11701:
11800:
11801:
11900:
12000:
12100:
12200:
12300:
12400:
DEFAULT_SET:
	echo
	echo DEFAULT_SET:
	echo
counter subtract 10000
setvariable zHDloot %zHloot
setvariable zHDlootbox %zHlootbox
setvariable zHDlootcoin %zHlootcoin
setvariable zHDlootgem %zHlootgem
setvariable zHDretreat %zHretreat
setvariable zHDskin %zHskin
setvariable zHDskinexp %zHskinexp
setvariable zHDskindrop %zHskindrop
setvariable zHDarrange %zHarrange
setvariable zHDmonsterapp %zHmonsterapp
setvariable zHDmulti %zHmulti
setvariable zHDexp %zHexp
setvariable zHDexpA %zHexpA
setvariable zHDexpB %zHexpB
setvariable zHDtype %zHtype
setvariable zHDrange %zHrange
setvariable zHDrange1 %zHrange1
setvariable zHDrepeat %zHrepeat
setvariable zHDammo %zHammo
setvariable zHDcombo1 %zHcombo1
setvariable zHDcombo2 %zHcombo2
setvariable zHDcombo3 %zHcombo3
setvariable zHDcombo4 %zHcombo4
setvariable zHDcombo5 %zHcombo5
setvariable zHDcombo6 %zHcombo6
setvariable zHDcombo7 %zHcombo7
setvariable zHDcombo8 %zHcombo8
setvariable zHDcounter %c
setvariable zHDm %zHm
setvariable zHDmc %zHmc
setvariable zHDspell %zHspell
setvariable zHDmana %zHmana
setvariable zHDexpC %zHexpC
setvariable zHDexpM %zHexpM
setvariable zHDget %zHget
setvariable zHDgetA %zHgetA
setvariable zHDcount %zHcount
setvariable zHDCOUNT %zHCOUNT
setvariable zHDcBrawl %zHcBrawl
setvariable zHDbrawltype %zHbrawltype
goto DCOM1_%zHCOM1

DCOM1_ON:
setvariable zHDCOM1 ON
setvariable zHDcom1 %zHcom1
goto DCOM2_%zHCOM2

DCOM1_OFF:
setvariable zHDCOM1 OFF
goto DCOM2_%zHCOM2

DCOM2_ON:
setvariable zHDCOM2 ON
setvariable zHDcom2 %zHcom2
goto DCOM3_%zHCOM3

DCOM2_OFF:
setvariable zHDCOM2 OFF
goto DCOM3_%zHCOM3

DCOM3_ON:
setvariable zHDCOM3 ON
setvariable zHDcom3 %zHcom3
goto DCOM4_%zHCOM4

DCOM3_OFF:
setvariable zHDCOM3 OFF
goto DCOM4_%zHCOM4

DCOM4_ON:
setvariable zHDCOM4 ON
setvariable zHDcom4 %zHcom4
goto DCOM5_%zHCOM5

DCOM4_OFF:
setvariable zHDCOM4 OFF
goto DCOM5_%zHCOM5

DCOM5_ON:
setvariable zHDCOM5 ON
setvariable zHDcom5 %zHcom5
goto DCOM6

DCOM5_OFF:
setvariable zHDCOM5 OFF

DCOM6:
IF_1 setvariable zHDweapon %1
IF_2 setvariable zHDshield %2
IF_2 goto DEF_DONE
setvariable zHD SET_NOSHIELD
IF_1 goto DEF_DONE
setvariable zHD SET_NOWEAPON


DEF_DONE:
IF_2 goto UNEQUIP_SET2
IF_1 goto UNEQUIP_SET
GOTO DEF_DONE_SET

UNEQUIP_SET2_PAUSE:
pause
UNEQUIP_SET2:
	echo
	echo UNEQUIP_SET2:
	echo
	matchre UNEQUIP_SET /you (sling|attach)|re already|wear what|what were you/i
	match UNEQUIP_SET2A can't wear
	match UNEQUIP_SET2_PAUSE ...wait
	match UNEQUIP_SET2_PAUSE type ahead
put wear %2
	matchwait

UNEQUIP_SET2A:
	echo
	echo UNEQUIP_SET2A:
	echo
put stow %2
wait

UNEQUIP_SET_PAUSE:
pause
UNEQUIP_SET:
	echo
	echo UNEQUIP_SET:
	echo
	match UNEQUIP_SETA appropriate sheath
	match UNEQUIP_SETA sheathe what?
	match UNEQUIP_SETA where?
	match UNEQUIP_SETA isn't any more
	matchre DEF_DONE_SET /You Sheath|you slide|you place|you slip|you hang|you secure/i
	match UNEQUIP_SETA you can only
	match UNEQUIP_SETA too heavy
	match UNEQUIP_SET_PAUSE ...wait
	match UNEQUIP_SET_PAUSE type ahead
put sheath
	matchwait

UNEQUIP_SETA:
	echo
	echo UNEQUIP_SETA:
	echo
	match UNEQUIP_SET_DROP unload
	match UNEQUIP_SETB can't wear
	matchre DEF_DONE_SET /you (sling|attach)|re already|wear what|what were you/i
put wear %1
	matchwait

UNEQUIP_SET_DROP:
	echo
	echo UNEQUIP_SET_DROP:
	echo
put drop my %1
goto DEF_DONE_SET

UNEQUIP_SETB:
	echo
	echo UNEQUIP_SETB:
	echo
goto UNEQUIP_SETB_%zHget


UNEQUIP_SETB_ON:
put put my %1 %zhGetA
wait
goto DEF_DONE_SET

UNEQUIP_SETB_OFF:
put stow %1
wait
DEF_DONE_SET:
	echo
	echo *******************************
	echo ** Default combat is now set!
	echo *******************************
	echo
exit



SET_YES:
pause
put .SFhunter DEFSET %zHDweapon %zHDshield

SET_NOSHIELD:
pause
put .SFhunter DEFSET %zHDweapon

SET_NOWEAPON:
pause
put .SFhunter DEFSET

DEFSET:
	echo
	echo DEFSET:
	echo
shift
setvariable zHloot %zHDloot
setvariable zHlootbox %zHDlootbox
setvariable zHlootcoin %zHDlootcoin
setvariable zHlootgem %zHDlootgem
setvariable zHretreat %zHDretreat
setvariable zHskin %zHDskin
setvariable zHskinexp %zHDskinexp
setvariable zHskindrop %zHDskindrop
setvariable zHarrange %zHDarrange
setvariable zHmonsterapp %zHDmonsterapp
setvariable zHmulti %zHDmulti
setvariable zHexp %zHDexp
setvariable zHexpA %zHDexpA
setvariable zHexpB %zHDexpB
setvariable zHtype %zHDtype
setvariable zHrange %zHDrange
setvariable zHrange1 %zHDrange1
setvariable zHrepeat %zHDrepeat
setvariable zHammo %zHDammo
setvariable zHcombo1 %zHDcombo1
setvariable zHcombo2 %zHDcombo2
setvariable zHcombo3 %zHDcombo3
setvariable zHcombo4 %zHDcombo4
setvariable zHcombo5 %zHDcombo5
setvariable zHcombo6 %zHDcombo6
setvariable zHcombo7 %zHDcombo7
setvariable zHcombo8 %zHDcombo8
setvariable zHm %zHDm
setvariable zHmc %zHDmc
setvariable zHspell %zHDspell
setvariable zHmana %zHDmana
setvariable zHexpC %zHDexpC
setvariable zHexpM %zHDexpM
setvariable zHget %zHDget
setvariable zHcount %zHDcount
setvariable zHCOUNT %zHDCOUNT
setvariable zHcBrawl %zHDcBrawl
setvariable zHbrawltype %zHDbrawltype
goto DSCOM1_%zHDCOM1

DSCOM1_ON:
setvariable zHCOM1 ON
setvariable zHcom1 %zHDcom1
DSCOM1_OFF:
goto DSCOM2_%zHDCOM2

DSCOM2_ON:
setvariable zHCOM2 ON
setvariable zHcom2 %zHDcom2
DSCOM2_OFF:
goto DSCOM3_%zHDCOM3

DSCOM3_ON:
setvariable zHCOM3 ON
setvariable zHcom3 %zHDcom3
DSCOM3_OFF:
goto DSCOM4_%zHDCOM4

DSCOM4_ON:
setvariable zHCOM4 ON
setvariable zHcom4 %zHDcom4
DSCOM4_OFF:
goto DSCOM5_%zHDCOM5

DSCOM5_ON:
setvariable zHCOM5 ON
setvariable zHcom5 %zHDcom5
DSCOM5_OFF:
goto DEFSET_GET_%zHget

DEFSET_GET_ON:
setvariable zHgetA %zHDgetA
DEFSET_GET_OFF:

counter set %zHDcounter

DEF1_EQUIP:
	echo
	echo DEF1_EQUIP:
	echo
	echo ************
	echo ** .SFhunter %zHDset
	echo ************
goto DEF1_EQUIP2

DEF1_EQUIP2_PAUSE:
pause
DEF1_EQUIP2:
goto DEF1_EQUIP_%zHtype

DEF1_EQUIP_GAUNT:
put slap my gaunt
goto %c

DEF1_EQUIP_OFFHAND_PAUSE:
pause
DEF1_EQUIP_OFFHAND:
	echo
	echo DEF1_EQUIP_OFFHAND:
	echo
	matchre DEF1_OFFHAND_SWAP /you draw|re already holding|free to/i
	matchre DEF1_OFFHAND2 /out of reach|What were you|REMOVE|Wield what|can't seem|You can only wield a weapon or a shield/i
	matchre DEF1_EQUIP_OFFHAND_PAUSE /\.\.\.wait|type ahead/i
	match BEGIN_HANDS free hand
put wield left my %1
	matchwait

DEF1_OFFHAND2_PAUSE:
pause
DEF1_OFFHAND2:
	echo
	echo DEF1_OFFHAND2:
	echo
	match DEF1_OFFHAND3 remove what?
	matchre DEF1_OFFHAND_SWAP /you sling|already|you remove/
	matchre DEF1_OFFHAND3_PAUSE /\.\.\.wait|type ahead/i
put remove my %1
	matchwait

DEF1_OFFHAND3:
	echo
	echo DEF1_OFFHAND3:
	echo
	match DEF1_OFF_BALDRIC baldric
	matchre DEF1_OFFHAND_SWAP /you get|you pick up/i
	match BEGIN_NOWEAP What were you
put get my %1
	matchwait

DEF1_OFF_BALDRIC:
	echo
	echo DEF1_OFF_BALDRIC:
	echo
setvariable zHget ON
setvariable zHgetA in my baldric
goto DEF1_OFFHAND_SWAP

DEF1_OFFHAND_SWAP_PAUSE:
pause
DEF1_OFFHAND_SWAP:
	match DEF2 left hand
	match DEF1_OFFHAND_SWAP_PAUSE right hand
put swap
	matchwait


DEF1_EQUIP_BRAWL:
IF_1 goto DEF1_EQUIP_0
goto %c

DEF1_EQUIP_0_PAUSE:
pause
DEF1_EQUIP_0:
	echo
	echo DEF1_EQUIP_0:
	echo
	matchre DEF2 /you draw|re already holding|free to/i
	matchre DEF1_EQUIP3 /out of reach|What were you|REMOVE|Wield what|can't seem|You can only wield a weapon or a shield/i
	matchre DEF1_EQUIP_0_PAUSE /\.\.\.wait|type ahead/i
	match BEGIN_HANDS free hand
put wield right my %1
	matchwait

DEF1_EQUIP3_PAUSE:
pause
DEF1_EQUIP3:
	echo
	echo DEF1_EQUIP3:
	echo
	match DEF1_EQUIP4 remove what?
	matchre DEF2 /you sling|already|you remove/i
	matchre DEF1_EQUIP3_PAUSE /\.\.\.wait|type ahead/i
put remove my %1
	matchwait

DEF1_EQUIP4:
	echo
	echo DEF1_EQUIP4:
	echo
	match DEF1_BALDRIC baldric
	matchre DEF2 /you get|you pick up/i
	match BEGIN_NOWEAP What were you
put get my %1
	matchwait

DEF1_BALDRIC:
	echo
	echo DEF1_BALDRIC:
	echo
setvariable zHget ON
setvariable zHgetA in my baldric
goto DEF2


DEF2:
	echo
	echo DEF2:
	echo
IF_2 goto DEF2_EQUIP
goto %c

DEF2_EQUIP_PAUSE:
pause
DEF2_EQUIP:
	echo
	echo DEF2_EQUIP:
	echo
	match DEF2_EQUIP_PAUSE ...wait
	match DEF2_EQUIP_PAUSE type ahead
	match BEGIN_NOWEAP What were you
	match %c You aren't
	match %c you pick up
	match %c you get
	match %c you sling
	match %c you remove
	match %c already
put remove my %2
put get my %2
	matchwait



C_COMBO_EXP_ON:
goto C_COMBO_MULTI_%zHmulti

C_COMBO_MULTI_ON:
setvariable zHexpC C_COMBO_CHECK
goto Multi_%zHmulti

C_COMBO_MULTI_OFF:
put skill
wait
MULTI_EXP_C_COMBO_CHECK:
setvariable zHexpC ON

C_COMBO_EXP_OFF:
goto EXP_COUNT_%zHcount

COMBO_EXP_ON:
goto COMBO_MULTI_%zHmulti

COMBO_MULTI_ON:
setvariable zHexpC COMBO_CHECK
goto Multi_%zHmulti

COMBO_MULTI_OFF:
put skill
wait
MULTI_EXP_COMBO_CHECK:
setvariable zHexpC ON
COMBO_EXP_OFF:
goto EXP_%c

EXP_2400:
EXP_2401:
EXP_2402:
EXP_2410:
EXP_2411:
EXP_2412:
EXP_2420:
EXP_2421:
EXP_2422:
EXP_2430:
EXP_2431:
EXP_2432:
EXP_2440:
EXP_2441:
EXP_2442:
EXP_2450:
EXP_2451:
EXP_2452:
EXP_2460:
EXP_2461:
EXP_2462:
EXP_2470:
EXP_2471:
EXP_2472:
EXP_2480:
EXP_2481:
EXP_2482:
EXP_2490:
EXP_2491:
EXP_2492:
EXP_2300:
EXP_2301:
EXP_2302:
EXP_2310:
EXP_2311:
EXP_2312:
EXP_2320:
EXP_2321:
EXP_2322:
EXP_2330:
EXP_2331:
EXP_2332:
EXP_2340:
EXP_2341:
EXP_2342:
EXP_2350:
EXP_2351:
EXP_2352:
EXP_2360:
EXP_2361:
EXP_2362:
EXP_2370:
EXP_2371:
EXP_2372:
EXP_2380:
EXP_2381:
EXP_2282:
EXP_2290:
EXP_2291:
EXP_2292:
EXP_2382:
EXP_2390:
EXP_2391:
EXP_2392:
goto %zHmc


STUN:
pause 2
goto %c

STUN1:
pause 2
counter subtract 10
goto %c

STUN2:
pause 2
counter add 20
goto %c

STUN3:
pause 2
counter add 30
goto %c

STUN4:
pause 2
counter add 40
goto %c

STUN5:
pause 2
counter add 50
goto %c

STUN6:
pause 2
counter add 60
goto %c

STUN7:
pause 2
counter add 70
goto %c


FACE1:
counter subtract 10
goto FACE

FACE2:
counter add 20
goto FACE

FACE3:
counter add 30
goto FACE

FACE4:
counter add 40
goto FACE

FACE5:
counter add 50
goto FACE


FACE6:
counter add 60
goto FACE

FACE7:
counter add 70
goto FACE

FACE_PAUSE:
pause
FACE:
	match FACE_PAUSE type ahead
	match FACE_PAUSE ...wait
	match ASSESS_ADV nothing else to face
	match %zHmonsterapp you turn
put face next
	matchwait

ASSESS_ADV:
	match FACE You stop advancing
	match NOTHING advance towards?
	match %zHmonsterapp begin
	match FACE You have lost sight
	match %zHmonsterapp to melee range
	match %zHmonsterapp [You're
	match %zHmonsterapp already at melee
put ADV
	matchwait

NOTHING:
pause 3
waitforre /\.|\?|!/i
goto FACE

ADV1:
counter subtract 10
goto ADV

ADV2:
counter add 20
goto ADV

ADV3:
counter add 30
goto ADV

ADV4:
counter add 40
goto ADV

ADV5:
counter add 50
goto ADV

ADV6:
counter add 60
goto ADV

ADV7:
counter add 70
goto ADV

ADV_PAUSE:
pause
ADV:
	match FACE You stop advancing
	match FACE You have lost sight
	match NOTHING advance towards?
	match %c to melee range
	match %c [You're
	match %c already at melee
	match ADV_PAUSE ...wait
	match ADV_PAUSE type ahead
put advance
	matchwait



FATIGUE_SIT:
	echo
	echo FATIGUE_SIT:
	echo
put sit
waitfor you
put parry
waitfor you
pause 2
	match FATIGUE_STAND completely rested
	match FATIGUE_SIT_WAIT winded
	match FATIGUE_SIT_WAIT tired
	match FATIGUE_SIT_WAIT fatigued
	match FATIGUE_SIT_WAIT worn-out
	match FATIGUE_SIT_WAIT beat,
	match FATIGUE_SIT_WAIT exhausted
	match FATIGUE_SIT_WAIT bone-tired
	match FATIGUE_SIT_WAIT Encumbrance :
put fat
put encumbrance
	matchwait

FATIGUE_SIT_WAIT:
	echo
	echo FATIGUE_SIT_WAIT:
	echo
	echo ************************
	echo ** Waiting 10 Seconds
	echo ************************
	echo
pause 10
goto FATIGUE

FATIGUE_STAND_PAUSE:
pause
FATIGUE_STAND:
	echo
	echo FATIGUE_STAND:
	echo
	match %c You stand back up.
	match FATIGUE_STAND_PAUSE roundtime
	match FATIGUE_STAND_PAUSE ...wait
	match FATIGUE_STAND_PAUSE type ahead
put stand
	matchwait


FATIGUE_PAUSE:
pause
FATIGUE:
	echo
	echo FATIGUE:
	echo
	match FATIGUE_CHECK You cannot back away from a chance to continue your slaughter!
	match FATIGUE_CHECK You retreat from combat.
	match FATIGUE_CHECK You sneak back
	match FATIGUE_PAUSE [You're
	match FATIGUE_CHECK already as far
	match FATIGUE_CHECK1_PAUSE roundtime
	match FATIGUE_PAUSE ...wait
	match FATIGUE_PAUSE type ahead
	match FATIGUE_PAUSE You stop advancing
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

FATIGUE_CHECK:
	echo
	echo FATIGUE_CHECK:
	echo
	match %c completely rested
	match %c winded
	match FATIGUE_WAIT tired
	match FATIGUE_WAIT fatigued
	match FATIGUE_WAIT worn-out
	match FATIGUE_WAIT beat,
	match FATIGUE_WAIT exhausted
	match FATIGUE_WAIT bone-tired
put fat
	matchwait

FATIGUE_CHECK1_PAUSE:
pause
FATIGUE_CHECK1:
	echo
	echo FATIGUE_CHECK1:
	echo
	match %c completely rested
	match %c winded
	match FATIGUE tired
	match FATIGUE fatigued
	match FATIGUE worn-out
	match FATIGUE beat,
	match FATIGUE exhausted
	match FATIGUE bone-tired
put fat
	matchwait

FATIGUE_WAIT:
	echo
	echo FATIGUE_WAIT:
	echo
	match FATIGUE melee
	match FATIGUE pole
	match FATIGUE [You're
	matchwait

PAUSE:
	echo
	echo PAUSE:
	echo
pause
goto %c

PAUSE1:
	echo
	echo PAUSE1:
	echo
counter subtract 10
pause
goto %c


PAUSE2:
	echo
	echo PAUSE2:
	echo
counter add 20
pause
goto %c

PAUSE3:
	echo
	echo PAUSE3:
	echo
counter add 30
pause
goto %c

PAUSE4:
	echo
	echo PAUSE4:
	echo
counter add 40
pause
goto %c


PAUSE5:
	echo
	echo PAUSE5:
	echo
counter add 50
pause
goto %c

PAUSE6:
	echo
	echo PAUSE6:
	echo
counter add 60
pause
goto %c

PAUSE7:
	echo
	echo PAUSE7:
	echo
counter add 70
pause
goto %c


COUNT_FACE_PAUSE:
pause
COUNT_FACE:
	match COUNT_FACE_PAUSE type ahead
	match COUNT_FACE_PAUSE ...wait
	match COUNT_ASSESS_ADV nothing else to face
	match %zHmonsterapp you turn
put face next
	matchwait

COUNT_ASSESS_ADV:
	match COUNT_FACE You stop advancing
	match COUNT_NOTHING advance towards?
	match %zHmonsterapp begin
	match COUNT_FACE You have lost sight
	match %zHmonsterapp to melee range
	match %zHmonsterapp [You're
	match %zHmonsterapp already at melee
put ADV
	matchwait

COUNT_NOTHING:
setvariable zHcritters 0
pause 3
waitforre /\.|\?|!/i
goto COUNT_FACE

COUNT_ADV_PAUSE:
pause
COUNT_ADV:
	match COUNT_FACE You stop advancing
	match COUNT_FACE You have lost sight
	match COUNT_NOTHING advance towards?
	match %s to melee range
	match %s [You're
	match %s already at melee
	match COUNT_ADV_PAUSE ...wait
	match COUNT_ADV_PAUSE type ahead
put advance
	matchwait



COUNT_FATIGUE_SIT:
	echo
	echo COUNT_FATIGUE_SIT:
	echo
put sit
waitfor you
put parry
waitfor you
pause 2
	match COUNT_FATIGUE_STAND completely rested
	match COUNT_FATIGUE_SIT_WAIT winded
	match COUNT_FATIGUE_SIT_WAIT tired
	match COUNT_FATIGUE_SIT_WAIT fatigued
	match COUNT_FATIGUE_SIT_WAIT worn-out
	match COUNT_FATIGUE_SIT_WAIT beat,
	match COUNT_FATIGUE_SIT_WAIT exhausted
	match COUNT_FATIGUE_SIT_WAIT bone-tired
	match COUNT_FATIGUE_SIT_WAIT Encumbrance :
put fat
put encumbrance
	matchwait

COUNT_FATIGUE_SIT_WAIT:
	echo
	echo COUNT_FATIGUE_SIT_WAIT:
	echo
	echo ************************
	echo ** Waiting 10 Seconds
	echo ************************
	echo
pause 10
goto COUNT_FATIGUE

COUNT_FATIGUE_STAND_PAUSE:
pause
COUNT_FATIGUE_STAND:
	echo
	echo COUNT_FATIGUE_STAND:
	echo
	match COUNT_ON You stand back up.
	match COUNT_FATIGUE_STAND_PAUSE roundtime
	match COUNT_FATIGUE_STAND_PAUSE ...wait
	match COUNT_FATIGUE_STAND_PAUSE type ahead
put stand
	matchwait


COUNT_FATIGUE_PAUSE:
pause
COUNT_FATIGUE:
	echo
	echo COUNT_FATIGUE:
	echo
	match COUNT_FATIGUE_CHECK You cannot back away from a chance to continue your slaughter!
	match COUNT_FATIGUE_CHECK You retreat from combat.
	match COUNT_FATIGUE_CHECK You sneak back
	match COUNT_FATIGUE_PAUSE [You're
	match COUNT_FATIGUE_CHECK already as far
	match COUNT_FATIGUE_CHECK1_PAUSE roundtime
	match COUNT_FATIGUE_PAUSE ...wait
	match COUNT_FATIGUE_PAUSE type ahead
	match COUNT_FATIGUE_PAUSE You stop advancing
	match COUNT_FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

COUNT_FATIGUE_CHECK:
	echo
	echo COUNT_FATIGUE_CHECK:
	echo
	match COUNT_ON completely rested
	match COUNT_ON winded
	match COUNT_FATIGUE_WAIT tired
	match COUNT_FATIGUE_WAIT fatigued
	match COUNT_FATIGUE_WAIT worn-out
	match COUNT_FATIGUE_WAIT beat,
	match COUNT_FATIGUE_WAIT exhausted
	match COUNT_FATIGUE_WAIT bone-tired
put fat
	matchwait

COUNT_FATIGUE_CHECK1_PAUSE:
pause
COUNT_FATIGUE_CHECK1:
	echo
	echo COUNT_FATIGUE_CHECK1:
	echo
	match COUNT_ON completely rested
	match COUNT_ON winded
	match COUNT_FATIGUE tired
	match COUNT_FATIGUE fatigued
	match COUNT_FATIGUE worn-out
	match COUNT_FATIGUE beat,
	match COUNT_FATIGUE exhausted
	match COUNT_FATIGUE bone-tired
put fat
	matchwait

COUNT_FATIGUE_WAIT:
	echo
	echo COUNT_FATIGUE_WAIT:
	echo
	match COUNT_FATIGUE melee
	match COUNT_FATIGUE pole
	match COUNT_FATIGUE [You're
	matchwait

COUNT_PAUSE:
	echo
	echo COUNT_PAUSE:
	echo
pause
goto %s

#COMBAT SYSTEMS

100:
counter add 10
goto %zHrepeat%_%zHmulti

REPEAT_OFF:
REPEAT_ON:
	echo
	echo REPEAT_%zHmulti%:
	echo
	match REP_EXP_L light crossbow
	match REP_EXP_H heavy crossbow
put app %1
	matchwait

REP_EXP_L:
setvariable zHexp light.crossbow
goto RANGE_OFF

REP_EXP_H:
setvariable zHexp heavy.crossbow
goto RANGE_OFF

RANGE_ON:
RANGE_OFF:
110:
counter add 10
RANGE_DODGE:
	echo
	echo RANGE_DODGE:
	echo
put dodge
	waitfor you
pause
GOTO RANGE_LOAD

RANGE_LOAD_PAUSE:
120:
goto RANGE_EXP_%zHexpC

RANGE_EXP_ON:
goto RANGE_MULTI_%zHmulti

RANGE_MULTI_ON:
setvariable zHexpC RANGE_CHECK
goto Multi_%zHmulti

RANGE_MULTI_OFF:
put skill
wait
MULTI_EXP_RANGE_CHECK:
setvariable zHexpC ON

RANGE_EXP_OFF:
pause
goto %zHrepeat%_LOAD


RANGE_2_LOAD_PAUSE:
pause
RANGE_2_LOAD:
	match RANGE_LOAD fail
	matchre RANGE_LOAD /You are too close|notices|discovers/i
	matchre RANGE_LOAD /You melt|You blend|Eh\?/i
	matchre RANGE_2_LOAD_PAUSE /\.\.\.wait|type ahead/i
put hide
	matchwait

RANGE_1_LOAD_PAUSE:
pause
RANGE_1_LOAD:
RANGE_LOAD:
	echo
	echo RANGE_LOAD:
	echo
	matchre RANGE_GET /You must|your hand jams|readily available|You can not load/i
	matchre RANGE_1_LOAD_PAUSE /\.\.\.wait|type ahead/i
	match RANGE_RETREAT3_PAUSE roundtime
	match RANGE_RETREAT3 is already
	match RANGE_SHIELD shield on your arm.
	match RANGE_TARGE targe on your arm.
	match RANGE_BUCKLER buckler on your arm.
	match RANGE_LID lid on your arm.
put load
	matchwait

REPEAT_LOAD_PAUSE:
pause
REPEAT_LOAD:
	echo
	echo REPEAT_LOAD
	echo
	matchre RANGE_GET /You must|your hand jams|readily available|You can not load/i
	matchre REPEAT_LOAD_PAUSE /\.\.\.wait|type ahead/i
	match REPEAT_LOAD_RETREAT_PAUSE roundtime
	match REPEAT_LOOK is already
	match RANGE_SHIELD shield on your arm.
	match RANGE_TARGE targe on your arm.
	match RANGE_BUCKLER buckler on your arm.
	match RANGE_LID lid on your arm.
put load
	matchwait

REPEAT_LOAD_RETREAT_PAUSE:
pause
REPEAT_LOAD_RETREAT:
	echo
	echo REPEAT_LOAD_RETREAT:
	echo
	matchre REPEAT_PUSH /You cannot back away from a chance to continue your slaughter|You retreat |re already|You think|roundtime|You sneak back/i
	matchre RANGE_RETREAT_PAUSE /stop advancing|\.\.\.wait|type ahead|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

REPEAT_LOOK:
	echo
	echo REPEAT_LOOK:
	echo
	match REPEAT_PUSH unarmed
	match RANGE_RETREAT3 ready to fire
put look %1
	matchwait

RANGE_SHIELD:
	echo
	echo RANGE_SHIELD:
	echo
setvariable zHarm shield
goto RANGE_ARM

RANGE_TARGE:
	echo
	echo RANGE_TARGE:
	echo
setvariable zHarm targe
goto RANGE_ARM

RANGE_BUCKLER:
	echo
	echo RANGE_BUCKLER:
	echo
setvariable zHarm buckler
goto RANGE_ARM

RANGE_LID:
	echo
	echo RANGE_LID:
	echo
setvariable zHarm lid
goto RANGE_ARM

RANGE_ARM_PAUSE:
pause
RANGE_ARM:
	echo
	echo RANGE_ARM:
	echo
	matchre RANGE_ARM_STOW /You loosen the straps securing|You aren't wearing that\./i
	match RANGE_ARM_ERROR Remove what?
	matchre RANGE_ARM_PAUSE /\.\.\.wait|type ahead/i
put remove my %zHarm
	matchwait

RANGE_ARM_STOW:
	echo
	echo RANGE_ARM_STOW:
	echo
	match RANGE_ARM_ERROR Stow What?
	match RANGE_ARM_ADJUST too 
	match RANGE_ARM_STOWED you put
put stow %zHarm
	matchwait

RANGE_ARM_ADJUST_PAUSE:
pause
RANGE_ARM_ADJUST:
	echo
	echo RANGE_ARM_ADJUST:
	echo
	match RANGE_ARM_WORN you sling
	match RANGE_ARM_ERROR through the straps
	match RANGE_ARM_ADJUST_PAUSE You can't wear any more items like that.
put adj my %zHarm
put wear my %zHarm
	matchwait

RANGE_ARM_STOWED:
	echo
	echo RANGE_ARM_STOWED:
	echo
	echo ***********************************
	echo **      ARM SHIELD ALERT!!!
	echo **
	echo ** You were wearing an arm shield!
	echo ** The shield has been stowed!
	echo **
	echo ** DO NOT FORGET TO GET IT OUT BEFORE YOU MELEE HUNT!
	echo ***********************************
goto RANGE_LOAD_PAUSE

RANGE_ARM_WORN:
	echo
	echo RANGE_ARM_WORN:
	echo
	echo ***********************************
	echo **      ARM SHIELD ALERT!!!
	echo **
	echo ** You were wearing an arm shield!
	echo ** The shield has been adjusted and placed over your shoulder!
	echo **
	echo ** DO NOT FORGET TO PUT IT BACK BEFORE YOU MELEE HUNT!
	echo ***********************************
goto RANGE_LOAD_PAUSE

RANGE_ARM_ERROR_PAUSE:
pause
RANGE_ARM_ERROR:
	echo
	echo RANGE_ARM_ERROR:
	echo
	echo ***********************************
	echo **      ARM SHIELD ALERT!!!
	echo **
	echo ** You are wearing an Arm shield!
	echo ** I Can't figure out what kind!
	echo ** Please remove/stow/wear the shield and type GO to continue.
	echo ** Email me your shield name so I can put it into the script!
	echo **    drockmali@hotmail.com
	echo ***********************************
	echo
	matchre RANGE_ARM_ERROR /melee|balance\]|balanced\]|\[You're/i
	matchre RANGE_ARM_ERROR_PAUSE /\.\.\.wait|type ahead/i
	match RANGE_LOAD_PAUSE Go what?
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

AMMO_UNEQUIP_PAUSE:
pause
AMMO_UNEQUIP:
    echo
    echo AMMO_UNEQUIP:
    echo
    matchre RANGE_GET /you (sling|attach)|re already|wear what|what were you/i
    match AMMO_UNEQUIPA can't wear
    match AMMO_UNEQUIP_PAUSE ...wait
    match AMMO_UNEQUIP_PAUSE type ahead
put wear %2
    matchwait

AMMO_UNEQUIPA:
    echo
    echo MULTI_AMMO_UNEQUIPA:
    echo
put stow %2
wait
goto RANGE_GET

AMMO_REEQUIP:
    echo
    echo AMMO_REEQUIP:
    echo
put get %2
put remove %2
goto %zHrepeat%_LOAD


RANGE_GET_PAUSE:
pause
RANGE_GET:
	echo
	echo RANGE_GET:
	echo
	match NO_AMMO what are you
	match RANGE_DEAD_MONSTER you pull
	matchre RANGE_GET_PAUSE /you pick up|you put/i
	match AMMO_UNEQUIP You need a free hand
	match AMMO_REEQUIP stow what
	match RANGE_PAUSE You must unload
put stow %zHammo
put stow %zHammo
	matchwait

RANGE_PAUSE:
	echo
	echo RANGE_PAUSE:
	echo
pause 3
	match RANGE_LOAD loaded
	match RANGE_%zHrange%_FIRE You think
	match %zHrepeat%_PAUSE_GET there is nothing
	matchre RANGE_RETREAT3 /you begin to target|already targetting/i
put aim
	matchwait

RANGE_PAUSE_GET:
	echo
	echo RANGE_PAUSE_GET:
	echo
	match AMMO_UNEQUIP You need a free hand
	match RANGE_DEAD_MONSTER you pull
	matchre RANGE_PAUSE /you pick up|you put/i
	matchre RANGE_PAUSE1 /stow what|You must unload/i
put stow %zHammo
put stow %zHammo
	matchwait

REPEAT_PAUSE_GET:
	echo
	echo REPEAT_PAUSE_GET:
	echo
	match AMMO_UNEQUIP You need a free hand
	match RANGE_DEAD_MONSTER you pull
	matchre RANGE_PAUSE /you pick up|you put/i
	matchre RANGE_PAUSE2 /stow what|You must unload/i
put stow %zHammo
put stow %zHammo
	matchwait

RANGE_PAUSE1:
	echo
	echo RANGE_PAUSE1:
	echo
pause 3
wait
	match %zHrepeat%_LOAD loaded
	match RANGE_FIRE You think
	match RANGE_PAUSE1 there is nothing
	matchre RANGE_RETREAT3 /you begin to target|already targetting/i
put aim
	matchwait

RANGE_PAUSE2:
	echo
	echo RANGE_PAUSE:
	echo
	match %zHrepeat%_LOAD loaded
	match RANGE_%zHrange%_FIRE You think
	match REPEAT_LOAD there is nothing
	matchre RANGE_RETREAT3 /you begin to target|already targetting/i
put aim
	matchwait


REPEAT_PUSH1_PAUSE:
pause
REPEAT_PUSH1:
	echo
	echo REPEAT_PUSH1:
	echo
	match RANGE_PAUSE2 into firing position
	match RANGE_PAUSE1 could damage
 	match RANGE_LOAD ammunition store
 	matchre REPEAT_PUSH1_PAUSE /stop advancing|\.\.\.wait|type ahead/i
put push my %1
	matchwait

RANGE_DEAD_MONSTER:
	echo
	echo RANGE_DEAD_MONSTER:
	echo
put stow %zHammo
put stow %zHammo
	waitfor you
goto RANGE_UNLOAD

RANGE_UNLOAD_PAUSE:
pause
RANGE_UNLOAD:
	match RANGE_UNLOAD_STOW roundtime
	match RANGE_UNLOAD_PAUSE ...wait
	match RANGE_UNLOAD_PAUSE type ahead
	match DEAD_MONSTER isn't loaded
put unload
	matchwait

RANGE_UNLOAD_STOW_PAUSE:
pause
RANGE_UNLOAD_STOW:
	match RANGE_UNLOAD_STOW_PAUSE ...wait
	match RANGE_UNLOAD_STOW_PAUSE type ahead
	matchre DEAD_MONSTER /you put|stow what/i
put stow right
	matchwait

RANGE_RETREAT3_PAUSE:
pause
RANGE_RETREAT3:
	echo
	echo RANGE_RETREAT3:
	echo
goto %zHrepeat%_RETREAT

RANGE_RETREAT_PAUSE:
pause
RANGE_RETREAT:
	echo
	echo RANGE_RETREAT:
	echo
	matchre RANGE_%zHrange%_AIM /You cannot back away from a chance to continue your slaughter|You retreat |re already|You think|roundtime|You sneak back/i
	matchre RANGE_RETREAT_PAUSE /stop advancing|\.\.\.wait|type ahead|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

REPEAT_RETREAT_PAUSE:
pause
REPEAT_RETREAT:
	echo
	echo RANGE_RETREAT:
	echo
	matchre REPEAT_PUSH /You cannot back away from a chance to continue your slaughter|You retreat |re already|You think|roundtime|You sneak back/i
	matchre REPEAT_RETREAT_PAUSE /stop advancing|\.\.\.wait|type ahead|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

REPEAT_PUSH_PAUSE:
pause
REPEAT_PUSH:
	echo
	echo REPEAT_PUSH:
	echo
	matchre RANGE_%zHrange%_AIM /into firing position|could damage/i
 	matchre REPEAT_PUSH_PAUSE /stop advancing|\.\.\.wait|type ahead/i
 	match REPEAT_LOAD ammunition store
put push my %1
	matchwait

RANGE_AIM_PAUSE:
pause
RANGE_1_AIM:
	echo
	echo RANGE_1_AIM:
	echo
	match RANGE_LOAD loaded
	match RANGE_FIRE You think
	match RANGE_PAUSE there is nothing
	matchre RANGE_AIM_FIRE /already targetting|begin to target/i
	matchre RANGE_AIM_PAUSE /\.\.\.wait|type ahead/i
put aim
	matchwait

RANGE_AIM_FIRE:
	echo
	echo RANGE_AIM_FIRE:
	echo
	match RANGE_RETREAT melee range on you
	match RANGE_FIRE You think
	match RANGE_1_AIM stop concentrating on aiming
	matchwait

RANGE_FIRE_PAUSE:
pause
RANGE_FIRE:
	echo
	echo RANGE_FIRE:
	echo
	matchre DEAD_MONSTER /balance\]|balanced\]|isn't what you|referring/i
	match RANGE_PAUSE what are you trying
	match RANGE_RETREAT2 isn't loaded
	match RANGE_RETREAT2_PAUSE roundtime
	match RANGE_FIRE_PAUSE ...wait
	match RANGE_FIRE_PAUSE type ahead
put fire
	matchwait

RANGE_RETREAT2_PAUSE:
pause
RANGE_RETREAT2:
	echo
	echo RANGE_RETREAT2:
	echo
	matchre RANGE_DEATH /You cannot back away from a chance to continue your slaughter|You retreat from combat\.|already as far|You sneak back/i
	match %c roundtime
	matchre RANGE_RETREAT2_PAUSE /stop advancing|\.\.\.wait|type ahead|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

RANGE_DEATH_PAUSE:
pause
RANGE_DEATH:
	echo
	echo RANGE_DEATH:
	echo
	matchre DEAD_MONSTER /which appears dead|\(dead\)/i
	matchre %zHrepeat%_DEAD_LOAD /paths:|exits:|and you can't see a thing|Your world is a crimson haze/i
	match RANGE_DEATH_PAUSE ...wait
	match RANGE_DEATH_PAUSE type ahead
put look other
	matchwait

REPEAT_DEAD_LOAD:
goto REPEAT_PUSH

RANGE_DEAD_LOAD:
goto RANGE_%zHrange%_LOAD

RANGE_2_AIM_PAUSE:
pause
RANGE_2_AIM:
	echo
	echo RANGE_2_AIM:
	echo
	matchre RANGE_2_HIDE /discovers|fail|begin to target|already targetting/i
	match RANGE_LOAD loaded
	match RANGE_2_FIRE You think
	match RANGE_PAUSE there is nothing
	matchre RANGE_2_AIM_PAUSE /\.\.\.wait|type ahead/i
put aim
	matchwait

RANGE_2_HIDE_PAUSE:
pause
RANGE_2_HIDE:
	echo
	echo RANGE_2_HIDE:
	echo
	match RANGE_2_HIDE fail
	matchre RANGE_2_RETREAT1 /You are too close|notices|discovers/i
	matchre RANGE_2_STALK /You melt|You blend|Eh\?/i
	matchre RANGE_2_HIDE_PAUSE /\.\.\.wait|type ahead/i
put hide
	matchwait

RANGE_2_RETREAT1_PAUSE:
pause
RANGE_2_RETREAT1:
	echo
	echo RANGE_2_RETREAT1:
	echo
	matchre RANGE_2_AIM /You sneak|continue your slaughter/i
	match RANGE_2_RETREAT11_PAUSE roundtime
	matchre RANGE_2_HIDE_FAIL /already|You retreat/i
	matchre RANGE_2_RETREAT1_PAUSE /\.\.\.wait|type ahead|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

RANGE_2_RETREAT11_PAUSE:
pause
RANGE_2_RETREAT11:
	echo
	echo RANGE_2_RETREAT11:
	echo
	matchre RANGE_FIRE /roundtime|You sneak back|continue your slaughter/i
	matchre RANGE_2_HIDE_FAIL /already|You retreat/i
	matchre RANGE_2_RETREAT11_PAUSE /\.\.\.wait|type ahead|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

RANGE_2_HIDE_FAIL_PAUSE:
pause
RANGE_2_HIDE_FAIL:
	echo
	echo RANGE_2_HIDE_FAIL:
	echo
	match RANGE_2_HIDE_FAIL fail
	matchre RANGE_2_RETREAT1 /You are too close|notices|discovers/i
	matchre RANGE_2_STALK /You melt|You blend|Eh\?/i
	matchre RANGE_2_HIDE_PAUSE /\.\.\.wait|type ahead/i
put hide
	matchwait

RANGE_2_STALK_FAIL_PAUSE:
pause
RANGE_2_STALK_FAIL:
	echo
	echo RANGE_2_STALK_FAIL:
	echo
	match RANGE_FIRE discovers
	matchre RANGE_2_FIRE /You move into position|already stalking/i
	match RANGE_2_RETREAT1 trying to stalk
	match RANGE_FIRE try being out of sight
	match RANGE_2_STALK2 You think
	match RANGE_DEATH nothing else
	match RANGE_2_AIM stop concentrating on aiming
	match RANGE_2_STALK2_PAUSE You fail
	matchre RANGE_2_STALK_FAIL_PAUSE /\.\.\.wait|type ahead/i
	match %zHrange1%_SWIM_FIRE Don't be silly
put stalk
	matchwait

RANGE_2_STALK_PAUSE:
pause
RANGE_2_STALK:
	echo
	echo RANGE_2_STALK:
	echo
	match RANGE_FIRE discovers
	matchre RANGE_2_AIM_FIRE_1 /You move into position|already stalking/i
	match RANGE_2_RETREAT1 trying to stalk
	match RANGE_FIRE try being out of sight
	match RANGE_2_STALK2 You think
	match RANGE_DEATH nothing else
	match RANGE_2_AIM stop concentrating on aiming
	match RANGE_2_STALK2_PAUSE You fail
	matchre RANGE_2_STALK_PAUSE /\.\.\.wait|type ahead/i
	match %zHrange1%_SWIM_FIRE Don't be silly
put stalk
	matchwait

RANGE_2_STALK2_PAUSE:
pause
RANGE_2_STALK2:
	echo
	echo RANGE_2_STALK2:
	echo
	match RANGE_FIRE discovers
	matchre RANGE_2_FIRE /You move into position|already stalking|You fail/i
	match RANGE_2_AIM stop concentrating on aiming
	match RANGE_2_RETREAT1 trying to stalk
	match RANGE_FIRE try being out of sight
	match RANGE_DEATH nothing else
	matchre RANGE_2_STALK2_PAUSE /\.\.\.wait|type ahead/i
	match %zHrange1%_SWIM Don't be silly
put stalk
	matchwait


SNIPE_SWIM_FIRE:
RANGE_2_AIM_FIRE:
	echo
	echo RANGE_2_AIM_FIRE:
	echo
	matchre RANGE_FIRE /discovers|fail/i
	match RANGE_RETREAT melee range on you
	match RANGE_2_FIRE You think
	match RANGE_2_AIM stop concentrating on aiming
	matchwait


RANGE_2_AIM_FIRE_1:
pause 3
goto RANGE_2_FIRE

RANGE_2_FIRE_PAUSE:
pause
SNIPE_SWIM:
RANGE_2_FIRE:
	echo
	echo RANGE_2_FIRE:
	echo
	match RANGE_PAUSE what are you trying
	match RANGE_RETREAT2 isn't loaded
	match RANGE_RETREAT2_PAUSE roundtime
	matchre DEAD_MONSTER /balance\]|balanced\]|isn't what you|referring/i
	matchre RANGE_2_FIRE_PAUSE /\.\.\.wait|type ahead/i
	matchre RANGE_FIRE /must be hidden|not trained|stalking|You can not poach|you are not hidden/i
put %zHrange1
	matchwait

POACH_SWIM:
	echo
	echo POACH_SWIM:
	echo
	echo
	echo *********************************
	echo **   YOU CANNOT POACH HERE!
	echo ** Switching to normal combat.
	echo *********************************
	echo
setvariable zHrange 1
goto RANGE_FIRE

200:
setvariable zHsnap AIM_FIRE
counter add 10
SNAP_DODGE:
	echo
	echo SNAP_DODGE:
	echo
put dodge
	waitfor you
pause
goto SNAP_%zHrepeat%_LOAD


SNAP_SHIELD_REM:
	echo
	echo SNAP_SHIELD_REM:
	echo
	matchre SNAP_REM_DONE /you (sling|attach)|re already|wear what|what were you/i
	match SNAP_REM2A can't wear
put wear %2
	matchwait

SNAP_REM2A:
	echo
	echo SNAP_REM2A:
	echo
	match SNAP_REM_DROP2 too
	match SNAP_REM_DONE you put
put stow %2
	matchwait

SNAP_REM_DROP2:
	echo
	echo SNAP_REM_DROP2:
	echo
put drop my %2
	waitfor you drop
goto SNAP_REM_DONE



SNAP_REPEAT_LOAD_PAUSE:
goto SNAP_REPEAT_EXP_%zHexpC

SNAP_REPEAT_EXP_ON:
goto SNAP_REPEAT_MULTI_%zHmulti

SNAP_REPEAT_MULTI_ON:
setvariable zHexpC SNAP_REPEAT_CHECK
goto Multi_%zHmulti

SNAP_REPEAT_MULTI_OFF:
put skill
wait
MULTI_EXP_SNAP_REPEAT_CHECK:
setvariable zHexpC ON

SNAP_REPEAT_EXP_OFF:
pause
goto SNAP_REPEAT_PUSH


SNAP_RANGE_LOAD_PAUSE:
goto SNAP_EXP_%zHexpC

SNAP_EXP_ON:
goto SNAP_MULTI_%zHmulti

SNAP_MULTI_ON:
setvariable zHexpC SNAP_CHECK
goto Multi_%zHmulti

SNAP_MULTI_OFF:
put skill
wait
MULTI_EXP_SNAP_CHECK:
setvariable zHexpC ON

SNAP_EXP_OFF:
pause
goto SNAP_%zHrepeat%_LOAD

210:
setvariable zHsnap AIM_FIRE
SNAP_RANGE_LOAD:
	echo
	echo SNAP_RANGE_LOAD:
	echo
	matchre SNAP_%zHrepeat%_LOAD_PAUSE /\.\.\.wait|type ahead/i
	match SNAP_RETREAT3_PAUSE roundtime
	match SNAP_RETREAT3 is already
	match SNAP_SHIELD shield on your arm.
	match SNAP_TARGE targe on your arm.
	match SNAP_BUCKLER buckler on your arm.
	match SNAP_LID lid on your arm.
	matchre SNAP_GET /You must|your hand jams|ammunition|You can not load/i
put load
	matchwait

SNAP_REPEAT_LOAD:
	echo
	echo SNAP_REPEAT_LOAD:
	echo
	matchre SNAP_%zHrepeat%_LOAD_PAUSE /\.\.\.wait|type ahead/i
	match SNAP_REPEAT_LOAD_RETREAT_PAUSE roundtime
	match SNAP_REPEAT_LOOK is already
	match SNAP_SHIELD shield on your arm.
	match SNAP_TARGE targe on your arm.
	match SNAP_BUCKLER buckler on your arm.
	match SNAP_LID lid on your arm.
	matchre SNAP_GET /You must|your hand jams|ammunition|You can not load/i
put load
	matchwait

SNAP_REPEAT_LOAD_RETREAT_PAUSE:
pause
SNAP_REPEAT_LOAD_RETREAT:
	echo
	echo SNAP_REPEAT_LOAD_RETREAT:
	echo
	matchre SNAP_REPEAT_PUSH /You cannot back away from a chance to continue your slaughter|You retreat |re already|You think|roundtime|You sneak back/i
	matchre SNAP_RANGE_LOAD_RETREAT_PAUSE /stop advancing|\.\.\.wait|type ahead|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

SNAP_REPEAT_LOOK:
	echo
	echo SNAP_REPEAT_LOOK:
	echo
	match SNAP_REPEAT_PUSH unarmed
	match SNAP_%zHrange%_AIM ready to fire
put look %1
	matchwait

SNAP_REPEAT_PUSH_PAUSE:
pause
SNAP_REPEAT_PUSH:
	echo
	echo SNAP_REPEAT_PUSH:
	echo
	matchre SNAP_%zHrange%_AIM /into firing position|could damage/i
 	matchre SNAP_REPEAT_PUSH_PAUSE /stop advancing|\.\.\.wait|type ahead/i
 	match SNAP_REPEAT_LOAD ammunition store
put push my %1
	matchwait

SNAP_SHIELD:
	echo
	echo SNAP_SHIELD:
	echo
setvariable zHarm shield
goto SNAP_ARM

SNAP_TARGE:
	echo
	echo SNAP_TARGE:
	echo
setvariable zHarm targe
goto SNAP_ARM

SNAP_BUCKLER:
	echo
	echo SNAP_BUCKLER:
	echo
setvariable zHarm buckler
goto SNAP_ARM

SNAP_LID:
	echo
	echo SNAP_LID:
	echo
setvariable zHarm lid
goto SNAP_ARM

SNAP_ARM_PAUSE:
pause
SNAP_ARM:
	echo
	echo SNAP_ARM:
	echo
	matchre SNAP_ARM_STOW /You loosen the straps securing|You aren't wearing that\./i
	match SNAP_ARM_ERROR Remove what?
	matchre SNAP_ARM_PAUSE /\.\.\.wait|type ahead/i
put remove my %zHarm
	matchwait

SNAP_ARM_STOW:
	echo
	echo SNAP_ARM_STOW:
	echo
	match SNAP_ARM_ERROR Stow What?
	match SNAP_ARM_ADJUST too 
	match SNAP_ARM_STOWED you put
put stow %zHarm
	matchwait

SNAP_ARM_ADJUST_PAUSE:
pause
SNAP_ARM_ADJUST:
	echo
	echo SNAP_ARM_ADJUST:
	echo
	match SNAP_ARM_WORN you sling
	match SNAP_ARM_ERROR through the straps
	match SNAP_ARM_ADJUST_PAUSE You can't wear any more items like that.
put adj my %zHarm
put wear my %zHarm
	matchwait

SNAP_ARM_STOWED:
	echo
	echo SNAP_ARM_STOWED:
	echo
	echo ***********************************
	echo **      ARM SHIELD ALERT!!!
	echo **
	echo ** You were wearing an arm shield!
	echo ** The shield has been stowed!
	echo **
	echo ** DO NOT FORGET TO GET IT OUT BEFORE YOU MELEE HUNT!
	echo ***********************************
goto SNAP_%zHrepeat%_LOAD

SNAP_ARM_WORN:
	echo
	echo SNAP_ARM_WORN:
	echo
	echo ***********************************
	echo **      ARM SHIELD ALERT!!!
	echo **
	echo ** You were wearing an arm shield!
	echo ** The shield has been adjusted and placed over your shoulder!
	echo **
	echo ** DO NOT FORGET TO PUT IT BACK BEFORE YOU MELEE HUNT!
	echo ***********************************
goto SNAP_%zHrepeat%_LOAD

SNAP_ARM_ERROR_PAUSE:
pause
SNAP_ARM_ERROR:
	echo
	echo SNAP_ARM_ERROR:
	echo
	echo ***********************************
	echo **      ARM SHIELD ALERT!!!
	echo **
	echo ** You are wearing an Arm shield!
	echo ** I Can't figure out what kind!
	echo ** Please remove/stow/wear the shield and type GO to continue.
	echo ** Email me your shield name so I can put it into the script!
	echo **    drockmali@hotmail.com
	echo ***********************************
	echo
	 
	matchre SNAP_ARM_ERROR_PAUSE /\.\.\.wait|type ahead|melee|balance\]|balanced\]|\[You're/i
	match SNAP_%zHrepeat%_LOAD Go what?
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

SNAP_GET:
IF_2 goto SNAP_SHIELD_REM
goto SNAP_REM_DONE

SNAP_REM_DONE_PAUSE:
pause
SNAP_REM_DONE:
	echo
	echo SNAP_REM_DONE:
	echo
	matchre SNAP_GET3 /You cannot back away from a chance to continue your slaughter|You retreat from combat\.|re already as far away|You sneak back/i
	match SNAP_%zHrepeat%_LOAD_PAUSE roundtime
	matchre SNAP_REM_DONE_PAUSE /stop advancing|\.\.\.wait|type ahead|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait
	
SNAP_GET3_PAUSE:
pause
SNAP_GET3:
	echo
	echo SNAP_GET3:
	echo
	match NO_AMMO what are you
	match SNAP_DEAD_MONSTER you pull
	matchre SNAP_GET3_PAUSE /you pick up|you put/i
	match SNAP_%zHrepeat%_LOAD stow what
	match SNAP_PAUSE You must unload
put stow %zHammo
put stow %zHammo
	matchwait

SNAP_PAUSE:
	echo
	echo SNAP_PAUSE:
	echo
pause 3
	match SNAP_%zHrepeat%_LOAD_PAUSE loaded
	match SNAP_%zHrange%_FIRE You think
	match SNAP_PAUSE_GET there is nothing
	matchre SNAP_RETREAT3 /you begin to target|already targetting/i
put aim
	matchwait

SNAP_PAUSE_GET:
	echo
	echo SNAP_PAUSE_GET:
	echo
IF_2 goto SNAP_PAUSE_SHIELD_REM
	match SNAP_DEAD_MONSTER you pull
	matchre SNAP_PAUSE /you pick up|you put/i
	matchre SNAP_PAUSE1 /stow what|You must unload/i
put stow %zHammo
put stow %zHammo
	matchwait

SNAP_PAUSE1:
	echo
	echo SNAP_PAUSE1:
	echo
pause 3
wait
	match SNAP_%zHrepeat%_LOAD_PAUSE loaded
	match SNAP_FIRE You think
	match SNAP_PAUSE1 there is nothing
	matchre SNAP_RETREAT3 /you begin to target|already targetting/i
put aim
	matchwait

SNAP_PAUSE_SHIELD_REM:
	echo
	echo SNAP_PAUSE_SHIELD_REM:
	echo
	matchre SNAP_PAUSE_REM_DONE /you (sling|attach)|re already|wear what|what were you/i
	match SNAP_PAUSE_REM2A can't wear
put wear %2
	matchwait

SNAP_PAUSE_REM2A:
	echo
	echo SNAP_PAUSE_REM2A:
	echo
	match SNAP_PAUSE_REM_DROP2 too
	match SNAP_PAUSE_REM_DONE you put
put stow %2
	matchwait

SNAP_PAUSE_REM_DROP2:
	echo
	echo SNAP_PAUSE_REM_DROP2:
	echo
put drop my %2
	waitfor you drop

SNAP_PAUSE_REM_DONE:
	echo
	echo SNAP_PAUSE_REM_DONE:
	echo
	match SNAP_DEAD_MONSTER you pull
	matchre SNAP_SHIELD_WEAR1 /you pick up|you put/i
	matchre SNAP_SHIELD_WEAR2 /stow what|You must unload/i
put stow %zHammo
put stow %zHammo
	matchwait


SNAP_SHIELD_WEAR1_PAUSE:
pause
SNAP_SHIELD_WEAR1:
	echo
	echo SNAP_SHIELD_WEAR1:
	echo
	matchre SNAP_PAUSE /already|what are you|you pick up|you get|you sling/i
	matchre SNAP_SHIELD_WEAR1_PAUSE /\.\.\.wait|type ahead/i
put remove my %2
put get %2
	matchwait

SNAP_SHIELD_WEAR2_PAUSE:
pause
SNAP_SHIELD_WEAR2:
	echo
	echo SNAP_SHIELD_WEAR2:
	echo
	matchre SNAP_PAUSE1 /already|what are you|you pick up|you get|you sling/i
	matchre SNAP_SHIELD_WEAR2_PAUSE /\.\.\.wait|type ahead/i
put remove my %2
put get %2
	matchwait

SNAP_DEAD_MONSTER:
	echo
	echo SNAP_DEAD_MONSTER:
	echo
put stow %zHammo
put stow %zHammo
	waitfor you
goto DEAD_MONSTER

SNAP_SHIELD_WEAR_PAUSE:
pause
SNAP_SHIELD_WEAR:
	echo
	echo SNAP_SHIELD_WEAR:
	echo
	matchre SNAP_RETREAT /already|what are you|you pick up|you get|you sling/i
	match SNAP_FIRE You think
	matchre SNAP_SHIELD_WEAR_PAUSE /\.\.\.wait|type ahead/i
put remove my %2
put get %2
	matchwait


SNAP_RETREAT3_PAUSE:
pause
SNAP_RETREAT3:
	echo
	echo SNAP_RETREAT3:
	echo
IF_2 goto SNAP_SHIELD_WEAR
goto SNAP_RETREAT

SNAP_RETREAT_PAUSE:
pause
SNAP_RETREAT:
	echo
	echo SNAP_RETREAT:
	echo
	matchre SNAP_%zHrange%_AIM /You cannot back away from a chance to continue your slaughter|You retreat |re already|You think|roundtime|You sneak back/i
	matchre SNAP_RETREAT_PAUSE /stop advancing|\.\.\.wait|type ahead|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait


SNAP_AIM_PAUSE:
pause
SNAP_1_AIM:
	echo
	echo SNAP_1_AIM:
	echo
	match SNAP_%zHrepeat%_LOAD_PAUSE loaded
	match SNAP_FIRE You think
	match SNAP_PAUSE there is nothing
	matchre SNAP_%zHsnap /already targetting|begin to target/i
	matchre SNAP_AIM_PAUSE /\.\.\.wait|type ahead/i
put aim
	matchwait

SNAP_AIM_FIRE:
	echo
	echo SNAP_AIM_FIRE:
	echo
	match SNAP_RETREAT melee range on you
	match SNAP_FIRE You think
	match SNAP_1_AIM stop concentrating on aiming
	matchwait

SNAP_FIRE_PAUSE:
pause
SNAP_FIRE:
	echo
	echo SNAP_FIRE:
	echo
setvariable zHsnap FIRE
	match SNAP_PAUSE what are you trying
	match SNAP_RETREAT2 isn't loaded
	match SNAP_RETREAT2_PAUSE roundtime
	matchre DEAD_MONSTER /balance\]|balanced\]|isn't what you|referring/i
	match SNAP_FIRE_PAUSE ...wait
	match SNAP_FIRE_PAUSE type ahead
put fire
	matchwait

SNAP_RETREAT2_PAUSE:
pause
SNAP_RETREAT2:
	echo
	echo SNAP_RETREAT2:
	echo
	matchre SNAP_DEATH /You cannot back away from a chance to continue your slaughter|You retreat from combat\.|already as far|You sneak back/i
	match SNAP_%zHrepeat%_LOAD_PAUSE roundtime
	matchre SNAP_RETREAT2_PAUSE /stop advancing|\.\.\.wait|type ahead|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

SNAP_DEATH_PAUSE:
pause
SNAP_DEATH:
	echo
	echo SNAP_DEATH:
	echo
	matchre DEAD_MONSTER /which appears dead|\(dead\)/i
	matchre SNAP_%zHrepeat%_LOAD_PAUSE /paths:|exits:|and you can't see a thing|Your world is a crimson haze/i
	match SNAP_DEATH_PAUSE ...wait
	match SNAP_DEATH_PAUSE type ahead
put look other
	matchwait

SNAP_2_AIM_PAUSE:
pause
SNAP_2_AIM:
	echo
	echo SNAP_2_AIM:
	echo
	matchre SNAP_STALK_HIDE /discovers|fail|begin to target|already targetting/i
	match SNAP_%zHrepeat%_LOAD_PAUSE loaded
	match SNAP_2_FIRE You think
	match SNAP_PAUSE there is nothing
	matchre SNAP_2_AIM_PAUSE /\.\.\.wait|type ahead/i
put aim
	matchwait

SNAP_STALK_HIDE_PAUSE:
pause
SNAP_STALK_HIDE:
	echo
	echo SNAP_STALK_HIDE:
	echo
	match SNAP_STALK_HIDE fail
	matchre SNAP_STALK_RETREAT1 /You are too close|notices|discovers/i
	matchre SNAP_STALK_STALK /You melt|You blend|Eh\?/i
	matchre SNAP_STALK_HIDE_PAUSE /\.\.\.wait|type ahead/i
put hide
	matchwait

SNAP_STALK_RETREAT1_PAUSE:
pause
SNAP_STALK_RETREAT1:
	echo
	echo SNAP_STALK_RETREAT1:
	echo
	matchre SNAP_2_AIM /You sneak|continue your slaughter/i
	match SNAP_STALK_RETREAT11_PAUSE roundtime
	matchre SNAP_STALK_HIDE /already|You retreat|You sneak back/i
	matchre SNAP_STALK_RETREAT1_PAUSE /\.\.\.wait|type ahead|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

SNAP_STALK_RETREAT11_PAUSE:
pause
SNAP_STALK_RETREAT11:
	echo
	echo SNAP_STALK_RETREAT11:
	echo
	match SNAP_FIRE roundtime
	matchre SNAP_STALK_HIDE /already|You retreat|You sneak back|continue your slaughter/i
	matchre SNAP_STALK_RETREAT11_PAUSE /\.\.\.wait|type ahead|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

SNAP_STALK_STALK_PAUSE:
pause
SNAP_STALK_STALK:
	echo
	echo SNAP_STALK_STALK:
	echo
	match SNAP_FIRE discovers
	matchre SNAP_2_%zHsnap /You move into position|already stalking/i
	match SNAP_STALK_RETREAT1 trying to stalk
	match SNAP_FIRE try being out of sight
	match SNAP_STALK_STALK2 You think
	match SNAP_DEATH nothing else
	match SNAP_2_AIM stop concentrating on aiming
	match SNAP_STALK_STALK2_PAUSE You fail
	matchre SNAP_STALK_STALK_PAUSE /\.\.\.wait|type ahead/i
	match SNAP_%zHrange1%_SWIM_FIRE Don't be silly
put stalk
	matchwait

SNAP_STALK_STALK2_PAUSE:
pause
SNAP_STALK_STALK2:
	echo
	echo SNAP_STALK_STALK2:
	echo
	match SNAP_FIRE discovers
	matchre SNAP_2_FIRE /You move into position|already stalking|You fail/i
	match SNAP_2_AIM stop concentrating on aiming
	match SNAP_STALK_RETREAT1 trying to stalk
	match SNAP_FIRE try being out of sight
	match SNAP_DEATH nothing else
	matchre SNAP_STALK_STALK2_PAUSE /\.\.\.wait|type ahead/i
	match SNAP_%zHrange1%_SWIM Don't be silly
put stalk
	matchwait

SNAP_STALK_RETREAT_PAUSE:
pause
SNAP_STALK_RETREAT:
	echo
	echo SNAP_STALK_RETREAT:
	echo
	match SNAP_FIRE roundtime
	matchre SNAP_2_AIM_FIRE /already|You retreat|You sneak back|continue your slaughter/i
	matchre SNAP_STALK_RETREAT_PAUSE /\.\.\.wait|type ahead|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

SNAP_SNIPE_SWIM_FIRE:
SNAP_2_AIM_FIRE:
	echo
	echo SNAP_2_AIM_FIRE:
	echo
	matchre SNAP_FIRE /discovers|fail/i
	match SNAP_STALK_RETREAT melee range on you
	match SNAP_2_FIRE You think
	match SNAP_2_AIM stop concentrating on aiming
	matchwait

SNAP_2_FIRE_PAUSE:
pause
SNIPE_SWIM:
SNAP_2_FIRE:
	echo
	echo SNAP_2_FIRE:
	echo
setvariable zHsnap FIRE
	match SNAP_PAUSE what are you trying
	match SNAP_RETREAT2 isn't loaded
	match SNAP_RETREAT2_PAUSE roundtime
	matchre DEAD_MONSTER /balance\]|balanced\]|isn't what you|referring/i
	matchre SNAP_2_FIRE_PAUSE /\.\.\.wait|type ahead/i
	matchre SNAP_FIRE /must be hidden|not trained|stalking|You can not poach|you are not hidden/i
put %zHrange1
	matchwait

SNAP_POACH_SWIM:
	echo
	echo SNAP_POACH_SWIM:
	echo
	echo
	echo *********************************
	echo **   YOU CANNOT POACH HERE!
	echo ** Switching to normal combat.
	echo *********************************
	echo
setvariable zHrange 1
goto SNAP_FIRE

300:
counter add 10
goto GRAPPLE

GRAPPLE_PAUSE:
pause
310:
GRAPPLE:
	echo
	echo GRAPPLE:
	echo
	matchre GRAPPLE_PAUSE /unable to make|breaks away|\.\.\.wait|type ahead/i
	match CHOKE_KILL_PAUSE grips you back
	match CHOKE_KILL while grappled
	match CHOKE_ADV aren't close enough
	match CHOKE_FACE nothing else
	match CHOKE_STUN You are still stunned.
put grapple
	matchwait
	
	
CHOKE_KILL_PAUSE:
pause
CHOKE_KILL:
	echo
	echo CHOKE_KILL:
	echo
	matchre CHOKE_KILL_PAUSE /begin to squeeze|out a small grunt|\.\.\.wait|type ahead/i
	matchre DEAD_MONSTER /Your pulse quickens with|you turn to face/i
	match GRAPPLE not grappling
	match CHOKE_ADV aren't close enough
	match CHOKE_FACE nothing else
	match CHOKE_STUN You are still stunned.
put choke
	matchwait


CHOKE_STUN:
pause 2
goto GRAPPLE

CHOKE_NOTHING:
pause 3
wait
goto CHOKE_FACE

CHOKE_FACE_PAUSE:
pause
CHOKE_FACE:
	echo
	echo CHOKE_FACE:
	echo
	match CHOKE_FACE_PAUSE type ahead
	match CHOKE_FACE_PAUSE ...wait
	match CHOKE_ADV nothing else to face
	match %zHmonsterapp you turn
put face next
	matchwait

CHOKE_ADV_PAUSE:
pause
CHOKE_ADV:
	echo
	echo CHOKE_ADV:
	echo
	matchre CHOKE_FACE /You stop advancing|You have lost sight/i
	match CHOKE_NOTHING advance towards?
	matchre GRAPPLE /to melee range|already at melee/i
	match GRAPPLE [You're
	match CHOKE_ADV_PAUSE ...wait
	match CHOKE_ADV_PAUSE type ahead
put advance
	matchwait

400:
401:
counter add 10
410:
411:
counter add 10
goto COMBO_EXP_%zHexpC

EXP_421:
EXP_420:
COMBO_4_1:
	echo
	echo COMBO_4_1: %zHcombo1
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	matchre ADV1 /aren't close enough/
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	matchre FACE1 /nothing else|at what are you/
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre 420 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

420:
421:
counter add 10
COMBO_4_2:
	echo
	echo COMBO_4_2: %zHcombo2
	echo
	matchre 430 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2
	matchwait

430:
431:
counter add 10
COMBO_4_3:
	echo
	echo COMBO_4_3: %zHcombo3
	echo
	matchre 440 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3
	matchwait

440:
441:
counter subtract 30
COMBO_4_4:
	echo
	echo COMBO_4_4: %zHcombo4
	echo
	matchre %c /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4
	matchwait

402:
counter add 10
412:
counter add 10
goto COMBO_EXP_%zHexpC

EXP_422:
COMBO_4_1:
pause 3
	echo
	echo COMBO_4_1: %zHcombo1 slower
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	matchre ADV1 /aren't close enough/
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	matchre FACE1 /nothing else|at what are you/
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre 422 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

422:
counter add 10
COMBO_4_2:
pause 3
	echo
	echo COMBO_4_2: %zHcombo2 slower
	echo
	matchre 432 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2
	matchwait

432:
counter add 10
COMBO_4_3:
pause 3
	echo
	echo COMBO_4_3: %zHcombo3 slower
	echo
	matchre 442 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3
	matchwait

442:
counter subtract 30
COMBO_4_4:
pause 3
	echo
	echo COMBO_4_4: %zHcombo4 slower
	echo
	matchre %c /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4
	matchwait

500:
501:
counter add 10
510:
511:
counter add 10
goto COMBO_EXP_%zHexpC

EXP_521:
EXP_520:
COMBO_5_1:
	echo
	echo COMBO_5_1: %zHcombo1
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	matchre ADV1 /aren't close enough/
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	matchre FACE1 /nothing else|at what are you/
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre 520 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

520:
521:
counter add 10
COMBO_5_2:
	echo
	echo COMBO_5_2: %zHcombo2
	echo
	matchre 530 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2
	matchwait

530:
531:
counter add 10
COMBO_5_3:
	echo
	echo COMBO_5_3: %zHcombo3
	echo
	matchre 540 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3
	matchwait

540:
541:
counter add 10
COMBO_5_4:
	echo
	echo COMBO_5_4: %zHcombo4
	echo
	matchre 550 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4
	matchwait

550:
551:
counter subtract 40
COMBO_5_5:
	echo
	echo COMBO_5_5: %zHcombo5
	echo
	matchre %c /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV4 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE4 /nothing else|at what are you/
	matchre PAUSE4 /\.\.\.wait|type ahead/i
	match STUN4 You are still stunned.
put %zHcombo5
	matchwait


502:
counter add 10
512:
counter add 10
goto COMBO_EXP_%zHexpC

EXP_522:
COMBO_5_1:
	echo
	echo COMBO_5_1: %zHcombo1 slower
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	matchre ADV1 /aren't close enough/
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	matchre FACE1 /nothing else|at what are you/
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre 522 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

522:
counter add 10
COMBO_5_2:
	echo
	echo COMBO_5_2: %zHcombo2 slower
	echo
	matchre 532 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2
	matchwait

532:
counter add 10
COMBO_5_3:
pause 3
	echo
	echo COMBO_5_3: %zHcombo3 slower
	echo
	matchre 542 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3
	matchwait

542:
counter add 10
COMBO_5_4:
pause 3
	echo
	echo COMBO_5_4: %zHcombo4 slower
	echo
	matchre 552 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4
	matchwait

552:
counter subtract 40
COMBO_5_5:
pause 3
	echo
	echo COMBO_5_5: %zHcombo5 slower
	echo
	matchre %c /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV4 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE4 /nothing else|at what are you/
	matchre PAUSE4 /\.\.\.wait|type ahead/i
	match STUN4 You are still stunned.
put %zHcombo5
	matchwait

COUNT_5_1:
save COUNT_5_1
	echo
	echo COUNT_5_1: parry
	echo
#Patricia	matchre COUNT_KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre COUNT_FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	matchre COUNT_ADV /aren't close enough/
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	matchre COUNT_FACE /nothing else|at what are you/
#Patricia	matchre COUNT_PAUSE /\.\.\.wait|type ahead/i
#Patricia	match STUN You are still stunned.
#Patriciaput parry
#Patricia	matchwait
	matchre COUNT_5_2 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre COUNT_FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre COUNT_ADV /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre COUNT_FACE /nothing else|at what are you/
	matchre COUNT_PAUSE /\.\.\.wait|type ahead/i
	match STUN You are still stunned.
put parry
	matchwait


COUNT_5_2:
save COUNT_5_2
	echo
	echo COUNT_5_2: shove
	echo
	matchre COUNT_5_3 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre COUNT_FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre COUNT_ADV /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre COUNT_FACE /nothing else|at what are you/
	matchre COUNT_PAUSE /\.\.\.wait|type ahead/i
	match STUN You are still stunned.
put shove
	matchwait


COUNT_5_3:
save COUNT_5_3
	echo
	echo COUNT_5_3: circle
	echo
	matchre COUNT_5_4 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre COUNT_FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre COUNT_ADV /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre COUNT_FACE /nothing else|at what are you/
	matchre COUNT_PAUSE /\.\.\.wait|type ahead/i
	match STUN You are still stunned.
put circle
	matchwait

COUNT_5_4:
save COUNT_5_4
	echo
	echo COUNT_5_4: weave
	echo
	matchre COUNT_5_5 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre COUNT_FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre COUNT_ADV /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre COUNT_FACE /nothing else|at what are you/
	matchre COUNT_PAUSE /\.\.\.wait|type ahead/i
	match STUN You are still stunned.
put weave
	matchwait

COUNT_5_5:
save COUNT_5_5
	echo
	echo COUNT_5_5: bob
	echo
	matchre COUNT%zHcritters /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre COUNT_FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre COUNT_ADV /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre COUNT_FACE /nothing else|at what are you/
	matchre COUNT_PAUSE /\.\.\.wait|type ahead/i
	match STUN You are still stunned.
put bob
	matchwait

COUNT0:
COUNT1:
COUNT2:
COUNT3:
COUNT4:
COUNT5:
COUNT6:
COUNT7:
COUNT8:
COUNT9:
COUNT10:
COUNT11:
goto C_COMBO_EXP_%zHexpC

COUNT12:
setvariable zHcritters 0
echo
echo ***************************
echo **
echo ** The Dance is now over...
echo **
echo ***************************
echo
pause 5
goto %c

600:
601:
counter add 10
610:
611:
counter add 10
goto COMBO_EXP_%zHexpC

EXP_621:
EXP_620:
COMBO_6_1:
	echo
	echo COMBO_6_1: %zHcombo1
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	matchre ADV1 /aren't close enough/
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	matchre FACE1 /nothing else|at what are you/
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre 620 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

620:
621:
counter add 10
COMBO_6_2:
	echo
	echo COMBO_6_2: %zHcombo2
	echo
	matchre 630 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2
	matchwait

630:
631:
counter add 10
COMBO_6_3:
	echo
	echo COMBO_6_3: %zHcombo3
	echo
	matchre 640 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3
	matchwait

640:
641:
counter add 10
COMBO_6_4:
	echo
	echo COMBO_6_4: %zHcombo4
	echo
	matchre 650 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4
	matchwait

650:
651:
counter add 10
COMBO_6_5:
	echo
	echo COMBO_6_5: %zHcombo5
	echo
	matchre 660 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo5
	matchwait

660:
661:
counter subtract 50
COMBO_6_6:
	echo
	echo COMBO_6_6: %zHcombo6
	echo
	matchre %c /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV5 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE5 /nothing else|at what are you/
	matchre PAUSE5 /\.\.\.wait|type ahead/i
	match STUN5 You are still stunned.
put %zHcombo6
	matchwait

602:
counter add 10
612:
counter add 10
goto COMBO_EXP_%zHexpC

EXP_622:
COMBO_6_1:
pause 3
	echo
	echo COMBO_6_1: %zHcombo1 slower
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	matchre ADV1 /aren't close enough/
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	matchre FACE1 /nothing else|at what are you/
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre 622 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

622:
counter add 10
COMBO_6_2:
pause 3
	echo
	echo COMBO_6_2: %zHcombo2 slower
	echo
	matchre 632 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2
	matchwait

632:
counter add 10
COMBO_6_3:
pause 3
	echo
	echo COMBO_6_3: %zHcombo3 slower
	echo
	matchre 642 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3
	matchwait

642:
counter add 10
COMBO_6_4:
pause 3
	echo
	echo COMBO_6_4: %zHcombo4 slower
	echo
	matchre 652 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4
	matchwait

652:
counter add 10
COMBO_6_5:
pause 3
	echo
	echo COMBO_6_5: %zHcombo5 slower
	echo
	matchre 662 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo5
	matchwait

662:
counter subtract 50
COMBO_6_6:
pause 3
	echo
	echo COMBO_6_6: %zHcombo6 slower
	echo
	matchre %c /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV5 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE5 /nothing else|at what are you/
	matchre PAUSE5 /\.\.\.wait|type ahead/i
	match STUN5 You are still stunned.
put %zHcombo6
	matchwait

700:
701:
counter add 10
710:
711:
counter add 10
goto COMBO_EXP_%zHexpC

EXP_721:
EXP_720:
COMBO_7_1:
	echo
	echo COMBO_7_1: %zHcombo1
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	matchre ADV1 /aren't close enough/
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	matchre FACE1 /nothing else|at what are you/
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre 720 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

720:
721:
counter add 10
COMBO_7_2:
	echo
	echo COMBO_7_2: %zHcombo2
	echo
	matchre 730 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2
	matchwait

730:
731:
counter add 10
COMBO_7_3:
	echo
	echo COMBO_7_3: %zHcombo3
	echo
	matchre 740 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3
	matchwait

740:
741:
counter add 10
COMBO_7_4:
	echo
	echo COMBO_7_4: %zHcombo4
	echo
	matchre 750 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4
	matchwait

750:
751:
counter add 10
COMBO_7_5:
	echo
	echo COMBO_7_5: %zHcombo5
	echo
	matchre 760 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo5
	matchwait

760:
761:
counter add 10
COMBO_7_6:
	echo
	echo COMBO_7_6: %zHcombo6
	echo
	matchre 770 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo6
	matchwait

770:
771:
counter subtract 60
COMBO_7_7:
	echo
	echo COMBO_7_7: %zHcombo7
	echo
	matchre %c /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV6 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE6 /nothing else|at what are you/
	matchre PAUSE6 /\.\.\.wait|type ahead/i
	match STUN6 You are still stunned.
put %zHcombo7
	matchwait


702:
counter add 10
712:
counter add 10
goto COMBO_EXP_%zHexpC

EXP_722:
COMBO_7_1:
pause 3
	echo
	echo COMBO_7_1: %zHcombo1 slower
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	matchre ADV1 /aren't close enough/
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	matchre FACE1 /nothing else|at what are you/
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre 722 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

722:
counter add 10
COMBO_7_2:
pause 3
	echo
	echo COMBO_7_2: %zHcombo2 slower
	echo
	matchre 732 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2
	matchwait

732:
counter add 10
COMBO_7_3:
pause 3
	echo
	echo COMBO_7_3: %zHcombo3 slower
	echo
	matchre 742 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3
	matchwait

742:
counter add 10
COMBO_7_4:
pause 3
	echo
	echo COMBO_7_4: %zHcombo4 slower
	echo
	matchre 752 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4
	matchwait

752:
counter add 10
COMBO_7_5:
pause 3
	echo
	echo COMBO_7_5: %zHcombo5 slower
	echo
	matchre 762 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo5
	matchwait

762:
counter add 10
COMBO_7_6:
pause 3
	echo
	echo COMBO_7_6: %zHcombo6 slower
	echo
	matchre 772 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo6
	matchwait

772:
counter subtract 60
COMBO_7_7:
	echo
	echo COMBO_7_7: %zHcombo7 slower
	echo
	matchre %c /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV6 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE6 /nothing else|at what are you/
	matchre PAUSE6 /\.\.\.wait|type ahead/i
	match STUN6 You are still stunned.
put %zHcombo7
	matchwait

800:
801:
counter add 10
810:
811:
counter add 10
goto COMBO_EXP_%zHexpC

EXP_821:
EXP_820:
COMBO_8_1:
	echo
	echo COMBO_8_1: %zHcombo1
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	matchre ADV1 /aren't close enough/
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	matchre FACE1 /nothing else|at what are you/
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre 820 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

820:
821:
counter add 10
COMBO_8_2:
	echo
	echo COMBO_8_2: %zHcombo2
	echo
	matchre 830 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2
	matchwait

830:
831:
counter add 10
COMBO_8_3:
	echo
	echo COMBO_8_3: %zHcombo3
	echo
	matchre 840 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3
	matchwait

840:
841:
counter add 10
COMBO_8_4:
	echo
	echo COMBO_8_4: %zHcombo4
	echo
	matchre 850 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4
	matchwait

850:
851:
counter add 10
COMBO_8_5:
	echo
	echo COMBO_8_5: %zHcombo5
	echo
	matchre 860 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo5
	matchwait

860:
861:
counter add 10
COMBO_8_6:
	echo
	echo COMBO_8_6: %zHcombo6
	echo
	matchre 870 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo6
	matchwait

870:
871:
counter add 10
COMBO_8_7:
	echo
	echo COMBO_8_7: %zHcombo7
	echo
	matchre 880 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo7
	matchwait

880:
881:
counter subtract 70
COMBO_8_8:
	echo
	echo COMBO_8_8: %zHcombo8
	echo
	matchre %c /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV7 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE7 /nothing else|at what are you/
	matchre PAUSE7 /\.\.\.wait|type ahead/i
	match STUN7 You are still stunned.
put %zHcombo8
	matchwait

802:
counter add 10
812:
counter add 10
goto COMBO_EXP_%zHexpC

EXP_822:
COMBO_8_1:
pause 3
	echo
	echo COMBO_8_1: %zHcombo1 slower
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	matchre ADV1 /aren't close enough/
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	matchre FACE1 /nothing else|at what are you/
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre 822 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

822:
counter add 10
COMBO_8_2:
pause 3
	echo
	echo COMBO_8_2: %zHcombo2 slower
	echo
	matchre 832 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2
	matchwait

832:
counter add 10
COMBO_8_3:
pause 3
	echo
	echo COMBO_8_3: %zHcombo3 slower
	echo
	matchre 842 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3
	matchwait

842:
counter add 10
COMBO_8_4:
pause 3
	echo
	echo COMBO_8_4: %zHcombo4 slower
	echo
	matchre 852 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4
	matchwait

852:
counter add 10
COMBO_8_5:
pause 3
	echo
	echo COMBO_8_5: %zHcombo5 slower
	echo
	matchre 862 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo5
	matchwait

862:
counter add 10
COMBO_8_6:
pause 3
	echo
	echo COMBO_8_6: %zHcombo6 slower
	echo
	matchre 872 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo6
	matchwait

872:
counter add 10
COMBO_8_7:
pause 3
	echo
	echo COMBO_8_7: %zHcombo7 slower
	echo
	matchre 882 /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV1 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE1 /nothing else|at what are you/
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo7
	matchwait

882:
counter subtract 70
COMBO_8_8:
pause 3
	echo
	echo COMBO_8_8: %zHcombo8 slower
	echo
	matchre %c /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre ADV7 /aren't close enough/
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FACE7 /nothing else|at what are you/
	matchre PAUSE7 /\.\.\.wait|type ahead/i
	match STUN7 You are still stunned.
put %zHcombo8
	matchwait

1100:
counter add 10
goto BACK_EQUIP2

BACK1:
IF_2 goto BACK_EQUIP
goto BACKSTAB_HIDE

BACK_EQUIP_PAUSE:
pause
BACK_EQUIP:
	echo
	echo BACK_EQUIP:
	echo
	match BEGIN_NOWEAP What were you
	matchre BACKSTAB_HIDE /you get|re already|you sling|you remove/i
	matchre BACK_EQUIP_PAUSE /\.\.\.wait|type ahead/i
put remove my %2
put get my %2
	matchwait

BACK_EQUIP2_PAUSE:
pause
BACK_EQUIP2:
	echo
	echo BACK_EQUIP2:
	echo
	matchre BACK1 /you draw|re already|free to/i
	match BEGIN_HANDS free hand
	matchre BACK_EQUIP2A /out of reach|remove|What were you|can't seem|Wield what\?/i
	matchre BACK_EQUIP2_PAUSE /\.\.\.wait|type ahead/i
put wield right my %1
	matchwait


BACK_EQUIP2A_PAUSE:
pause
BACK_EQUIP2A:
	echo
	echo BACK_EQUIP2A:
	echo
	match BACK_EQUIP2B remove what?
	matchre BACK1 /re already|you sling|you remove/i
	matchre BACK_EQUIP2A_PAUSE /\.\.\.wait|type ahead/i
put remove my %1
	matchwait


BACK_EQUIP2B:
	echo
	echo BACK_EQUIP2B:
	echo
	match BACK_BALDRIC baldric
	match BACK1 you get
	match BEGIN_NOWEAP What were you
put get my %1
	matchwait

BACK_BALDRIC:
	echo
	echo BACK_BALDRIC:
	echo
setvariable zHget ON
setvariable zHgetA in my baldric
goto BACK1

BACKSTAB_HIDE_PAUSE:
pause
BACKSTAB_HIDE:
	echo
	echo BACKSTAB_HIDE:
	echo
	match BACKSTAB_HIDE fail
	matchre BACKSTAB_RETREAT1 /You are too close|notices|discovers/i
	matchre BACKSTAB_ADV /You melt|You blend|Eh\?/i
	matchre BACKSTAB_HIDE_PAUSE /\.\.\.wait|type ahead/i
put hide
	matchwait

BACKSTAB_RETREAT1_PAUSE:
pause
BACKSTAB_RETREAT1:
	echo
	echo BACKSTAB_RETREAT1:
	echo
	match BACKSTAB_ADV You sneak
	match BACKSTAB_RETREAT11_PAUSE roundtime
	matchre BACKSTAB_RETREAT2 /already|You retreat|You sneak back|continue your slaughter/i
	matchre BACKSTAB_RETREAT1_PAUSE /\.\.\.wait|type ahead|Stop advancing|\[You're/i
	match BACKSTAB_STAND You must stand first.
put retreat
	matchwait

BACKSTAB_RETREAT11_PAUSE:
pause
BACKSTAB_RETREAT11:
	echo
	echo BACKSTAB_RETREAT11:
	echo
	match BACKSTAB_FAIL roundtime
	matchre BACKSTAB_RETREAT2 /already|You retreat|You sneak back|continue your slaughter/i
	matchre BACKSTAB_RETREAT11 /\.\.\.wait|type ahead|\[You're/i
	match BACKSTAND_STAND You must stand first.
put retreat
	matchwait



BACKSTAB_FACE_PAUSE:
pause
BACKSTAB_FACE:
	matchre BACKSTAB_FACE_PAUSE /\.\.\.wait|type ahead/i
	match BACKSTAB_ASSESS_ADV nothing else to
	match BACKSTAB_ADV you turn
put face next
	matchwait

BACKSTAB_ASSESS_ADV:
	matchre BACKSTAB_FACE /You stop advancing|You have lost sight/i
	match NOTHING advance towards?
	match BACKSTAB_ADV begin
	matchre BACKSTAB_FAIL /to melee range|\[You're|already at melee/i
put advance
	matchwait

BACKSTAB_NOTHING:
pause 3
wait
	goto BACKSTAB_FACE

BACKSTAB_RETREAT2_PAUSE:
pause
BACKSTAB_RETREAT2:
	echo
	echo BACKSTAB_RETREAT2:
	echo
	matchre BACKSTAB_FAIL /discovers|notices|fail|You are too close/i
	matchre BACKSTAB_ADV /You melt|You blend/i
	matchre BACKSTAB_RETREAT2_PAUSE /\.\.\.wait|type ahead/i
put hide
	matchwait


BACKSTAB_ADV_PAUSE:
pause
BACKSTAB_ADV:
	echo
	echo BACKSTAB_ADV:
	echo
	matchre BACKSTAB_HIDE /discovers|notices|fail/i
	match BACKSTAB_STALK melee
	match BACKSTAB_NOTHING What do you want to advance towards?
	matchre BACKSTAB_ADV_PAUSE /\.\.\.wait|type ahead|you stop advancing/i
put advance
	matchwait

BACKSTAB_STALK_PAUSE:
pause
BACKSTAB_STALK:
	echo
	echo BACKSTAB_STALK:
	echo
	matchre BACKSTAB_FAIL /discovers|notices|try being out of sight/i
	match BACKSTAB_ADV nothing else
	matchre %c /Don't be silly|You move into position|already stalking/i
	match BACKSTAB_RETREAT1 trying to stalk
	match BACKSTAB_STALK2 You fail
	matchre BACKSTAB_STALK_PAUSE /\.\.\.wait|type ahead/i
put stalk
	matchwait

BACKSTAB_STALK2_PAUSE:
pause
BACKSTAB_STALK2:
	echo
	echo BACKSTAB_STALK2:
	echo
	matchre BACKSTAB_FAIL /discovers|notices|try being out of sight/i
	match BACKSTAB_ADV nothing else
	matchre %c /Don't be silly|You move into position|already stalking/i
	match BACKSTAB_RETREAT1 trying to stalk
	match BACKSTAB_STALK3 You fail
	matchre BACKSTAB_STALK2_PAUSE /\.\.\.wait|type ahead/i
put stalk
	matchwait

BACKSTAB_STALK3:
pause
goto BACKSTAB1

BACKSTAB_FAIL:
	echo
	echo BACKSTAB_FAIL:
	echo
goto BACKSTAB_ATTACK


1110:
goto BACKSTAB1
BACKSTAB1_PAUSE:
pause
BACKSTAB1:
	echo
	echo BACKSTAB1:
	echo
	matchre BACKSTAB_AMBUSH /You can't backstab that\.|political/i
	matchre BACKSTAB_ADV /help if you were closer|aren't close enough to attack|aren't close enough to do that/i
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match BACKSTAB_FACE nothing else
	match BACKSTAB_EXP_%zHexpC roundtime
	match BACKSTAB_RETREAT1 you must be hidden
	matchre BACKSTAB1_PAUSE /\.\.\.wait|type ahead/i
put backstab
	matchwait

BACKSTAB_EXP_ON:
goto BACKSTAB_MULTI_%zHmulti

BACKSTAB_MULTI_ON:
setvariable zHexpC BACKSTAB_CHECK
goto Multi_%zHmulti

BACKSTAB_MULTI_OFF:
put skill
wait
MULTI_EXP_BACKSTAB_CHECK:
setvariable zHexpC ON

BACKSTAB_EXP_OFF:
goto BACKSTAB_HIDE

BACKSTAB_STAND_PAUSE:
pause
BACKSTAB_STAND:
	echo
	echo BACKSTAB_STAND:
	echo
	match BACKSTAB_STAND_PAUSE roundtime
	match BACKSTAB_HIDE You stand back up.
	matchre BACKSTAB_STAND_PAUSE /\.\.\.wait|type ahead/i
put stand
	matchwait

BACKSTAB_AMBUSH_PAUSE:
pause
BACKSTAB_AMBUSH:
	echo
	echo BACKSTAB_AMBUSH:
	echo
	matchre BACKSTAB_ADV /help if you were closer|aren't close enough to attack|aren't close enough to do that/i
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match BACKSTAB_FACE nothing else
	match BACKSTAB_HIDE roundtime
	match BACKSTAB_ATTACK you must be hidden
	matchre BACKSTAB_AMBUSH_PAUSE /\.\.\.wait|type ahead/i
put attack head
	matchwait

BACKSTAB_ATTACK_PAUSE:
pause
BACKSTAB_ATTACK:
	echo
	echo BACKSTAB_ATTACK:
	echo
	matchre BACKSTAB_ADV /help if you were closer|aren't close enough to attack|aren't close enough to do that/i
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match BACKSTAB_FACE nothing else
	match BACKSTAB_HIDE roundtime
	matchre BACKSTAB_ATTACK_PAUSE /\.\.\.wait|type ahead/i
put attack
	matchwait

1200:
counter add 10
1210:
counter add 10
THROWN_DODGE_PAUSE:
pause
THROWN_DODGE:
	echo
	echo THROWN_DODGE:
	echo
	matchre THROWN_FACE /you are already|You move into a position to dodge/i
	matchre THROWN_DODGE_PAUSE /\.\.\.wait|type ahead/i
put dodge
	matchwait

THROWN_GET_PAUSE_D:
pause

THROWN_GET_D:
	echo
	echo THROWN_GET_D:
	echo
	matchre THROWN_DODGE /already|You need a free hand to pick that up|you get|you pick up/i
	match THROWN_SECONDARY What were you
	matchre THROWN_GET_PAUSE_D /\.\.\.wait|type ahead/i
put get %1
	matchwait


THROWN_FACE_PAUSE:
pause
1220:
THROWN_FACE:
	matchre THROWN_FACE_PAUSE /\.\.\.wait|type ahead/i
	match THROWN_ASSESS nothing else to face
	match THROWN_THROW you turn
put face next
	matchwait

THROWN_ASSESS:
pause 3
goto THROWN_THROW


THROWN_THROW_PAUSE:
pause
THROWN_THROW:
goto THROWN_EXP_%zHexpC

THROWN_EXP_ON:
goto THROWN_MULTI_%zHmulti

THROWN_MULTI_ON:
setvariable zHexpC THROWN_CHECK
goto Multi_%zHmulti

THROWN_MULTI_OFF:
put skill
wait
MULTI_EXP_THROWN_CHECK:
setvariable zHexpC ON

THROWN_EXP_OFF:
	echo
	echo THROWN_THROW:
	echo
	matchre THROWN_GET /roundtime|What do you want to throw\?/i
	matchre T_DEAD /balanced\]|balance\]|already dead|very dead/i
	matchre FATIGUE_T /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match THROWN_DUD suitable throwing
	match THROWN_FACE At What are you trying
	matchre THROWN_THROW_PAUSE /\.\.\.wait|type ahead/i
put throw
	matchwait

THROWN_GET_PAUSE:
pause
THROWN_GET:
	echo
	echo THROWN_GET:
	echo
	matchre THROWN_THROW2 /already|pick that up|you get|you pick up/i
	match THROWN_SECONDARY What were you
	matchre THROWN_GET_PAUSE /\.\.\.wait|type ahead/i
put get %1
	matchwait

THROWN_THROW2_PAUSE:
pause
THROWN_THROW2:
	echo
	echo THROWN_THROW2:
	echo
	matchre THROWN_GET2 /roundtime|What do you want to throw\?/i
	matchre T_DEAD /balanced\]|balance\]|already dead|very dead/i
	matchre FATIGUE_T /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match THROWN_DUD suitable throwing
	match THROWN_FACE At What are you trying
	matchre THROWN_THROW2_PAUSE /\.\.\.wait|type ahead/i
put throw
	matchwait

THROWN_GET2_PAUSE:
pause
THROWN_GET2:
	echo
	echo THROWN_GET2:
	echo
	match THROWN_SECONDARY What were you
	matchre THROWN_RETREAT /already|pick that up|you get|you pick up/i
	matchre THROWN_GET2_PAUSE /\.\.\.wait|type ahead/i
put get %1
	matchwait


THROWN_RETREAT_PAUSE:
pause
THROWN_RETREAT:
	echo
	echo THROWN_RETREAT:
	echo
	matchre THROWN_THROW /You cannot back away from a chance to continue your slaughter|You retreat from combat|already as far|You sneak back/i
	match THROWN_THROW_PAUSE roundtime
	matchre THROWN_RETREAT_PAUSE /\.\.\.wait|type ahead|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

FATIGUE_T_PAUSE:
pause
FATIGUE_T:
	echo
	echo FATIGUE_T
	echo
	matchre FATIGUE /you get|you pull|What were you|you pick/i
	matchre FATIGUE_T_PAUSE /\.\.\.wait|type ahead/i
put get %1
	matchwait


THROWN_DUD:
	echo
	echo THROWN_DUD:
	echo
	echo **********************************
	echo ** Item chosen can't be thrown!
	echo **  Attempting normal combat!
	echo **********************************
	echo
counter subtract 1210
goto WEAPON_CHECK

T_DEAD_PAUSE:
pause
T_DEAD:
	echo
	echo T_DEAD:
	echo
	matchre DEAD_MONSTER /you get|you pull|What were you|you pick/i
	matchre T_DEAD_PAUSE /\.\.\.wait|type ahead/i
put get %1
	matchwait



THROWN_SECONDARY_PAUSE:
pause
THROWN_SECONDARY:
	echo
	echo THROWN_SECONDARY:
	echo
put advance
goto BRAWL_2_T

BRAWL_1_T_PAUSE:
pause
BRAWL_1_T:
setvariable zHbrawlT 1
	echo
	echo BRAWL_1_T: Dodge
	echo
	match BRAWL_2_T re already dodging
	matchre BRAWL_2_T_G /You move into a position to dodge|comes free and falls to the ground|you are already/i
	matchre FATIGUE_T /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre BRAWL_1_T_PAUSE /\.\.\.wait|type ahead/i
put dodge
	matchwait

BRAWL_2_T_G_PAUSE:
pause
BRAWL_2_T_G:
	echo
	echo BRAWL_2_T_G:
	echo
	matchre THROWN_RETREAT /already|you get|you pull|you pick/i
	match BRAWL_2_T What were you
	matchre BRAWL_2_T_G_PAUSE /\.\.\.wait|type ahead|comes free and falls to the ground/i
put get %1
	matchwait

BRAWL_2_T_PAUSE:
pause
BRAWL_2_T:
setvariable zHbrawlT 2
	echo
	echo BRAWL_2_T: Gouge
	echo
	matchre T_ADV /aren't close enough to attack\.|aren't close enough to do that!/i
	matchre T_B_DEAD /balanced\]|balance\]|nothing else|you turn to face|already dead|very dead/i
	matchre FATIGUE_T /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match BRAWL_3_T roundtime
	matchre BRAWL_2_T_PAUSE /\.\.\.wait|type ahead/i
	match BRAWL_2_T_G comes free and falls to the ground.
put gouge
	matchwait


BRAWL_3_T_PAUSE:
pause
BRAWL_3_T:
setvariable zHbrawlT 3
	echo
	echo BRAWL_3_T: Claw
	echo
	matchre T_ADV /aren't close enough to attack\.|aren't close enough to do that!/i
	matchre T_B_DEAD /balanced\]|balance\]|nothing else|you turn to face|already dead|very dead/i
	matchre FATIGUE_T /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match BRAWL_4_T roundtime
	matchre BRAWL_3_T_PAUSE /\.\.\.wait|type ahead/i
	match BRAWL_2_T_G comes free and falls to the ground.
put claw
	matchwait


BRAWL_4_T_PAUSE:
pause
BRAWL_4_T:
setvariable zHbrawlT 4
	echo
	echo BRAWL_4_T: Elbow
	echo
	matchre T_ADV /aren't close enough to attack\.|aren't close enough to do that!/i
	matchre T_B_DEAD /balanced\]|balance\]|nothing else|you turn to face|already dead|very dead/i
	matchre FATIGUE_T /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match BRAWL_5_T roundtime
	matchre BRAWL_4_T_PAUSE /\.\.\.wait|type ahead/i
	match BRAWL_2_T_G comes free and falls to the ground.
put elbow
	matchwait

BRAWL_5_T_PAUSE:
pause
BRAWL_5_T:
setvariable zHbrawlT 5
	echo
	echo BRAWL_5_T: Jab
	echo
	matchre T_ADV /aren't close enough to attack\.|aren't close enough to do that!/i
	matchre T_B_DEAD /balanced\]|balance\]|nothing else|you turn to face|already dead|very dead/i
	matchre FATIGUE_T /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match BRAWL_1_T roundtime
	matchre BRAWL_5_T_PAUSE /\.\.\.wait|type ahead/i
	match BRAWL_2_T_G comes free and falls to the ground.
put jab
	matchwait

T_B_DEAD_PAUSE:
pause
T_B_DEAD:
	echo
	echo T_B_DEAD:
	echo
	matchre DEAD_MONSTER /already|you get|you pull|you pick/i
	match BRAWL_2_T What were you
	matchre T_B_DEAD_PAUSE /\.\.\.wait|type ahead|comes free and falls to the ground\./i
put get %1
	matchwait


FATIGUE_T_PAUSE:
pause
FATIGUE_T:
	echo
	echo FATIGUE_T:
	echo
	matchre FATIGUE_T_CHECK /You cannot back away from a chance to continue your slaughter|You retreat from combat\.|already as far|You sneak back/i
	match FATIGUE_T_CHECK1 roundtime
	match FATIGUE_T_PAUSE stop advancing
	matchre FATIGUE_T_PAUSE /\.\.\.wait|type ahead|stop advancing|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

FATIGUE_T_CHECK_PAUSE:
pause
FATIGUE_T_CHECK:
	echo
	echo FATIGUE_T_CHECK:
	echo
	matchre BRAWL_%zHbrawlT%_T /completely rested|winded|tired/i
	matchre FATIGUE_T_WAIT /fatigued|worn-out|beat,|exhausted|bone-tired/i
	matchre FATIGUE_T_CHECK_PAUSE /\.\.\.wait|type ahead/i
put fat
	matchwait


FATIGUE_T_CHECK1:
	echo
	echo FATIGUE_T_CHECK1:
	echo
	matchre BRAWL_%zHbrawlT%_T /completely rested|winded|tired/i
	matchre FATIGUE_T /fatigued|worn-out|beat,|exhausted|bone-tired/i
put fat
	matchwait

FATIGUE_T_WAIT:
	echo
	echo FATIGUE_T_WAIT:
	echo
	matchre FATIGUE_T /melee|pole|\[You're/i
	matchwait


T_ADV_PAUSE:
pause
T_ADV:
	match T_DEAD You stop advancing
	match T_RUN You have lost sight
	matchre BRAWL_%zHbrawlT%_T /to melee range|\[You're|already at melee/i
	matchre T_ADV_PAUSE /\.\.\.wait|type ahead/i
put advance
	matchwait

T_RUN:
	echo
	echo T_RUN:
	echo
	echo **************************************************************************************
	echo ** THE MONSTER JUST RAN AWAY WITH YOUR %1 STUCK IN IT!!
	echo **                YOU BETTER GO GET IT!!
	echo **************************************************************************************
	echo
	echo ********************
	echo ** ENDING SCRIPT!
	echo ********************
	echo
exit


2200:
counter add 10
2210:
counter add 10
OFF_THROWN_DODGE_PAUSE:
pause
OFF_THROWN_DODGE:
	echo
	echo OFF_THROWN_DODGE:
	echo
	matchre OFF_THROWN_FACE /you are already|You move into a position to dodge/i
	matchre OFF_THROWN_DODGE_PAUSE /\.\.\.wait|type ahead/i
put dodge
	matchwait

OFF_THROWN_GET_PAUSE_D:
pause

OFF_THROWN_GET_D:
	echo
	echo THROWN_GET_D:
	echo
	matchre OFF_THROWN_DODGE /already|You need a free hand to pick that up|you get|you pick up/i
	match OFF_THROWN_SECONDARY What were you
	matchre OFF_THROWN_GET_PAUSE_D /\.\.\.wait|type ahead/i
put get %1
	matchwait


OFF_THROWN_FACE_PAUSE:
pause
2220:
OFF_THROWN_FACE:
	matchre OFF_THROWN_FACE_PAUSE /\.\.\.wait|type ahead/i
	match OFF_THROWN_ASSESS nothing else to face
	match OFF_THROWN_THROW you turn
put face next
	matchwait

OFF_THROWN_ASSESS:
pause 3
goto OFF_THROWN_THROW


OFF_THROWN_THROW_PAUSE:
pause
OFF_THROWN_THROW:
goto OFF_THROWN_EXP_%zHexpC

OFF_THROWN_EXP_ON:
goto OFF_THROWN_MULTI_%zHmulti

OFF_THROWN_MULTI_ON:
setvariable zHexpC OFF_THROWN_CHECK
goto Multi_%zHmulti

OFF_THROWN_MULTI_OFF:
put skill
wait
MULTI_EXP_OFF_THROWN_CHECK:
setvariable zHexpC ON

OFF_THROWN_EXP_OFF:
	echo
	echo OFF_THROWN_THROW:
	echo
	matchre OFF_THROWN_GET /roundtime|What do you want to throw\?/i
	matchre OFF_T_DEAD /balanced\]|balance\]|already dead|very dead/i
	matchre OFF_FATIGUE_T /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match OFF_THROWN_DUD suitable throwing
	match OFF_THROWN_FACE At What are you trying
	matchre OFF_THROWN_THROW_PAUSE /\.\.\.wait|type ahead/i
put throw left
	matchwait

OFF_THROWN_GET_PAUSE:
pause
OFF_THROWN_GET:
	echo
	echo OFF_THROWN_GET:
	echo
	matchre OFF_THROWN_THROW2 /already|pick that up|you get|you pick up/i
	match OFF_THROWN_SECONDARY What were you
	matchre OFF_THROWN_GET_PAUSE /\.\.\.wait|type ahead/i
put get %1
	matchwait

OFF_THROWN_THROW2_PAUSE:
pause
OFF_THROWN_THROW2:
	echo
	echo OFF_THROWN_THROW2:
	echo
	matchre OFF_THROWN_GET2 /roundtime|What do you want to throw\?/i
	matchre OFF_T_DEAD /balanced\]|balance\]|already dead|very dead/i
	matchre OFF_FATIGUE_T /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match OFF_THROWN_DUD suitable throwing
	match OFF_THROWN_FACE At What are you trying
	matchre OFF_THROWN_THROW2_PAUSE /\.\.\.wait|type ahead/i
put throw left
	matchwait

OFF_THROWN_GET2_PAUSE:
pause
OFF_THROWN_GET2:
	echo
	echo OFF_THROWN_GET2:
	echo
	match OFF_THROWN_SECONDARY What were you
	matchre OFF_THROWN_RETREAT /already|pick that up|you get|you pick up/i
	matchre OFF_THROWN_GET2_PAUSE /\.\.\.wait|type ahead/i
put get %1
	matchwait


OFF_THROWN_RETREAT_PAUSE:
pause
OFF_THROWN_RETREAT:
	echo
	echo OFF_THROWN_RETREAT:
	echo
	matchre OFF_THROWN_THROW /You cannot back away from a chance to continue your slaughter|You retreat from combat|already as far|You sneak back/i
	match OFF_THROWN_THROW_PAUSE roundtime
	matchre OFF_THROWN_RETREAT_PAUSE /\.\.\.wait|type ahead|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

OFF_FATIGUE_T_PAUSE:
pause
OFF_FATIGUE_T:
	echo
	echo OFF_FATIGUE_T:
	echo
	matchre OFF_FATIGUE /you get|you pull|What were you|you pick/i
	matchre OFF_FATIGUE_T_PAUSE /\.\.\.wait|type ahead/i
put get %1
	matchwait

OFF_FATIGUE_PAUSE:
pause
OFF_FATIGUE:
	echo
	echo OFF_FATIGUE:
	echo
	match OFF_FATIGUE_CHECK You cannot back away from a chance to continue your slaughter!
	match OFF_FATIGUE_CHECK You retreat from combat.
	match OFF_FATIGUE_CHECK You sneak back
	match OFF_FATIGUE_PAUSE [You're
	match OFF_FATIGUE_CHECK already as far
	match OFF_FATIGUE_CHECK1_PAUSE roundtime
	match OFF_FATIGUE_PAUSE ...wait
	match OFF_FATIGUE_PAUSE type ahead
	match OFF_FATIGUE_PAUSE You stop advancing
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

OFF_FATIGUE_CHECK:
	echo
	echo OFF_FATIGUE_CHECK:
	echo
	match OFF_THROWN_THROW completely rested
	match OFF_THROWN_THROW winded
	match OFF_FATIGUE_WAIT tired
	match OFF_FATIGUE_WAIT fatigued
	match OFF_FATIGUE_WAIT worn-out
	match OFF_FATIGUE_WAIT beat,
	match OFF_FATIGUE_WAIT exhausted
	match OFF_FATIGUE_WAIT bone-tired
put fat
	matchwait

OFF_FATIGUE_CHECK1_PAUSE:
pause
OFF_FATIGUE_CHECK1:
	echo
	echo OFF_FATIGUE_CHECK1:
	echo
	match OFF_THROWN_THROW completely rested
	match OFF_THROWN_THROW winded
	match OFF_FATIGUE tired
	match OFF_FATIGUE fatigued
	match OFF_FATIGUE worn-out
	match OFF_FATIGUE beat,
	match OFF_FATIGUE exhausted
	match OFF_FATIGUE bone-tired
put fat
	matchwait

OFF_FATIGUE_WAIT:
	echo
	echo OFF_FATIGUE_WAIT:
	echo
	match OFF_FATIGUE melee
	match OFF_FATIGUE pole
	match OFF_FATIGUE [You're
	matchwait

OFF_THROWN_DUD:
	echo
	echo OFF_THROWN_DUD:
	echo
	echo **********************************
	echo ** Item chosen can't be thrown!
	echo **  Attempting normal combat!
	echo **********************************
	echo
counter subtract 2220
put swap
goto WEAPON_CHECK

OFF_T_DEAD_PAUSE:
pause
OFF_T_DEAD:
	echo
	echo OFF_T_DEAD:
	echo
	matchre DEAD_MONSTER /you get|you pull|What were you|you pick/i
	matchre OFF_T_DEAD_PAUSE /\.\.\.wait|type ahead/i
put get %1
	matchwait



OFF_THROWN_SECONDARY_PAUSE:
pause
OFF_THROWN_SECONDARY:
	echo
	echo OFF_THROWN_SECONDARY:
	echo
put advance
goto OFF_BRAWL_2_T

OFF_BRAWL_1_T_PAUSE:
pause
OFF_BRAWL_1_T:
setvariable zHbrawlT 1
	echo
	echo OFF_BRAWL_1_T: Dodge
	echo
	match OFF_BRAWL_2_T re already dodging
	matchre OFF_BRAWL_2_T_G /You move into a position to dodge|you are already|comes free and falls to the ground/i
	matchre OFF_FATIGUE_T /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	matchre OFF_BRAWL_1_T_PAUSE /\.\.\.wait|type ahead/i
put dodge
	matchwait

OFF_BRAWL_2_T_G_PAUSE:
pause
OFF_BRAWL_2_T_G:
	echo
	echo OFF_BRAWL_2_T_G:
	echo
	matchre OFF_THROWN_RETREAT /already|you get|you pull|you pick/i
	match OFF_BRAWL_2_T What were you
	matchre OFF_BRAWL_2_T_G_PAUSE /\.\.\.wait|type ahead|comes free and falls to the ground/i
put get %1
	matchwait

OFF_BRAWL_2_T_PAUSE:
pause
OFF_BRAWL_2_T:
setvariable zHbrawlT 2
	echo
	echo OFF_BRAWL_2_T: Gouge
	echo
	matchre OFF_T_ADV /aren't close enough to attack\.|aren't close enough to do that!/i
	matchre OFF_T_B_DEAD /balanced\]|balance\]|nothing else|you turn to face|already dead|very dead/i
	matchre OFF_FATIGUE_T /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match OFF_BRAWL_3_T roundtime
	matchre OFF_BRAWL_2_T_PAUSE /\.\.\.wait|type ahead/i
	match OFF_BRAWL_2_T_G comes free and falls to the ground.
put gouge
	matchwait


OFF_BRAWL_3_T_PAUSE:
pause
OFF_BRAWL_3_T:
setvariable zHbrawlT 3
	echo
	echo OFF_BRAWL_3_T: Claw
	echo
	matchre OFF_T_ADV /aren't close enough to attack\.|aren't close enough to do that!/i
	matchre OFF_T_B_DEAD /balanced\]|balance\]|nothing else|you turn to face|already dead|very dead/i
	matchre OFF_FATIGUE_T /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match OFF_BRAWL_4_T roundtime
	matchre OFF_BRAWL_3_T_PAUSE /\.\.\.wait|type ahead/i
	match OFF_BRAWL_2_T_G comes free and falls to the ground.
put claw
	matchwait


OFF_BRAWL_4_T_PAUSE:
pause
OFF_BRAWL_4_T:
setvariable zHbrawlT 4
	echo
	echo OFF_BRAWL_4_T: Elbow
	echo
	matchre OFF_T_ADV /aren't close enough to attack\.|aren't close enough to do that!/i
	matchre OFF_T_B_DEAD /balanced\]|balance\]|nothing else|you turn to face|already dead|very dead/i
	matchre OFF_FATIGUE_T /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match OFF_BRAWL_5_T roundtime
	matchre OFF_BRAWL_4_T_PAUSE /\.\.\.wait|type ahead/i
	match OFF_BRAWL_2_T_G comes free and falls to the ground.
put elbow
	matchwait

OFF_BRAWL_5_T_PAUSE:
pause
OFF_BRAWL_5_T:
setvariable zHbrawlT 5
	echo
	echo OFF_BRAWL_5_T: Jab
	echo
	matchre OFF_T_ADV /aren't close enough to attack\.|aren't close enough to do that!/i
	matchre OFF_T_B_DEAD /balanced\]|balance\]|nothing else|you turn to face|already dead|very dead/i
	matchre OFF_FATIGUE_T /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match OFF_BRAWL_1_T roundtime
	matchre OFF_BRAWL_5_T_PAUSE /\.\.\.wait|type ahead/i
	match OFF_BRAWL_2_T_G comes free and falls to the ground.
put jab
	matchwait

OFF_T_B_DEAD_PAUSE:
pause
OFF_T_B_DEAD:
	echo
	echo OFF_T_B_DEAD:
	echo
	matchre DEAD_MONSTER /already|you get|you pull|you pick/i
	match OFF_BRAWL_2_T What were you
	matchre OFF_T_B_DEAD_PAUSE /\.\.\.wait|type ahead|comes free and falls to the ground\./i
put get %1
	matchwait

OFF_FATIGUE_T_PAUSE:
pause
OFF_FATIGUE_T:
	echo
	echo OFF_FATIGUE_T:
	echo
	matchre OFF_FATIGUE_T_CHECK /You cannot back away from a chance to continue your slaughter|You retreat from combat\.|already as far|You sneak back/i
	match OFF_FATIGUE_T_CHECK1 roundtime
	match OFF_FATIGUE_T_PAUSE stop advancing
	matchre OFF_FATIGUE_T_PAUSE /\.\.\.wait|type ahead|stop advancing|\[You're/i
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

OFF_FATIGUE_T_CHECK_PAUSE:
pause
OFF_FATIGUE_T_CHECK:
	echo
	echo OFF_FATIGUE_T_CHECK:
	echo
	matchre OFF_BRAWL_%zHbrawlT%_T /completely rested|winded|tired/i
	matchre OFF_FATIGUE_T_WAIT /fatigued|worn-out|beat,|exhausted|bone-tired/i
	matchre OFF_FATIGUE_T_CHECK_PAUSE /\.\.\.wait|type ahead/i
put fat
	matchwait


OFF_FATIGUE_T_CHECK1:
	echo
	echo OFF_FATIGUE_T_CHECK1:
	echo
	matchre OFF_BRAWL_%zHbrawlT%_T /completely rested|winded|tired/i
	matchre OFF_FATIGUE_T /fatigued|worn-out|beat,|exhausted|bone-tired/i
put fat
	matchwait

OFF_FATIGUE_T_WAIT:
	echo
	echo OFF_FATIGUE_T_WAIT:
	echo
	matchre FATIGUE_T /melee|pole|\[You're/i
	matchwait


OFF_T_ADV_PAUSE:
pause
OFF_T_ADV:
	match OFF_T_DEAD You stop advancing
	match OFF_T_RUN You have lost sight
	matchre OFF_BRAWL_%zHbrawlT%_T /to melee range|\[You're|already at melee/i
	matchre OFF_T_ADV_PAUSE /\.\.\.wait|type ahead/i
put advance
	matchwait

OFF_T_RUN:
	echo
	echo OFF_T_RUN:
	echo
	echo **************************************************************************************
	echo ** THE MONSTER JUST RAN AWAY WITH YOUR %1 STUCK IN IT!!
	echo **                YOU BETTER GO GET IT!!
	echo **************************************************************************************
	echo
	echo ********************
	echo ** ENDING SCRIPT!
	echo ********************
	echo
exit

EMPATH_E:
IF_2 goto EMPATH_EQUIP
	IF_1 match EMPATH_APPRAISE you draw
	IF_1 match EMPATH_APPRAISE re already holding
	IF_1 match BEGIN_HANDS free hand
	IF_1 match EMPATH_APPRAISE free to
	IF_1 matchre EMPATH_E2 /out of reach|remove|What were you|can't seem|Wield what\?/i
	IF_1 match EMPATH_E2 You can only wield a weapon or a shield!
IF_1 put wield right my %1
	IF_1 matchwait
	goto EMP_BRAWL

EMPATH_E2:
	match EMPATH_E3 What were you
	match EMPATH_APPRAISEL placing it
	match EMP_BRAWL already
	match EMP_BRAWL Inventory
	match EMPATH_APPRAISE off from over your shoulder.
	match EMPATH_APPRAISE you remove
put remove my %1
	matchwait


EMPATH_E3:
	echo
	echo EMPATH_E3:
	echo
	match EMPATH_BALDRIC baldric
	match EMPATH_APPRAISE you get
	match BEGIN_NOWEAP What were you
put get my %1
	matchwait

EMPATH_BALDRIC:
	echo
	echo EMPATH_BALDRIC:
	echo
setvariable zHget ON
setvariable zHgetA in my baldric
goto EMPATH_APPRAISE

EMPATH_EQUIP_PAUSE:
pause
EMPATH_EQUIP:
	echo
	echo EMPATH_EQUIP:
	echo
	match BEGIN_NOWEAP What were you
	match EMPATH_EQUIPS you get
	match EMPATH_EQUIP2 re already
	match EMPATH_EQUIP2 you sling
	match EMPATH_EQUIP2 you remove
	match EMPATH_EQUIP_PAUSE ...wait
	match EMPATH_EQUIP_PAUSE type ahead
put remove my %2
put get my %2
	matchwait

EMPATH_EQUIPS:
put swap
waitfor you move

EMPATH_EQUIP2_PAUSE:
pause
EMPATH_EQUIP2:
	echo
	echo EMPATH_EQUIP2:
	echo
	match EMP_BRAWL you draw
	match EMP_BRAWL re already holding
	match BEGIN_HANDS free hand
	match EMP_BRAWL free to
	matchre EMPATH_EQUIP3 /out of reach|remove|What were you|can't seem|Wield what\?/i
	match BEGIN_NOWEAP You can only wield a weapon or a shield!
	match EMPATH_EQUIP2_PAUSE ...wait
	match EMPATH_EQUIP2_PAUSE type ahead
put wield right my %1
	matchwait


EMPATH_EQUIP3:
	echo
	echo EMPATH_EQUIP3:
	echo
	match EMPATH_EQUIP4 remove what?
	match EMP_BRAWL re already
	match EMP_BRAWL inventory
	match EMP_BRAWL you sling
	match EMP_BRAWL you remove
put remove my %1
	matchwait


EMPATH_EQUIP4:
	echo
	echo EMPATH_EQUIP4:
	echo
	match EMPATH_BALDRIC2 baldric
	match EMP_BRAWL you get
	match BEGIN_NOWEAP What were you
put get my %1
	matchwait

EMPATH_BALDRIC2:
	echo
	echo EMPATH_BALDRIC2:
	echo
setvariable zHget ON
setvariable zHgetA in my baldric
goto EMP_BRAWL

EMPATH_APPRAISE:
	echo
	echo EMPATH_APPRAISE:
	echo
	match EMP_BRAWL_PAUSE weapon.
	match EMPATH_SWAP hinderance
	match EMP_BRAWL_PAUSE roundtime
put appraise my %1
	matchwait

EMPATH_APPRAISEL:
	echo
	echo EMPATH_APPRAISEL:
	echo
	match EMPATH_SWAP weapon.
	match EMP_BRAWL_PAUSE hinderance
	match EMP_BRAWL_PAUSE roundtime
put appraise my %1
	matchwait

EMPATH_SWAP:
	echo
	echo EMPATH_SWAP:
	echo
put swap
waitfor you move

EMP_BRAWL_PAUSE:
pause
EMP_BRAWL:
goto %c

BRAWL_EQUIPMENT:
	echo
	echo BRAWL_EQUIPMENT:
	echo
pause
IF_2 goto BRAWL_EQUIP
	IF_1 match BRAWL_APPRAISE you draw
	IF_1 match BRAWL_APPRAISE re already holding
	IF_1 match BEGIN_HANDS free hand
	IF_1 match BRAWL_APPRAISE free to
	IF_1 matchre BRAWL_E2 /out of reach|remove|What were you|can't seem|Wield what\?/i
	IF_1 match BRAWL_E2 You can only wield a weapon or a shield!
IF_1 put wield right my %1
	IF_1 matchwait
	goto BRA_BRAWL

BRAWL_E2:
	match BRAWL_E3 What were you
	match BRAWL_E3 Remove what?
	match BRAWL_APPRAISEL placing it
	match BRA_BRAWL already
	match BRA_BRAWL Inventory
	match BRA_BRAWL you remove
	match BRAWL_APPRAISE off from over your shoulder.
put remove my %1
	matchwait


BRAWL_E3:
	echo
	echo BRAWL_E3:
	echo
	match BRAWL_BALDRIC baldric
	match BRAWL_APPRAISE you get
	match BEGIN_NOWEAP What were you
put get my %1
	matchwait

BRAWL_BALDRIC:
	echo
	echo BRAWL_BALDRIC:
	echo
setvariable zHget ON
setvariable zHgetA in my baldric
goto BRAWL_APPRAISE

BRAWL_EQUIP_PAUSE:
pause
BRAWL_EQUIP:
	echo
	echo BRAWL_EQUIP:
	echo
	match BEGIN_NOWEAP What were you
	match BRAWL_EQUIPS you get
	match BRAWL_EQUIP2 re already
	match BRAWL_EQUIP2 you sling
	match BRAWL_EQUIP2 you remove
	match BRAWL_EQUIPA_PAUSE ...wait
	match BRAWL_EQUIPA_PAUSE type ahead
put remove my %2
put get my %2
	matchwait

BRAWL_EQUIPS:
put swap
waitfor you move

BRAWL_EQUIP2_PAUSE:
pause
BRAWL_EQUIP2:
	echo
	echo BRAWL_EQUIP2:
	echo
	match BRA_BRAWL you draw
	match BRA_BRAWL re already holding
	match BEGIN_HANDS free hand
	match BRA_BRAWL free to
	matchre BRAWL_EQUIP3 /out of reach|remove|What were you|can't seem|Wield what\?/i
	match BEGIN_NOWEAP You can only wield a weapon or a shield!
	match BRAWL_EQUIP2_PAUSE ...wait
	match BRAWL_EQUIP2_PAUSE type ahead
put wield right my %1
	matchwait


BRAWL_EQUIP3:
	echo
	echo BRAWL_EQUIP3:
	echo
	match BRAWL_EQUIP4 remove what?
	match BRA_BRAWL re already
	match BRA_BRAWL inventory
	match BRA_BRAWL you sling
	match BRA_BRAWL you remove
put remove my %1
	matchwait


BRAWL_EQUIP4:
	echo
	echo BRAWL_EQUIP4:
	echo
	match BRAWL_BALDRIC2 baldric
	match BRA_BRAWL you get
	match BEGIN_NOWEAP What were you
put get my %1
	matchwait

BRAWL_BALDRIC2:
	echo
	echo BRAWL_BALDRIC2:
	echo
setvariable zHget ON
setvariable zHgetA in my baldric
goto BRA_BRAWL

BRAWL_APPRAISE:
	echo
	echo BRAWL_APPRAISE:
	echo
	match BRA_BRAWL_PAUSE weapon.
	match BRAWL_SWAP2 hinderance
	match BRA_BRAWL_PAUSE roundtime
put appraise my %1
	matchwait

BRAWL_APPRAISEL:
	echo
	echo BRAWL_APPRAISEL:
	echo
setvariable zHbrawltype SHIELD
	match BRAWL_SWAP1 weapon.
	match BRA_BRAWL_PAUSE hinderance
	match BRA_BRAWL_PAUSE roundtime
put appraise my %1
	matchwait

BRAWL_SWAP1:
	echo
	echo BRAWL_SWAP1:
	echo
setvariable zHbrawltype WEAPON
put swap
waitfor you
goto BRA_BRAWL

BRAWL_SWAP2:
	echo
	echo BRAWL_SWAP2:
	echo
setvariable zHbrawltype SHIELD
put swap
waitfor you


BRA_BRAWL_PAUSE:
pause
BRA_BRAWL:
	echo
	echo BRA_BRAWL:
	echo
goto %c

AMBUSH_HIDE_PAUSE:
pause
AMBUSH_HIDE:
goto AMBUSH_HIDE_%zHmulti
AMBUSH_HIDE_OFF:
	echo
	echo AMBUSH_HIDE_OFF:
	echo
	match AMBUSH_HIDE fail
	matchre AMBUSH_RETREAT1 /You are too close|notices|discovers/i
	matchre AMBUSH_ADV /You melt|You blend|Eh\?/i
	matchre AMBUSH_HIDE_PAUSE /\.\.\.wait|type ahead/i
	match AMBUSH_HIDE_PAUSE type ahead
put hide
	matchwait


AMBUSH_HIDE_ON:
	echo
	echo AMBUSH_HIDE_ON:
	echo
#Welsh	match AMBUSH_HIDE fail
#Welsh	matchre AMBUSH_RETREAT1 /You are too close|notices|discovers/i
#Welsh	matchre AMBUSH_ADV /You melt|You blend|Eh\?/i
#Welsh	matchre AMBUSH_HIDE_PAUSE /\.\.\.wait|type ahead/i
#Welsh	match AMBUSH_HIDE_PAUSE type ahead
#Welshput hide
#Welsh	matchwait
	match AMBUSH_HIDE fail
	matchre AMBUSH_RETREAT1 /You are too close|notices|discovers/i
	matchre AMBUSH_RETREAT /You melt|You blend|Eh\?/i
	matchre AMBUSH_HIDE_PAUSE /\.\.\.wait|type ahead/i
	match AMBUSH_HIDE_PAUSE type ahead
put hide
	matchwait

AMBUSH_RETREAT_1:
counter subtract 10
goto AMBUSH_HIDE

AMBUSH_RETREAT_2:
counter add 20
goto AMBUSH_HIDE

AMBUSH_RETREAT_3:
counter add 30
goto AMBUSH_HIDE

AMBUSH_RETREAT_4:
counter add 40
goto AMBUSH_HIDE

AMBUSH_RETREAT_5:
counter add 50
goto AMBUSH_HIDE

AMBUSH_RETREAT_6:
counter add 60
goto AMBUSH_HIDE

AMBUSH_RETREAT_PAUSE:
pause
AMBUSH_RETREAT:
	echo
	echo AMBUSH_RETREAT:
	echo
	match AMBUSH_FAIL You cannot back away from a chance to continue your slaughter
	matchre AMBUSH_ADV /You sneak|roundtime|already/i
	match AMBUSH_RETREAT2 You retreat
	match AMBUSH_RETREAT stop advancing
	match AMBUSH_RETREAT_PAUSE ...wait
	match AMBUSH_RETREAT_PAUSE type ahead
	match FATIGUE_STAND You must stand first.
put retreat
	matchwait

AMBUSH_RETREAT1_PAUSE:
pause
AMBUSH_RETREAT1:
	echo
	echo AMBUSH_RETREAT1:
	echo
	match AMBUSH_FAIL You cannot back away from a chance to continue your slaughter
	match AMBUSH_ADV You sneak
	match AMBUSH_RETREAT11_PAUSE roundtime
	match AMBUSH_RETREAT2 already
	match AMBUSH_RETREAT2 You retreat
	match AMBUSH_RETREAT1 stop advancing
	match AMBUSH_RETREAT1_PAUSE ...wait
	match AMBUSH_RETREAT1_PAUSE type ahead
	match FATIGUE_STAND You must stand first.
put retreat
	matchwait

AMBUSH_RETREAT11_PAUSE:
pause
AMBUSH_RETREAT11:
	echo
	echo AMBUSH_RETREAT11:
	echo
	match AMBUSH_FAIL You cannot back away from a chance to continue your slaughter
	match AMBUSH_FAIL roundtime
	match AMBUSH_RETREAT2 already
	match AMBUSH_RETREAT2 You retreat
	match AMBUSH_RETREAT2 You sneak back
	match AMBUSH_RETREAT11_PAUSE ...wait
	match AMBUSH_RETREAT11_PAUSE type ahead
	match FATIGUE_STAND You must stand first.
put retreat
	matchwait


AMBUSH_FACE1:
counter subtract 10
goto AMBUSH_FACE


AMBUSH_FACE2:
counter add 20
goto AMBUSH_FACE


AMBUSH_FACE3:
counter add 30
goto AMBUSH_FACE


AMBUSH_FACE4:
counter add 40
goto AMBUSH_FACE

AMBUSH_FACE5:
counter add 50
goto AMBUSH_FACE


AMBUSH_FACE6:
counter add 60
goto AMBUSH_FACE

AMBUSH_FACE_PAUSE:
pause
AMBUSH_FACE:
	match AMBUSH_FACE_PAUSE type ahead
	match AMBUSH_FACE_PAUSE ...wait
	match AMBUSH_ASSESS_ADV nothing else to
	match AMBUSH_ADV you turn
put face next
	matchwait

AMBUSH_ASSESS_ADV:
	match AMBUSH_FACE You stop advancing
	match NOTHING advance towards?
	match AMBUSH_ADV begin
	match AMBUSH_FACE You have lost sight
	match AMBUSH_FAIL to melee range
	match AMBUSH_FAIL [You're
	match AMBUSH_FAIL already at melee
put advance
	matchwait

AMBUSH_NOTHING:
pause 3
wait
	goto AMBUSH_FACE

AMBUSH_RETREAT2_PAUSE:
pause
AMBUSH_RETREAT2:
	echo
	echo AMBUSH_RETREAT2:
	echo
	matchre AMBUSH_FAIL /discovers|notices|fail|You are too close/i
	matchre AMBUSH_ADV /You melt|You blend|Eh\?/i
	matchre AMBUSH_RETREAT2_PAUSE /\.\.\.wait|type ahead/i
put hide
	matchwait

AMBUSH_ADV1:
counter subtract 10
goto AMBUSH_ADV

AMBUSH_ADV2:
counter add 20
goto AMBUSH_ADV

AMBUSH_ADV3:
counter add 30
goto AMBUSH_ADV

AMBUSH_ADV4:
counter add 40
goto AMBUSH_ADV

AMBUSH_ADV5:
counter add 50
goto AMBUSH_ADV

AMBUSH_ADV6:
counter add 60
goto AMBUSH_ADV

AMBUSH_ADV7:
counter add 70
goto AMBUSH_ADV

AMBUSH_ADV_PAUSE:
pause
AMBUSH_ADV:
	echo
	echo AMBUSH_ADV:
	echo
	match AMBUSH_HIDE discovers
	match AMBUSH_HIDE notices
	match AMBUSH_HIDE fail
	match AMBUSH_STALK melee
	match AMBUSH_NOTHING What do you want to advance towards?
	match AMBUSH_ADV_PAUSE you stop advancing
	match AMBUSH_ADV_PAUSE ...wait
	match AMBUSH_ADV_PAUSE type ahead
put advance
	matchwait

AMBUSH_STALK_PAUSE:
pause
AMBUSH_STALK:
	echo
	echo AMBUSH_STALK:
	echo
	match AMBUSH_FAIL discovers
	match AMBUSH_FAIL notices
	match AMBUSH_ADV nothing else
	match %c You move into position
	match %c already stalking
	match %c Don't be silly
	match AMBUSH_HIDE trying to stalk
	match AMBUSH_HIDE try being out of sight
	match AMBUSH_STALK2 You fail
	match AMBUSH_STALK_PAUSE ...wait
	match AMBUSH_STALK_PAUSE type ahead
put stalk
	matchwait

AMBUSH_STALK2_PAUSE:
pause
AMBUSH_STALK2:
	echo
	echo AMBUSH_STALK2:
	echo
	match AMBUSH_FAIL discovers
	match AMBUSH_FAIL notices
	match AMBUSH_ADV nothing else
	match %c You move into position
	match %c already stalking
	match %c Don't be silly
	match AMBUSH_HIDE trying to stalk
	match AMBUSH_HIDE try being out of sight
	match AMBUSH_STALK3 You fail
	match AMBUSH_STALK2_PAUSE ...wait
	match AMBUSH_STALK2_PAUSE type ahead
put stalk
	matchwait

AMBUSH_STALK3_PAUSE:
pause
AMBUSH_STALK3:
	echo
	echo AMBUSH_STALK3:
	echo
	match AMBUSH_FAIL discovers
	match AMBUSH_FAIL notices
	match AMBUSH_ADV nothing else
	match %c You move into position
	match %c already stalking
	match %c Don't be silly
	match AMBUSH_HIDE trying to stalk
	match AMBUSH_HIDE try being out of sight
	match AMBUSH_STALK4 You fail
	match AMBUSH_STALK3_PAUSE ...wait
	match AMBUSH_STALK3_PAUSE type ahead
put stalk
	matchwait

AMBUSH_STALK4_PAUSE:
pause
AMBUSH_STALK4:
	echo
	echo AMBUSH_STALK4:
	echo
	match AMBUSH_FAIL discovers
	match AMBUSH_FAIL notices
	match AMBUSH_ADV nothing else
	match %c You move into position
	match %c already stalking
	match %c Don't be silly
	match AMBUSH_HIDE trying to stalk
	match AMBUSH_HIDE try being out of sight
	match AMBUSH_STALK5 You fail
	match AMBUSH_STALK4_PAUSE ...wait
	match AMBUSH_STALK4_PAUSE type ahead
put stalk
	matchwait

AMBUSH_STALK5:
pause
goto %c


AMBUSH_STAND_PAUSE:
pause
AMBUSH_STAND:
	echo
	echo AMBUSH_STAND:
	echo
	match AMBUSH_STAND_PAUSE roundtime
	match AMBUSH_HIDE You stand back up.
	match AMBUSH_STAND_PAUSE ...wait
	match AMBUSH_STAND_PAUSE type ahead
put stand
	matchwait

AMBUSH_FAIL:
	echo
	echo AMBUSH_FAIL:
	echo
counter subtract 1000
save %c
counter add 1000
goto %s

1400:
counter add 10
1410:
counter add 10
goto COMBO_EXP_%zHexpC

EXP_1421:
EXP_1420:
AMB_COMBO_4_1:
	echo
	echo AMB_COMBO_4_1: %zHcombo1
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	match AMBUSH_ADV1 aren't close enough
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	match AMBUSH_FACE1 nothing else
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

1420:
counter add 10
AMB_COMBO_4_2:
	echo
	echo AMB_COMBO_4_2: %zHcombo2
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2
	matchwait

1430:
counter add 10
AMB_COMBO_4_3:
	echo
	echo AMB_COMBO_4_3: %zHcombo3
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3
	matchwait

1440:
counter subtract 30
AMB_COMBO_4_4:
	echo
	echo AMB_COMBO_4_4: %zHcombo4
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4
	matchwait

1500:
counter add 10
1510:
counter add 10
goto COMBO_EXP_%zHexpC

EXP_1521:
EXP_1520:
AMB_COMBO_5_1:
	echo
	echo AMB_COMBO_5_1: %zHcombo1
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	match AMBUSH_ADV1 aren't close enough
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	match AMBUSH_FACE1 nothing else
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

1520:
counter add 10
AMB_COMBO_5_2:
	echo
	echo AMB_COMBO_5_2: %zHcombo2
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2
	matchwait

1530:
counter add 10
AMB_COMBO_5_3:
	echo
	echo AMB_COMBO_5_3: %zHcombo3
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3
	matchwait

1540:
counter add 10
AMB_COMBO_5_4:
	echo
	echo AMB_COMBO_5_4: %zHcombo4
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4
	matchwait

1550:
counter subtract 40
AMB_COMBO_5_5:
	echo
	echo AMB_COMBO_5_5: %zHcombo5
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV4 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE4 nothing else
	matchre PAUSE4 /\.\.\.wait|type ahead/i
	match STUN4 You are still stunned.
put %zHcombo5
	matchwait

1600:
counter add 10
1610:
counter add 10
goto COMBO_EXP_%zHexpC

EXP_1621:
EXP_1620:
AMB_COMBO_6_1:
	echo
	echo AMB_COMBO_6_1: %zHcombo1
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	match AMBUSH_ADV1 aren't close enough
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	match AMBUSH_FACE1 nothing else
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

1620:
counter add 10
AMB_COMBO_6_2:
	echo
	echo AMB_COMBO_6_2: %zHcombo2
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2
	matchwait

1630:
counter add 10
AMB_COMBO_6_3:
	echo
	echo AMB_COMBO_6_3: %zHcombo3
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3
	matchwait

1640:
counter add 10
AMB_COMBO_6_4:
	echo
	echo AMB_COMBO_6_4: %zHcombo4
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4
	matchwait

1650:
counter add 10
AMB_COMBO_6_5:
	echo
	echo AMB_COMBO_6_5: %zHcombo5
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo5
	matchwait

1660:
counter subtract 50
AMB_COMBO_6_6:
	echo
	echo AMB_COMBO_6_6: %zHcombo6
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV5 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE5 nothing else
	matchre PAUSE5 /\.\.\.wait|type ahead/i
	match STUN5 You are still stunned.
put %zHcombo6
	matchwait

1700:
counter add 10
1710:
counter add 10
goto COMBO_EXP_%zHexpC

EXP_1721:
EXP_1720:
AMB_COMBO_7_1:
	echo
	echo AMB_COMBO_7_1: %zHcombo1
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	match AMBUSH_ADV1 aren't close enough
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	match AMBUSH_FACE1 nothing else
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

1720:
counter add 10
AMB_COMBO_7_2:
	echo
	echo AMB_COMBO_7_2: %zHcombo2
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2
	matchwait

1730:
counter add 10
AMB_COMBO_7_3:
	echo
	echo AMB_COMBO_7_3: %zHcombo3
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3
	matchwait

1740:
counter add 10
AMB_COMBO_7_4:
	echo
	echo AMB_COMBO_7_4: %zHcombo4
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4
	matchwait

1750:
counter add 10
AMB_COMBO_7_5:
	echo
	echo AMB_COMBO_7_5: %zHcombo5
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo5
	matchwait

1760:
counter add 10
AMB_COMBO_7_6:
	echo
	echo AMB_COMBO_7_6: %zHcombo6
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo6
	matchwait

1770:
counter subtract 60
AMB_COMBO_7_7:
	echo
	echo AMB_COMBO_7_7: %zHcombo7
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV6 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE6 nothing else
	matchre PAUSE6 /\.\.\.wait|type ahead/i
	match STUN6 You are still stunned.
put %zHcombo7
	matchwait

1800:
counter add 10
1810:
counter add 10
goto COMBO_EXP_%zHexpC

EXP_1821:
EXP_1820:
AMB_COMBO_8_1:
	echo
	echo AMB_COMBO_8_1: %zHcombo1
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	match AMBUSH_ADV1 aren't close enough
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	match AMBUSH_FACE1 nothing else
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

1820:
counter add 10
AMB_COMBO_8_2:
	echo
	echo AMB_COMBO_8_2: %zHcombo2
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2
	matchwait

1830:
counter add 10
AMB_COMBO_8_3:
	echo
	echo AMB_COMBO_8_3: %zHcombo3
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3
	matchwait

1840:
counter add 10
AMB_COMBO_8_4:
	echo
	echo AMB_COMBO_8_4: %zHcombo4
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4
	matchwait

1850:
counter add 10
AMB_COMBO_8_5:
	echo
	echo AMB_COMBO_8_5: %zHcombo5
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo5
	matchwait

1860:
counter add 10
AMB_COMBO_8_6:
	echo
	echo AMB_COMBO_8_6: %zHcombo6
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo6
	matchwait

1870:
counter add 10
AMB_COMBO_8_7:
	echo
	echo AMB_COMBO_8_7: %zHcombo7
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo7
	matchwait

1880:
counter subtract 70
AMB_COMBO_8_8:
	echo
	echo AMB_COMBO_8_8: %zHcombo8
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV7 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE7 nothing else
	matchre PAUSE7 /\.\.\.wait|type ahead/i
	match STUN7 You are still stunned.
put %zHcombo8
	matchwait

1401:
counter add 10
1411:
counter add 10
AMB_COMBO_4_1:
	echo
	echo AMB_COMBO_4_1: %zHcombo1
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	match AMBUSH_ADV1 aren't close enough
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	match AMBUSH_FACE1 nothing else
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

1421:
counter add 10
AMB_COMBO_4_2:
	echo
	echo AMB_COMBO_4_2: %zHcombo2
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2 head
	matchwait

1431:
counter add 10
AMB_COMBO_4_3:
	echo
	echo AMB_COMBO_4_3: %zHcombo3
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3 head
	matchwait

1441:
counter add 10
AMB_COMBO_4_4:
	echo
	echo AMB_COMBO_4_4: %zHcombo4
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4 head
	matchwait

1501:
counter add 10
1511:
counter add 10
AMB_COMBO_5_1:
	echo
	echo AMB_COMBO_5_1: %zHcombo1
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	match AMBUSH_ADV1 aren't close enough
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	match AMBUSH_FACE1 nothing else
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

1521:
counter add 10
AMB_COMBO_5_2:
	echo
	echo AMB_COMBO_5_2: %zHcombo2
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2 head
	matchwait

1531:
counter add 10
AMB_COMBO_5_3:
	echo
	echo AMB_COMBO_5_3: %zHcombo3
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3 head
	matchwait

1541:
counter add 10
AMB_COMBO_5_4:
	echo
	echo AMB_COMBO_5_4: %zHcombo4
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4 head
	matchwait

1551:
counter subtract 40
AMB_COMBO_5_5:
	echo
	echo AMB_COMBO_5_5: %zHcombo5
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV4 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE4 nothing else
	matchre PAUSE4 /\.\.\.wait|type ahead/i
	match STUN4 You are still stunned.
put %zHcombo5 head
	matchwait

1601:
counter add 10
1611:
counter add 10
AMB_COMBO_6_1:
	echo
	echo AMB_COMBO_6_1: %zHcombo1
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	match AMBUSH_ADV1 aren't close enough
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	match AMBUSH_FACE1 nothing else
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

1621:
counter add 10
AMB_COMBO_6_2:
	echo
	echo AMB_COMBO_6_2: %zHcombo2
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2 head
	matchwait

1631:
counter add 10
AMB_COMBO_6_3:
	echo
	echo AMB_COMBO_6_3: %zHcombo3
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3 head
	matchwait

1641:
counter add 10
AMB_COMBO_6_4:
	echo
	echo AMB_COMBO_6_4: %zHcombo4
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4 head
	matchwait

1651:
counter add 10
AMB_COMBO_6_5:
	echo
	echo AMB_COMBO_6_5: %zHcombo5
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo5 head
	matchwait

1661:
counter subtract 50
AMB_COMBO_6_6:
	echo
	echo AMB_COMBO_6_6: %zHcombo6
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV5 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE5 nothing else
	matchre PAUSE5 /\.\.\.wait|type ahead/i
	match STUN5 You are still stunned.
put %zHcombo6 head
	matchwait

1701:
counter add 10
1711:
counter add 10
AMB_COMBO_7_1:
	echo
	echo AMB_COMBO_7_1: %zHcombo1
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	match AMBUSH_ADV1 aren't close enough
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	match AMBUSH_FACE1 nothing else
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

1721:
counter add 10
AMB_COMBO_7_2:
	echo
	echo AMB_COMBO_7_2: %zHcombo2
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2 head
	matchwait

1731:
counter add 10
AMB_COMBO_7_3:
	echo
	echo AMB_COMBO_7_3: %zHcombo3
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3 head
	matchwait

1741:
counter add 10
AMB_COMBO_7_4:
	echo
	echo AMB_COMBO_7_4: %zHcombo4
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4 head
	matchwait

1751:
counter add 10
AMB_COMBO_7_5:
	echo
	echo AMB_COMBO_7_5: %zHcombo5
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo5 head
	matchwait

1761:
counter add 10
AMB_COMBO_7_6:
	echo
	echo AMB_COMBO_7_6: %zHcombo6
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo6
	matchwait

1771:
counter subtract 60
AMB_COMBO_7_7:
	echo
	echo AMB_COMBO_7_7: %zHcombo7
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV6 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE6 nothing else
	matchre PAUSE6 /\.\.\.wait|type ahead/i
	match STUN6 You are still stunned.
put %zHcombo7 head
	matchwait

1801:
counter add 10
1811:
counter add 10
AMB_COMBO_8_1:
	echo
	echo AMB_COMBO_8_1: %zHcombo1
	echo
#Patricia	matchre KHRI /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
#Patricia	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
#Patricia	match AMBUSH_ADV1 aren't close enough
#Patricia	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
#Patricia	match AMBUSH_FACE1 nothing else
#Patricia	matchre PAUSE1 /\.\.\.wait|type ahead/i
#Patricia	match STUN1 You are still stunned.
#Patriciaput %zHcombo1
#Patricia	matchwait
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo1
	matchwait

1821:
counter add 10
AMB_COMBO_8_2:
	echo
	echo AMB_COMBO_8_2: %zHcombo2
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo2 head
	matchwait

1831:
counter add 10
AMB_COMBO_8_3:
	echo
	echo AMB_COMBO_8_3: %zHcombo3
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo3 head
	matchwait

1841:
counter add 10
AMB_COMBO_8_4:
	echo
	echo AMB_COMBO_8_4: %zHcombo4
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo4 head
	matchwait

1851:
counter add 10
AMB_COMBO_8_5:
	echo
	echo AMB_COMBO_8_5: %zHcombo5
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo5 head
	matchwait

1861:
counter add 10
AMB_COMBO_8_6:
	echo
	echo AMB_COMBO_8_6: %zHcombo6
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo6 head
	matchwait

1871:
counter add 10
AMB_COMBO_8_7:
	echo
	echo AMB_COMBO_8_7: %zHcombo7
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV1 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE1 nothing else
	matchre PAUSE1 /\.\.\.wait|type ahead/i
	match STUN1 You are still stunned.
put %zHcombo7 head
	matchwait

1881:
counter subtract 70
AMB_COMBO_8_8:
	echo
	echo AMB_COMBO_8_8: %zHcombo8
	echo
	matchre AMBUSH_HIDE /already in a position|But you are already dodging|You move into a position to|roundtime|pointlessly hack/i
	matchre FATIGUE /\[You're beat,|\[You're exhausted|\[You're bone-tired/i
	match AMBUSH_ADV7 aren't close enough
	matchre DEAD_MONSTER /balanced\]|balance\]|already dead|very dead/i
	match AMBUSH_FACE7 nothing else
	matchre PAUSE7 /\.\.\.wait|type ahead/i
	match STUN7 You are still stunned.
put %zHcombo8 head
	matchwait

2380:
2381:
2382:
2383:
counter subtract 10
2370:
2371:
2372:
2373:
counter subtract 10
2360:
2361:
2362:
2363:
counter subtract 10
2350:
2351:
2352:
2353:
counter subtract 10
2340:
2341:
2342:
2343:
counter subtract 10
2330:
2331:
2332:
2333:
counter subtract 10
2320:
2321:
2322:
2323:
counter subtract 10
2310:
2311:
2312:
2313:
counter subtract 10
2300:
2301:
2302:
2303:
goto prep
2290:
2291:
2292:
2293:
counter add 10
goto prep

PREP_PAUSE:
pause
PREP:
goto MAGIC_EXP_%zHexpC

MAGIC_EXP_ON:
goto MAGIC_MULTI_%zHmulti

MAGIC_MULTI_ON:
setvariable zHexpC MAGIC_CHECK
goto Multi_%zHmulti

MAGIC_MULTI_OFF:
put skill
wait
MULTI_EXP_MAGIC_CHECK:
setvariable zHexpC ON

MAGIC_EXP_OFF:
	echo
	echo PREP:
	echo
	matchre TARGET /fully prepared|already preparing/i
	match MAGIC_COMBAT have to strain
	matchre PREP_PAUSE /\.\.\.wait|type ahead/i
	match STUN stunned
put prep %zHspell %zHmana
	matchwait

TARGET_PAUSE:
pause
TARGET:
	echo
	echo TARGET:
	echo
	match FACE_TM not engaged
	matchre CAST_%zHm /The formation|Your target pattern|don't need to target/i
	match PREP Your patterns dissipate
	matchre TARGET_PAUSE /\.\.\.wait|type ahead/i
	match STUN stunned
put target
	matchwait

FACE_PAUSE:
pause
FACE_TM:
	echo
	echo FACE_TM:
	echo
	match TARGET you turn
	match FACE_ADV There is nothing
	match STUN stunned
put face next
	matchwait

FACE_ADV:
	match FACE_TM You stop advancing
	match FACE_TM2 advance towards?
	match FACE_TM You have lost sight
	matchre TARGET /to melee range|\[You're|already at melee|begin/i
put ADV
	matchwait

FACE_TM2:
put rel spell
goto NOTHING
	
CAST_PM:
	echo
	echo CAST_PM:
	echo
	matchre MAGIC_DEATH_%zHexpB /You gesture|You reach|roundtime/i
	match MAGIC_DEATH_REL because your target is dead
	match STUN stunned
	match FACE_TM on yourself!
	match PREP You don't
put cast
	matchwait


CAST_TM:
	echo
	echo CAST_TM:
	echo
	matchre MAGIC_RETREAT /You gesture|You reach|roundtime/i
	match MAGIC_DEATH_REL because your target is dead
	match TARGET Your secondary spell pattern dissipates
	match FACE_TM on yourself!
	match STUN stunned
	match PREP You don't
put cast
	matchwait

MAGIC_RETREAT_PAUSE:
pause
MAGIC_RETREAT:
	echo
	echo MAGIC_RETREAT:
	echo
	matchre MAGIC_DEATH_ON /You cannot back away from a chance to continue your slaughter|You retreat |re already|You think|roundtime|You sneak back/i
	matchre MAGIC_RETREAT_PAUSE /stop advancing|\.\.\.wait|type ahead/i
	match STUN stunned
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

MAGIC_DEATH_REL:
put rel spell
wait
goto DEAD_MONSTER

MAGIC_DEATH_OFF_PAUSE:
pause
MAGIC_DEATH_OFF:
	matchre DEAD_MONSTER /which appears dead|\(dead\)/i
	matchre MAGIC_COMBAT2 /paths:|exits:|and you can't see a thing|Your world is a crimson haze/i
	match MAGIC_DEATH_OFF_PAUSE ...wait
	match MAGIC_DEATH_OFF_PAUSE type ahead
	match STUN stunned
put look other
	matchwait

MAGIC_DEATH_ON_PAUSE:
pause
MAGIC_DEATH_ON:
	matchre DEAD_MONSTER /which appears dead|\(dead\)/i
	matchre PREP /paths:|exits:|and you can't see a thing|Your world is a crimson haze/i
	match MAGIC_DEATH_ON_PAUSE ...wait
	match MAGIC_DEATH_ON_PAUSE type ahead
	match STUN stunned
put look other
	matchwait

MAGIC_COMBAT:
put rel spell
wait
MAGIC_COMBAT2:
	matchre %zHmc /melee|pole|\[You're|on you/i
	match FACE to advance towards
put adv
	matchwait

2480:
2481:
2482:
2483:
counter subtract 10
2470:
2471:
2472:
2473:
counter subtract 10
2460:
2461:
2462:
2463:
counter subtract 10
2450:
2451:
2452:
2453:
counter subtract 10
2440:
2441:
2442:
2443:
counter subtract 10
2430:
2431:
2432:
2433:
counter subtract 10
2420:
2421:
2422:
2423:
counter subtract 10
2410:
2411:
2412:
2413:
counter subtract 10
2400:
2401:
2402:
2403:
goto SN_PREP
2390:
2391:
2392:
2393:

counter add 10
goto SN_PREP

SN_PREP_PAUSE:
pause
SN_PREP:
goto SN_MAGIC_EXP_%zHexpC

SN_MAGIC_EXP_ON:
goto SN_MAGIC_MULTI_%zHmulti

SN_MAGIC_MULTI_ON:
setvariable zHexpC MAGIC_CHECK
goto SN_SN_Multi_%zHmulti

SN_MAGIC_MULTI_OFF:
put skill
wait
SN_MULTI_EXP_MAGIC_CHECK:
setvariable zHexpC ON

SN_MAGIC_EXP_OFF:
	echo
	echo SN_PREP:
	echo
	matchre SN_TARGET /fully prepared|already preparing/i
	match SN_MAGIC_COMBAT have to strain
	matchre SN_PREP_PAUSE /\.\.\.wait|type ahead/i
	match STUN stunned
put prep %zHspell %zHmana
	matchwait

SN_TARGET_PAUSE:
pause
SN_TARGET:
	echo
	echo SN_TARGET:
	echo
	match SN_FACE_TM not engaged
	matchre SN_MAGIC_RETREAT /You gesture|You reach|roundtime/i
	match SN_MAGIC_DEATH_REL because your target is dead
	match SN_FACE_TM on yourself!
	match STUN stunned
	match SN_PREP You don't
put target
put cast
	matchwait

SN_FACE_PAUSE:
pause
SN_FACE_TM:
	echo
	echo SN_FACE_TM:
	echo
	match SN_TARGET you turn
	match FACE_ADV There is nothing
	match STUN stunned
put face next
	matchwait

SN_FACE_ADV:
	match SN_FACE_TM You stop advancing
	match SN_FACE_TM2 advance towards?
	match SN_FACE_TM You have lost sight
	matchre SN_TARGET /to melee range|\[You're|already at melee|begin/i
put ADV
	matchwait

SN_FACE_TM2:
put rel spell
goto NOTHING
	
SN_CAST_PM:
	echo
	echo SN_CAST_PM:
	echo
	matchre SN_MAGIC_COMBAT2 /You gesture|You reach|roundtime/i
	match STUN stunned
	match SN_FACE_TM on yourself!
	match SN_PREP You don't
put cast
	matchwait


SN_CAST_TM:
	echo
	echo SN_CAST_TM:
	echo
	matchre SN_MAGIC_RETREAT /You gesture|You reach|roundtime/i
	match SN_MAGIC_DEATH_REL because your target is dead
	match SN_FACE_TM on yourself!
	match STUN stunned
	match SN_PREP You don't
put cast
	matchwait

SN_MAGIC_RETREAT_PAUSE:
pause
SN_MAGIC_RETREAT:
	echo
	echo SN_MAGIC_RETREAT:
	echo
	matchre SN_MAGIC_DEATH /You cannot back away from a chance to continue your slaughter|You retreat from combat|re already|You think|You sneak back/i
	match SN_MAGIC_DEATH_PAUSE roundtime
	matchre SN_MAGIC_RETREAT_PAUSE /stop advancing|\.\.\.wait|type ahead/i
	match STUN stunned
	match FATIGUE_STAND You must stand first.
put retreat
put retreat
	matchwait

SN_MAGIC_DEATH_REL:
put rel spell
wait
goto DEAD_MONSTER

SN_MAGIC_DEATH_PAUSE:
pause
SN_MAGIC_DEATH:
	matchre DEAD_MONSTER /which appears dead|\(dead\)/i
	matchre SN_PREP /paths:|exits:|and you can't see a thing|Your world is a crimson haze/i
	match SN_MAGIC_DEATH_PAUSE ...wait
	match SN_MAGIC_DEATH_PAUSE type ahead
	match STUN stunned
put look other
	matchwait

SN_MAGIC_COMBAT:
put rel spell
wait
SN_MAGIC_COMBAT2:
	matchre %zHmc /melee|pole|\[You're|on you/i
	match FACE to advance towards
put adv
	matchwait

DEAD_MONSTER:
	echo
	echo DEAD_MONSTER:
	echo
	echo
goto EXPC_%zHexpC

EXPC_ON:
put skill
wait
EXPC_OFF:
setvariable zHcounter %c
counter set 0
counter set %zHkills
counter add 1
setvariable zHkills %c
counter set 0
counter set %zHkillsS
counter add 1
setvariable zHkillsS %c
counter set %zHcounter

goto %zHmonster

Monsterlist:
%EZmonster:
%zHmonster:
#33/32
MONSTER1:
MONSTER_GROUP_1:
echo
echo MONSTER1:
echo
setvariable zHmonster MONSTER1B
	matchre TROLL_2 /wood troll (which appears dead|\(dead\))/i
	matchre GOBLIN /goblin (which appears dead|\(dead\))/i
	matchre HOG /musk hog (which appears dead|\(dead\))/i
	matchre MADMAN /crazed madman (which appears dead|\(dead\))/i
	matchre GRENDEL /grendel (which appears dead|\(dead\))/i
	matchre COUGAR /cougar (which appears dead|\(dead\))/i
	matchre RAM /ram (which appears dead|\(dead\))/i
	matchre DRYAD / dryad (which appears dead|\(dead\))/i
	matchre NYAD / nyad (which appears dead|\(dead\))/i
	matchre BOGGLE /boggle (which appears dead|\(dead\))/i
	matchre KOBOLD /kobold (which appears dead|\(dead\))/i
	matchre JACKAL /jackal (which appears dead|\(dead\))/i
	matchre TROLL /troll (which appears dead|\(dead\))/i
	matchre EEL /grass eel (which appears dead|\(dead\))/i
	matchre SHAMAN /goblin shaman (which appears dead|\(dead\))/i
	matchre BOAR /boar (which appears dead|\(dead\))/i
	matchre KELPIE /kelpie (which appears dead|\(dead\))/i
	matchre CREEPER /creeper (which appears dead|\(dead\))/i
	matchre VINES /morah vine (which appears dead|\(dead\))/i
	matchre MARAUDER /gypsy marauder (which appears dead|\(dead\))/i
	matchre OGRE /ogre (which appears dead|\(dead\))/i
	matchre BEAR /black bear (which appears dead|\(dead\))/i
	matchre WOLF /blood wolf (which appears dead|\(dead\))/i
	matchre BOBCAT /bobcat (which appears dead|\(dead\))/i
	matchre ARBELOG /arbelog (which appears dead|\(dead\))/i
	matchre RAT /rat (which appears dead|\(dead\))/i
	matchre SPIDER /spider (which appears dead|\(dead\))/i
	matchre BOOBRIE /boobrie (which appears dead|\(dead\))/i
	matchre MOTH /moth (which appears dead|\(dead\))/i
	matchre LARVA /larva (which appears dead|\(dead\))/i
	matchre WASP /wasp (which appears dead|\(dead\))/i
	matchre MONSTER2 /paths:|exits:/i
	matchre SKIN_VARI_CHECK /and you can't see a thing|Your world is a crimson haze/i
put look other
	matchwait

# 32/32
MONSTER2:
MONSTER_GROUP_2:
echo
echo MONSTER2:
echo
setvariable zHmonster MONSTER2B
	matchre MAULER /warklin mauler (which appears dead|\(dead\))/i
	matchre SILVERFISH /silverfish (which appears dead|\(dead\))/i
	matchre WARKLIN /armored warklin (which appears dead|\(dead\))/i
	matchre BEISWURM /beisswurm (which appears dead|\(dead\))/i
	matchre BEAR /cave bear (which appears dead|\(dead\))/i
	matchre PARD /golden pard (which appears dead|\(dead\))/i
	matchre BISON /bison (which appears dead|\(dead\))/i
	matchre ANTELOPE /antelope (which appears dead|\(dead\))/i
	matchre ARZUMOS /clouded arzumos (which appears dead|\(dead\))/i
	matchre PRIESTESS /dragon priestess (which appears dead|\(dead\))/i
	matchre PECCARY /small peccary (which appears dead|\(dead\))/i
	matchre SERPENT /serpent (which appears dead|\(dead\))/i
	matchre FIRECAT /firecat (which appears dead|\(dead\))/i
	matchre MAIDEN /maiden (which appears dead|\(dead\))/i
	matchre WESTANURYN /mottled westanuryn (which appears dead|\(dead\))/i
	matchre ATI'ETS /sealed ati'ets (which appears dead|\(dead\))/i
	matchre MIHMANAN /olensari mihmanan (which appears dead|\(dead\))/i
	matchre STALKER /faenrae stalker (which appears dead|\(dead\))/i
	matchre CUTTHROAT /cutthroat (which appears dead|\(dead\))/i
	matchre FOOTPAD /footpad (which appears dead|\(dead\))/i
	matchre RUFFIAN /ruffian (which appears dead|\(dead\))/i
	matchre THUG /thug (which appears dead|\(dead\))/i
	matchre VIPER /viper (which appears dead|\(dead\))/i
	matchre LEUCRO /leucro (which appears dead|\(dead\))/i
	matchre REAVER /faenrae reaver (which appears dead|\(dead\))/i
	matchre HOUND_2 /wind hound (which appears dead|\(dead\))/i
	matchre BADGER /badger (which appears dead|\(dead\))/i
	matchre TROLLKIN /trollkin (which appears dead|\(dead\))/i
	matchre POTHANIT /croff pothanit (which appears dead|\(dead\))/i
	matchre GHOUL /ghoul (which appears dead|\(dead\))/i
	matchre INKHORNE /inkhorne (which appears dead|\(dead\))/i
	matchre MONSTER3 /paths:|exits:/i
	matchre SKIN_VARI_CHECK /and you can't see a thing|Your world is a crimson haze/i
put look other
	matchwait

# 32/32
MONSTER3:
MONSTER_GROUP_3:
echo
echo MONSTER3:
echo
setvariable zHmonster MONSTER3B
	matchre GARGOYLE /gargoyle (which appears dead|\(dead\))/i
	matchre SNOWBEAST /snowbeast (which appears dead|\(dead\))/i
	matchre SPIRIT /death spirit (which appears dead|\(dead\))/i
	matchre SKUNK /skunk (which appears dead|\(dead\))/i
	matchre SHADOWEAVER /shadoweaver (which appears dead|\(dead\))/i
	matchre FROSTWEAVER /frostweaver (which appears dead|\(dead\))/i
	matchre FIEND /dark fiend (which appears dead|\(dead\))/i
	matchre SPIRIT /dark spirit (which appears dead|\(dead\))/i
	matchre PIRATE /pirate (which appears dead|\(dead\))/i
	matchre GOBLIN /snow goblin (which appears dead|\(dead\))/i
	matchre GRUB /corpse grub (which appears dead|\(dead\))/i
	matchre BURROWER /burrower (which appears dead|\(dead\))/i
	matchre SPRITE /water sprite (which appears dead|\(dead\))/i
	matchre LIPOPOD /glutinous lipopod (which appears dead|\(dead\))/i
	matchre SKELETON /skeleton (which appears dead|\(dead\))/i
	matchre PSUEDOPOD /slimy psuedopod (which appears dead|\(dead\))/i
	matchre ZOMBIE /zombie (which appears dead|\(dead\))/i
	matchre WOLF /bone wolf (which appears dead|\(dead\))/i
	matchre WORM /grave worm (which appears dead|\(dead\))/i
	matchre VULTURE /sun vulture (which appears dead|\(dead\))/i
	matchre KRA'HEI /kra'hei (which appears dead|\(dead\))/i
	matchre PECCARY /peccary (which appears dead|\(dead\))/i
	matchre TROLL_2 /swamp troll (which appears dead|\(dead\))/i
	matchre FENDRYAD /fendryad (which appears dead|\(dead\))/i
	matchre ELSRAEL /sinuous elsrael (which appears dead|\(dead\))/i
	matchre SLUAGH /lesser sluagh (which appears dead|\(dead\))/i
	matchre DYRACHIS /spiny dyrachis (which appears dead|\(dead\))/i
	matchre CROCODILE /crocodile (which appears dead|\(dead\))/i
	matchre SQUIRREL /squirrel (which appears dead|\(dead\))/i
	matchre ATIKET /atik'et (which appears dead|\(dead\))/i
	matchre MONSTER4 /paths:|exits:/i
	matchre SKIN_VARI_CHECK /and you can't see a thing|Your world is a crimson haze/i
put look other
	matchwait
#33/32
MONSTER4:
MONSTER_GROUP_4:
echo
echo MONSTER4:
echo
setvariable zHmonster MONSTER4B
	matchre FROG /frog (which appears dead|\(dead\))/i
	matchre MODA /moda (which appears dead|\(dead\))/i
	matchre HATCHLING /hatchling (which appears dead|\(dead\))/i
	matchre ANGISWAERD /marbled angiswaerd (which appears dead|\(dead\))/i
	matchre SPIDER /sand spider (which appears dead|\(dead\))/i
	matchre NOMAD /zombie nomad (which appears dead|\(dead\))/i
	matchre CRAB /salt crab (which appears dead|\(dead\))/i
	matchre SPRITE /sand sprite (which appears dead|\(dead\))/i
	matchre LA'HEKE /ochre la'heke (which appears dead|\(dead\))/i
	matchre MORURYN /dobek moruryn (which appears dead|\(dead\))/i
	matchre UNYN /unyn (which appears dead|\(dead\))/i
	matchre OSHU /oshu (which appears dead|\(dead\))/i
	matchre HHRKI'IZH /ur hhrki'izh (which appears dead|\(dead\))/i
	matchre DOLOMAR /retan dolomar (which appears dead|\(dead\))/i
	matchre POLOH'IZH /grey poloh'izh (which appears dead|\(dead\))/i
	matchre BOA /river boa (which appears dead|\(dead\))/i
	matchre HELE'LAS /sleek hele'las (which appears dead|\(dead\))/i
	matchre CELPEZE /asaren celpeze (which appears dead|\(dead\))/i
	matchre CARACAL /caracal (which appears dead|\(dead\))/i
	matchre LUN'SHELE /lun'shele (which appears dead|\(dead\))/i
	matchre RAIDER /raider (which appears dead|\(dead\))/i
	matchre CLANCHIEF /raider (which appears dead|\(dead\))/i
	matchre REIVER /reiver (which appears dead|\(dead\))/i
	matchre WARCAT /warcat (which appears dead|\(dead\))/i
	matchre CAIMAIN /caimain (which appears dead|\(dead\))/i
	matchre SCOUT /scout (which appears dead|\(dead\))/i
	matchre BANDIT /bandit (which appears dead|\(dead\))/i
	matchre BARGHEST /barghest (which appears dead|\(dead\))/i
	matchre HEADHUNTER /headhunter (which appears dead|\(dead\))/i
	matchre SAVAGE /savage (which appears dead|\(dead\))/i
	matchre LACH /lach (which appears dead|\(dead\))/i
	matchre MONSTER5 /paths:|exits:/i
	matchre SKIN_VARI_CHECK /and you can't see a thing|Your world is a crimson haze/i
put look other
	matchwait
# 31/32
MONSTER5:
MONSTER_GROUP_5:
echo
echo MONSTER5:
echo
setvariable zHmonster MONSTER5B
	matchre CROW /crow (which appears dead|\(dead\))/i
	matchre SCREAMER /s'lai screamer (which appears dead|\(dead\))/i
	matchre DINEGO /wir dinego (which appears dead|\(dead\))/i
	matchre GUARDIAN /a pile of rubble/i
	matchre GENI /forest geni (which appears dead|\(dead\))/i
	matchre SOUL /tortured soul (which appears dead|\(dead\))/i
	matchre HAFWA /snaer hafwa (which appears dead|\(dead\))/i
	matchre FIEND /crypt fiend (which appears dead|\(dead\))/i
	matchre SPRITE_2 /fire sprite (which appears dead|\(dead\))/i
	matchre MEY /moss mey (which appears dead|\(dead\))/i
	matchre GERMISH'DIN /germish'din (which appears dead|\(dead\))/i
	matchre KARTAIS /kartais (which appears dead|\(dead\))/i
	matchre LA'TAMI /yvhh la'tami (which appears dead|\(dead\))/i
	matchre SPIDER /blade spider (which appears dead|\(dead\))/i
	matchre MALCHATA /malchata (which appears dead|\(dead\))/i
	matchre FANATIC /priest fanatic (which appears dead|\(dead\))/i
	matchre MAGE /adan'f shadow mage (which appears dead|\(dead\))/i
	matchre WARRIOR /adan'f blood warrior (which appears dead|\(dead\))/i
	matchre DANCER /adan'f spirit dancer (which appears dead|\(dead\))/i
	matchre CRAB /crab (which appears dead|\(dead\))/i
	matchre HOUND /shadow hound (which appears dead|\(dead\))/i
	matchre SLUAGH /greater sluagh (which appears dead|\(dead\))/i
	matchre SEORDMAER /scaly seordmaer (which appears dead|\(dead\))/i
	matchre STEED /steed (which appears dead|\(dead\))/i
	matchre SWAIN /swain (which appears dead|\(dead\))/i
	matchre MORADU /moradu (which appears dead|\(dead\))/i
	matchre GIDII /gidii (which appears dead|\(dead\))/i
	matchre GREMLIN /gremlin (which appears dead|\(dead\))/i
	matchre RAVEN /raven (which appears dead|\(dead\))/i
	matchre MONSTER6 /paths:|exits:/i
	matchre SKIN_VARI_CHECK /and you can't see a thing|Your world is a crimson haze/i
put look other
	matchwait

# 30/32
MONSTER6:
MONSTER_GROUP_6:
echo
echo MONSTER6:
echo
setvariable zHmonster MONSTER6B
	matchre TROLL /cave troll (which appears dead|\(dead\))/i
	matchre BULL /storm bull (which appears dead|\(dead\))/i
	matchre NYAD /deadwood nyad (which appears dead|\(dead\))/i
	matchre DRYAD /deadwood dryad (which appears dead|\(dead\))/i
	matchre GARGOYLE /marble gargoyle (which appears dead|\(dead\))/i
	matchre OGRE /blight ogre (which appears dead|\(dead\))/i
	matchre BAT /blight bat (which appears dead|\(dead\))/i
	matchre TOMMYKNOCKER /tommyknocker (which appears dead|\(dead\))/i
	matchre SLIME /slime (which appears dead|\(dead\))/i
	matchre GOBLIN /black goblin (which appears dead|\(dead\))/i
	matchre GRYPHON /gryphon (which appears dead|\(dead\))/i
	matchre FIEND /retch fiend (which appears dead|\(dead\))/i
	matchre BOAR /boar (which appears dead|\(dead\))/i
	matchre SHALSWAR /shalswar (which appears dead|\(dead\))/i
	matchre ZEALOT /zealot (which appears dead|\(dead\))/i
	matchre BLOODVINE /bloodvine (which appears dead|\(dead\))/i
	matchre LOUT /lout (which appears dead|\(dead\))/i
	matchre CONSCRIPT /conscript (which appears dead|\(dead\))/i
	matchre TRESS /tress (which appears dead|\(dead\))/i
#LARVA also in 1, grouped with Crag + Tendril
	matchre LARVA /larva (which appears dead|\(dead\))/i
	matchre CRAG /crag (which appears dead|\(dead\))/i
	matchre TENDRIL /tendril (which appears dead|\(dead\))/i
	matchre BEAST /beast (which appears dead|\(dead\))/i
	matchre BASILISK /basilisk (which appears dead|\(dead\))/i
	matchre MERROW /merrow (which appears dead|\(dead\))/i
	matchre IMP /imp (which appears dead|\(dead\))/i
	matchre BUCCA /bucca (which appears dead|\(dead\))/i
	matchre MONSTER_FAIL /paths:|exits:/i
	matchre MONSTER_DEAD /(which appears dead|\(dead\))/i
	matchre SKIN_VARI_CHECK /and you can't see a thing|Your world is a crimson haze/i
put look other
	matchwait

MONSTER1B:
echo
echo MONSTER1B:
echo
	matchre TROLL_2 /wood troll (which appears dead|\(dead\))/i
	matchre GOBLIN /goblin (which appears dead|\(dead\))/i
	matchre HOG /musk hog (which appears dead|\(dead\))/i
	matchre MADMAN /crazed madman (which appears dead|\(dead\))/i
	matchre GRENDEL /grendel (which appears dead|\(dead\))/i
	matchre COUGAR /cougar (which appears dead|\(dead\))/i
	matchre RAM /ram (which appears dead|\(dead\))/i
	matchre DRYAD / dryad (which appears dead|\(dead\))/i
	matchre NYAD / nyad (which appears dead|\(dead\))/i
	matchre BOGGLE /boggle (which appears dead|\(dead\))/i
	matchre KOBOLD /kobold (which appears dead|\(dead\))/i
	matchre JACKAL /jackal (which appears dead|\(dead\))/i
	matchre TROLL /troll (which appears dead|\(dead\))/i
	matchre EEL /grass eel (which appears dead|\(dead\))/i
	matchre SHAMAN /goblin shaman (which appears dead|\(dead\))/i
	matchre BOAR /boar (which appears dead|\(dead\))/i
	matchre KELPIE /kelpie (which appears dead|\(dead\))/i
	matchre CREEPER /creeper (which appears dead|\(dead\))/i
	matchre VINES /morah vine (which appears dead|\(dead\))/i
	matchre MARAUDER /gypsy marauder (which appears dead|\(dead\))/i
	matchre OGRE /ogre (which appears dead|\(dead\))/i
	matchre BEAR /black bear (which appears dead|\(dead\))/i
	matchre WOLF /blood wolf (which appears dead|\(dead\))/i
	matchre BOBCAT /bobcat (which appears dead|\(dead\))/i
	matchre ARBELOG /arbelog (which appears dead|\(dead\))/i
	matchre RAT /rat (which appears dead|\(dead\))/i
	matchre SPIDER /wolf spider (which appears dead|\(dead\))/i
	matchre BOOBRIE /boobrie (which appears dead|\(dead\))/i
	matchre MOTH /moth (which appears dead|\(dead\))/i
	matchre LARVA /larva (which appears dead|\(dead\))/i
	matchre WASP /wasp (which appears dead|\(dead\))/i
	matchre MONSTER2 /paths:|exits:/i
	matchre SKIN_VARI_CHECK /and you can't see a thing|Your world is a crimson haze/i
put look other
	matchwait

# 32/32
MONSTER2B:
echo
echo MONSTER2B:
echo
	matchre MAULER /warklin mauler (which appears dead|\(dead\))/i
	matchre SILVERFISH /silverfish (which appears dead|\(dead\))/i
	matchre WARKLIN /armored warklin (which appears dead|\(dead\))/i
	matchre BEISWURM /beisswurm (which appears dead|\(dead\))/i
	matchre BEAR /cave bear (which appears dead|\(dead\))/i
	matchre PARD /golden pard (which appears dead|\(dead\))/i
	matchre BISON /bison (which appears dead|\(dead\))/i
	matchre ANTELOPE /antelope (which appears dead|\(dead\))/i
	matchre ARZUMOS /clouded arzumos (which appears dead|\(dead\))/i
	matchre PRIESTESS /dragon priestess (which appears dead|\(dead\))/i
	matchre PECCARY /small peccary (which appears dead|\(dead\))/i
	matchre SERPENT /serpent (which appears dead|\(dead\))/i
	matchre FIRECAT /firecat (which appears dead|\(dead\))/i
	matchre MAIDEN /maiden (which appears dead|\(dead\))/i
	matchre WESTANURYN /mottled westanuryn (which appears dead|\(dead\))/i
	matchre ATI'ETS /sealed ati'ets (which appears dead|\(dead\))/i
	matchre MIHMANAN /olensari mihmanan (which appears dead|\(dead\))/i
	matchre STALKER /faenrae stalker (which appears dead|\(dead\))/i
	matchre CUTTHROAT /cutthroat (which appears dead|\(dead\))/i
	matchre FOOTPAD /footpad (which appears dead|\(dead\))/i
	matchre RUFFIAN /ruffian (which appears dead|\(dead\))/i
	matchre THUG /thug (which appears dead|\(dead\))/i
	matchre VIPER /viper (which appears dead|\(dead\))/i
	matchre LEUCRO /leucro (which appears dead|\(dead\))/i
	matchre REAVER /faenrae reaver (which appears dead|\(dead\))/i
	matchre HOUND_2 /wind hound (which appears dead|\(dead\))/i
	matchre BADGER /badger (which appears dead|\(dead\))/i
	matchre TROLLKIN /trollkin (which appears dead|\(dead\))/i
	matchre POTHANIT /croff pothanit (which appears dead|\(dead\))/i
	matchre GHOUL /ghoul (which appears dead|\(dead\))/i
	matchre INKHORNE /inkhorne (which appears dead|\(dead\))/i
	matchre MONSTER1 /paths:|exits:/i
	matchre SKIN_VARI_CHECK /and you can't see a thing|Your world is a crimson haze/i
put look other
	matchwait

MONSTER3B:
echo
echo MONSTER3B:
echo
	matchre GARGOYLE /gargoyle (which appears dead|\(dead\))/i
	matchre SNOWBEAST /snowbeast (which appears dead|\(dead\))/i
	matchre SPIRIT /death spirit (which appears dead|\(dead\))/i
	matchre SKUNK /skunk (which appears dead|\(dead\))/i
	matchre SHADOWEAVER /shadoweaver (which appears dead|\(dead\))/i
	matchre FROSTWEAVER /frostweaver (which appears dead|\(dead\))/i
	matchre FIEND /dark fiend (which appears dead|\(dead\))/i
	matchre SPIRIT /dark spirit (which appears dead|\(dead\))/i
	matchre PIRATE /pirate (which appears dead|\(dead\))/i
	matchre GOBLIN /snow goblin (which appears dead|\(dead\))/i
	matchre GRUB /corpse grub (which appears dead|\(dead\))/i
	matchre BURROWER /burrower (which appears dead|\(dead\))/i
	matchre SPRITE /water sprite (which appears dead|\(dead\))/i
	matchre LIPOPOD /glutinous lipopod (which appears dead|\(dead\))/i
	matchre SKELETON /skeleton (which appears dead|\(dead\))/i
	matchre PSUEDOPOD /slimy psuedopod (which appears dead|\(dead\))/i
	matchre ZOMBIE /zombie (which appears dead|\(dead\))/i
	matchre WOLF /bone wolf (which appears dead|\(dead\))/i
	matchre WORM /grave worm (which appears dead|\(dead\))/i
	matchre VULTURE /sun vulture (which appears dead|\(dead\))/i
	matchre KRA'HEI /kra'hei (which appears dead|\(dead\))/i
	matchre PECCARY /peccary (which appears dead|\(dead\))/i
	matchre TROLL_2 /swamp troll (which appears dead|\(dead\))/i
	matchre FENDRYAD /fendryad (which appears dead|\(dead\))/i
	matchre ELSRAEL /sinuous elsrael (which appears dead|\(dead\))/i
	matchre SLUAGH /lesser sluagh (which appears dead|\(dead\))/i
	matchre DYRACHIS /spiny dyrachis (which appears dead|\(dead\))/i
	matchre CROCODILE /crocodile (which appears dead|\(dead\))/i
	matchre SQUIRREL /squirrel (which appears dead|\(dead\))/i
	matchre ATIKET /atik'et (which appears dead|\(dead\))/i
	matchre MONSTER1 /paths:|exits:/i
	matchre SKIN_VARI_CHECK /and you can't see a thing|Your world is a crimson haze/i
put look other
	matchwait

MONSTER4B:
echo
echo MONSTER4B:
echo
	matchre FROG /frog (which appears dead|\(dead\))/i
	matchre MODA /moda (which appears dead|\(dead\))/i
	matchre HATCHLING /hatchling (which appears dead|\(dead\))/i
	matchre ANGISWAERD /marbled angiswaerd (which appears dead|\(dead\))/i
	matchre SPIDER /sand spider (which appears dead|\(dead\))/i
	matchre NOMAD /zombie nomad (which appears dead|\(dead\))/i
	matchre CRAB /salt crab (which appears dead|\(dead\))/i
	matchre SPRITE /sand sprite (which appears dead|\(dead\))/i
	matchre LA'HEKE /ochre la'heke (which appears dead|\(dead\))/i
	matchre MORURYN /dobek moruryn (which appears dead|\(dead\))/i
	matchre UNYN /unyn (which appears dead|\(dead\))/i
	matchre OSHU /oshu (which appears dead|\(dead\))/i
	matchre HHRKI'IZH /ur hhrki'izh (which appears dead|\(dead\))/i
	matchre DOLOMAR /retan dolomar (which appears dead|\(dead\))/i
	matchre POLOH'IZH /grey poloh'izh (which appears dead|\(dead\))/i
	matchre BOA /river boa (which appears dead|\(dead\))/i
	matchre HELE'LAS /sleek hele'las (which appears dead|\(dead\))/i
	matchre CELPEZE /asaren celpeze (which appears dead|\(dead\))/i
	matchre CARACAL /caracal (which appears dead|\(dead\))/i
	matchre LUN'SHELE /lun'shele (which appears dead|\(dead\))/i
	matchre RAIDER /raider (which appears dead|\(dead\))/i
	matchre CLANCHIEF /raider (which appears dead|\(dead\))/i
	matchre REIVER /reiver (which appears dead|\(dead\))/i
	matchre WARCAT /warcat (which appears dead|\(dead\))/i
	matchre CAIMAIN /caimain (which appears dead|\(dead\))/i
	matchre SCOUT /scout (which appears dead|\(dead\))/i
	matchre BANDIT /bandit (which appears dead|\(dead\))/i
	matchre BARGHEST /barghest (which appears dead|\(dead\))/i
	matchre HEADHUNTER /headhunter (which appears dead|\(dead\))/i
	matchre SAVAGE /savage (which appears dead|\(dead\))/i
	matchre LACH /lach (which appears dead|\(dead\))/i
	matchre MONSTER1 /paths:|exits:/i
	matchre SKIN_VARI_CHECK /and you can't see a thing|Your world is a crimson haze/i
put look other
	matchwait

MONSTER5B:
echo
echo MONSTER5B:
echo
	matchre CROW /crow (which appears dead|\(dead\))/i
	matchre SCREAMER /s'lai screamer (which appears dead|\(dead\))/i
	matchre DINEGO /wir dinego (which appears dead|\(dead\))/i
	matchre GUARDIAN /a pile of rubble/i
	matchre GENI /forest geni (which appears dead|\(dead\))/i
	matchre SOUL /tortured soul (which appears dead|\(dead\))/i
	matchre HAFWA /snaer hafwa (which appears dead|\(dead\))/i
	matchre FIEND /crypt fiend (which appears dead|\(dead\))/i
	matchre SPRITE_2 /fire sprite (which appears dead|\(dead\))/i
	matchre MEY /moss mey (which appears dead|\(dead\))/i
	matchre GERMISH'DIN /germish'din (which appears dead|\(dead\))/i
	matchre KARTAIS /kartais (which appears dead|\(dead\))/i
	matchre LA'TAMI /yvhh la'tami (which appears dead|\(dead\))/i
	matchre SPIDER /blade spider (which appears dead|\(dead\))/i
	matchre MALCHATA /malchata (which appears dead|\(dead\))/i
	matchre FANATIC /priest fanatic (which appears dead|\(dead\))/i
	matchre MAGE /adan'f shadow mage (which appears dead|\(dead\))/i
	matchre WARRIOR /adan'f blood warrior (which appears dead|\(dead\))/i
	matchre DANCER /adan'f spirit dancer (which appears dead|\(dead\))/i
	matchre CRAB /crab (which appears dead|\(dead\))/i
	matchre HOUND /shadow hound (which appears dead|\(dead\))/i
	matchre SLUAGH /greater sluagh (which appears dead|\(dead\))/i
	matchre SEORDMAER /scaly seordmaer (which appears dead|\(dead\))/i
	matchre STEED /steed (which appears dead|\(dead\))/i
	matchre SWAIN /swain (which appears dead|\(dead\))/i
	matchre MORADU /moradu (which appears dead|\(dead\))/i
	matchre GIDII /gidii (which appears dead|\(dead\))/i
	matchre GREMLIN /gremlin (which appears dead|\(dead\))/i
	matchre RAVEN /raven (which appears dead|\(dead\))/i
	matchre MONSTER6B /paths:|exits:/i
	matchre SKIN_VARI_CHECK /and you can't see a thing|Your world is a crimson haze/i
put look other
	matchwait

MONSTER6B:
echo
echo MONSTER6B:
echo	
	matchre TROLL /cave troll (which appears dead|\(dead\))/i
	matchre BULL /storm bull (which appears dead|\(dead\))/i
	matchre NYAD /deadwood nyad (which appears dead|\(dead\))/i
	matchre DRYAD /deadwood dryad (which appears dead|\(dead\))/i
	matchre GARGOYLE /marble gargoyle (which appears dead|\(dead\))/i
	matchre OGRE /blight ogre (which appears dead|\(dead\))/i
	matchre BAT /blight bat (which appears dead|\(dead\))/i
	matchre TOMMYKNOCKER /tommyknocker (which appears dead|\(dead\))/i
	matchre SLIME /slime (which appears dead|\(dead\))/i
	matchre GOBLIN /black goblin (which appears dead|\(dead\))/i
	matchre GRYPHON /gryphon (which appears dead|\(dead\))/i
	matchre FIEND /retch fiend (which appears dead|\(dead\))/i
	matchre BOAR /boar (which appears dead|\(dead\))/i
	matchre SHALSWAR /shalswar (which appears dead|\(dead\))/i
	matchre ZEALOT /zealot (which appears dead|\(dead\))/i
	matchre BLOODVINE /bloodvine (which appears dead|\(dead\))/i
	matchre LOUT /lout (which appears dead|\(dead\))/i
	matchre CONSCRIPT /conscript (which appears dead|\(dead\))/i
	matchre TRESS /tress (which appears dead|\(dead\))/i
#LARVA also in 1, grouped with Crag + Tendril
	matchre LARVA /larva (which appears dead|\(dead\))/i
	matchre CRAG /crag (which appears dead|\(dead\))/i
	matchre TENDRIL /tendril (which appears dead|\(dead\))/i
	matchre BEAST /beast (which appears dead|\(dead\))/i
	matchre BASILISK /basilisk (which appears dead|\(dead\))/i
	matchre MERROW /merrow (which appears dead|\(dead\))/i
	matchre IMP /imp (which appears dead|\(dead\))/i
	matchre BUCCA /bucca (which appears dead|\(dead\))/i
	matchre MONSTER1 /paths:|exits:/i
	matchre SKIN_VARI_CHECK /and you can't see a thing|Your world is a crimson haze/i
put look other
	matchwait

MONSTER_DEAD:
setvariable zHmonster MONSTER1
	echo
	echo MONSTER_DEAD:
	echo
	echo ************************************
	echo **     ATTENTION!   ATTENTION!    **
	echo ** Found a dead monster but could **
	echo ** NOT identify it. Please email  **
	echo ** it to drockmali@hotmail.com    **
	echo ************************************
	echo
	goto SKIN_VARI_CHECK

MONSTER_FAIL:
setvariable zHmonster MONSTER1
	echo
	echo MONSTER_FAIL:
	echo
	echo
	echo ************************************
	echo ** Could not find a dead monster. **
	echo ************************************
	echo
	goto NO_LOOT

IMP:
echo
echo IMP:
echo
	setvariable zHkill imp
	goto SKIN_VARI_CHECK

BUCCA:
echo
echo BUCCA:
echo
	setvariable zHkill bucca
	goto SKIN_VARI_CHECK

RAVEN:
echo
echo RAVEN:
echo
	setvariable zHkill raven
	goto SKIN_VARI_CHECK

MERROW:
echo
echo MERROW:
echo
	setvariable zHkill merrow
	goto SKIN_VARI_CHECK

LACH:
echo
echo LACH:
echo
	setvariable zHkill lach
	goto SKIN_VARI_CHECK

SAVAGE:
echo
echo SAVAGE:
echo
	setvariable zHkill savage
	goto SKIN_VARI_CHECK

HEADHUNTER:
echo
echo HEADHUNTER:
echo
	setvariable zHkill headhunter
	goto SKIN_VARI_CHECK

ATIKET:
echo
echo ATIKET:
echo
	setvariable zHkill atik'et
	goto SKIN_VARI_CHECK

SQUIRREL:
echo
echo SQUIRREL:
echo
	setvariable zHkill squirrel
	goto SKIN_VARI_CHECK

TROLL_2:
echo
echo TROLL_2:
echo
	setvariable zHkill troll
	goto SEARCH

TROLL:
echo
echo TROLL:
echo
	setvariable zHkill troll
	goto SKIN_VARI_CHECK


RAT:
echo
echo RAT:
echo
	setvariable zHkill rat
	goto SKIN_VARI_CHECK

SILVERFISH:
echo
echo SILVERFISH:
echo
	setvariable zHkill silverfish
	goto SKIN_VARI_CHECK

GOBLIN:
echo
echo GOBLIN:
echo


	setvariable zHkill goblin
	goto SKIN_VARI_CHECK

HOG:
echo
echo HOG:
echo


	setvariable zHkill hog
	goto SKIN_VARI_CHECK

MADMAN:
echo
echo MADMAN:
echo


	setvariable zHkill madman
	goto SEARCH

GRENDEL:
echo
echo GRENDEL:
echo


	setvariable zHkill grendel
	goto SKIN_VARI_CHECK

COUGAR:
echo
echo COUGAR:
echo


	setvariable zHkill cougar
	goto SKIN_VARI_CHECK

RAM:
echo
echo RAM:
echo


	setvariable zHkill ram
	goto SKIN_VARI_CHECK

DRYAD:
echo
echo DRYAD:
echo


	setvariable zHkill dryad
	goto SEARCH

NYAD:
echo
echo NYAD:
echo


	setvariable zHkill nyad
	goto SEARCH

BOGGLE:
echo
echo BOGGLE:
echo


	setvariable zHkill boggle
	goto SKIN_VARI_CHECK

KOBOLD:
echo
echo KOBOLD:
echo


	setvariable zHkill kobold
	goto SKIN_VARI_CHECK


JACKAL:
echo
echo JACKAL:
echo


	setvariable zHkill jackal
	goto SKIN_VARI_CHECK

EEL:
echo
echo EEL:
echo


	setvariable zHkill eel
	goto SKIN_VARI_CHECK

SHAMAN:
echo
echo SHAMAN:
echo


	setvariable zHkill shaman
	goto SEARCH

BOAR:
echo
echo BOAR:
echo


	setvariable zHkill boar
	goto SKIN_VARI_CHECK

KELPIE:
echo
echo KELPIE:
echo


	setvariable zHkill kelpie
	goto SKIN_VARI_CHECK

CREEPER:
echo
echo CREEPER:
echo


	setvariable zHkill creeper
	goto SEARCH

VINES:
echo
echo VINES:
echo


	setvariable zHkill vine
	goto SEARCH

MARAUDER:
echo
echo MARAUDER:
echo


	setvariable zHkill marauder
	goto SKIN_VARI_CHECK

OGRE:
echo
echo OGRE:
echo


	setvariable zHkill ogre
	goto SKIN_VARI_CHECK

BEAR:
echo
echo BEAR:
echo


	setvariable zHkill bear
	goto SKIN_VARI_CHECK

BOBCAT:
echo
echo BOBCAT:
echo


	setvariable zHkill bobcat
	goto SKIN_VARI_CHECK

MAULER:
echo
echo MAULER:
echo
	setvariable zHkill mauler

	goto SKIN_VARI_CHECK

INKHORNE:
echo
echo INKHORNE:
echo
	setvariable zHkill inkhorne

	goto SKIN_VARI_CHECK

WARKLIN:
echo
echo WARKLIN:
echo
	setvariable zHkill warklin

	goto SKIN_VARI_CHECK

BEISWURM:
echo
echo BEISWURM:
echo
	setvariable zHkill beisswurm

	goto SKIN_VARI_CHECK


PARD:
echo
echo PARD:
echo
	setvariable zHkill pard

	goto SKIN_VARI_CHECK

BISON:
echo
echo BISON:
echo
	setvariable zHkill bison

	goto SKIN_VARI_CHECK

ANTELOPE:
echo
echo ANTELOPE:
echo
	setvariable zHkill antelope

	goto SKIN_VARI_CHECK

ARZUMOS:
echo
echo ARZUMOS:
echo
	setvariable zHkill arzumos

	goto SKIN_VARI_CHECK

PRIESTESS:
echo
echo PRIESTESS:
echo
	setvariable zHkill priestess

	goto SKIN_VARI_CHECK

PECCARY:
echo
echo PECCARY:
echo
	setvariable zHkill peccary

	goto SKIN_VARI_CHECK

serpent:
echo
echo SERPENT:
echo
	setvariable zHkill serpent

	goto SKIN_VARI_CHECK

VIPER:
echo
echo VIPER:
echo
	setvariable zHkill viper

	goto SKIN_VARI_CHECK

FIRECAT:
echo
echo FIRECAT:
echo
	setvariable zHkill firecat

	goto SKIN_VARI_CHECK

MAIDEN:
echo
echo MAIDEN:
echo
	setvariable zHkill maiden

	goto SEARCH

WESTANURYN:
echo
echo WESTANURYN:
echo
	setvariable zHkill westanuryn

	goto SKIN_VARI_CHECK

ATI'ETS:
echo
echo ATI'ETS:
echo
	setvariable zHkill ati'ets

	goto SKIN_VARI_CHECK

MIHMANAN:
echo
echo MIHMANAN:
echo
	setvariable zHkill mihmanan

	goto SKIN_VARI_CHECK

STALKER:
echo
echo STALKER:
echo
	setvariable zHkill stalker

	goto SKIN_VARI_CHECK

CUTTHROAT:
echo
echo CUTTHROAT:
echo
	setvariable zHkill cutthroat

	goto SKIN_VARI_CHECK

FOOTPAD:
echo
echo FOOTPAD:
echo
	setvariable zHkill footpad

	goto SKIN_VARI_CHECK

RUFFIAN:
echo
echo RUFFIAN:
echo
	setvariable zHkill ruffian

	goto SKIN_VARI_CHECK

THUG:
echo
echo THUG:
echo
	setvariable zHkill thug

	goto SKIN_VARI_CHECK

LEUCRO:
echo
echo LEUCRO:
echo
	setvariable zHkill leucro

	goto SKIN_VARI_CHECK

REAVER:
echo
echo REAVER:
echo
	setvariable zHkill reaver

	goto SKIN_VARI_CHECK

HOUND_2:
echo
echo HOUND_2:
echo
	setvariable zHkill hound

	goto SEARCH

SPRITE_2:
echo
echo SPRITE_2:
echo
	setvariable zHkill sprite

	goto SEARCH

HOUND:
echo
echo HOUND:
echo
	setvariable zHkill hound

	goto SKIN_VARI_CHECK

BADGER:
echo
echo BADGER:
echo
	setvariable zHkill badger

	goto SKIN_VARI_CHECK

TROLLKIN:
echo
echo TROLLKIN:
echo
	setvariable zHkill trollkin

	goto SKIN_VARI_CHECK

POTHANIT:
echo
echo POTHANIT:
echo
	setvariable zHkill pothanit

	goto SKIN_VARI_CHECK

GHOUL:
echo
echo GHOUL:
echo
	setvariable zHkill ghoul

	goto SKIN_VARI_CHECK

GARGOYLE:
echo
echo GARGOYLE:
echo
	setvariable zHkill gargoyle

	goto SKIN_VARI_CHECK

SNOWBEAST:
echo
echo SNOWBEAST:
echo
	setvariable zHkill snowbeast

	goto SKIN_VARI_CHECK

SPIRIT:
echo
echo SPIRIT:
echo
	setvariable zHkill spirit

	goto SKIN_VARI_CHECK

SKUNK:
echo
echo SKUNK:
echo
	setvariable zHkill skunk

	goto SKIN_VARI_CHECK

SHADOWEAVER:
echo
echo SHADOWEAVER:
echo
	setvariable zHkill shadoweaver

	goto SKIN_VARI_CHECK

FROSTWEAVER:
echo
echo FROSTWEAVER:
echo
	setvariable zHkill frostweaver

	goto SKIN_VARI_CHECK

PIRATE:
echo
echo PIRATE:
echo
	setvariable zHkill pirate

	goto SKIN_VARI_CHECK

GRUB:
echo
echo GRUB:
echo
	setvariable zHkill grub

	goto SKIN_VARI_CHECK

BURROWER:
echo
echo BURROWER:
echo
	setvariable zHkill burrower

	goto SKIN_VARI_CHECK

SPRITE:
echo
echo SPRITE:
echo
	setvariable zHkill sprite

	goto SKIN_VARI_CHECK

LIPOPOD:
echo
echo LIPOPOD:
echo
	setvariable zHkill lipopod

	goto SKIN_VARI_CHECK

SKELETON:
echo
echo SKELETON:
echo
	setvariable zHkill skeleton

	goto SKIN_VARI_CHECK

PSUEDOPOD:
echo
echo PSUEDOPOD:
echo
	setvariable zHkill psuedopod

	goto SKIN_VARI_CHECK

ZOMBIE:
echo
echo ZOMBIE:
echo
	setvariable zHkill zombie

	goto SKIN_VARI_CHECK

WOLF:
echo
echo WOLF:
echo
	setvariable zHkill wolf

	goto SKIN_VARI_CHECK

WORM:
echo
echo WORM:
echo
	setvariable zHkill worm

	goto SKIN_VARI_CHECK

VULTURE:
echo
echo VULTURE:
echo
	setvariable zHkill vulture

	goto SKIN_VARI_CHECK

KRA'HEI:
echo
echo KRA'HEI:
echo
	setvariable zHkill kra'hei

	goto SKIN_VARI_CHECK

FENDRYAD:
echo
echo FENDRYAD:
echo
	setvariable zHkill fendryad

	goto SKIN_VARI_CHECK

ELSRAEL:
echo
echo ELSRAEL:
echo
	setvariable zHkill elsrael

	goto SKIN_VARI_CHECK

DYRACHIS:
echo
echo DYRACHIS:
echo
	setvariable zHkill dyrachis

	goto SKIN_VARI_CHECK

BOOBRIE:
echo
echo BOORIE:
echo
	setvariable zHkill boobrie

	goto SKIN_VARI_CHECK

MOTH:
echo
echo MOTH:
echo
	setvariable zHkill moth

	goto SKIN_VARI_CHECK

WASP:
echo
echo WASP:
echo
	setvariable zHkill wasp

	goto SKIN_VARI_CHECK

LARVA:
echo
echo LARVA:
echo
	setvariable zHkill larva

	goto SKIN_VARI_CHECK

CROCODILE:
echo
echo CROCODILE:
echo
	setvariable zHkill crocodile

	goto SKIN_VARI_CHECK

MODA:
echo
echo MODA:
echo
	setvariable zHkill moda

	goto SKIN_VARI_CHECK

HATCHLING:
echo
echo HATCHLING:
echo
	setvariable zHkill hatchling

	goto SKIN_VARI_CHECK

ANGISWAERD:
echo
echo ANGISWAERD:
echo
	setvariable zHkill angiswaerd

	goto SKIN_VARI_CHECK

SPIDER:
echo
echo SPIDER:
echo
	setvariable zHkill spider

	goto SKIN_VARI_CHECK

NOMAD:
echo
echo NOMAND:
echo
	setvariable zHkill nomad

	goto SKIN_VARI_CHECK

CRAB:
echo
echo CRAB:
echo
	setvariable zHkill crab

	goto SKIN_VARI_CHECK

LA'HEKE:
echo
echo LA'HEKE:
echo
	setvariable zHkill la'heke

	goto SKIN_VARI_CHECK

MORURYN:
echo
echo MORURYN:
echo
	setvariable zHkill moruryn

	goto SKIN_VARI_CHECK

FROG:
echo
echo FROG:
echo
	setvariable zHkill frog

	goto SKIN_VARI_CHECK

UNYN:
echo
echo UNYN:
echo
	setvariable zHkill unyn

	goto SKIN_VARI_CHECK

OSHU:
echo
echo OSHU:
echo
	setvariable zHkill oshu

	goto SKIN_VARI_CHECK

HHRKI'IZH:
echo
echo HHRKI'IZH:
echo
	setvariable zHkill hhrki'izh

	goto SKIN_VARI_CHECK

DOLOMAR:
echo
echo DOLOMAR:
echo
	setvariable zHkill dolomar

	goto SKIN_VARI_CHECK

POLOH'IZH:
echo
echo POLOH'IZH:
echo
	setvariable zHkill poloh'izh

	goto SKIN_VARI_CHECK

BOA:
echo
echo BOA:
echo
	setvariable zHkill boa

	goto SKIN_VARI_CHECK

HELE'LAS:
echo
echo HELE'LAS:
echo
	setvariable zHkill hele'las

	goto SKIN_VARI_CHECK

CELPEZE:
echo
echo CELEPEZE:
echo
	setvariable zHkill celpeze

	goto SKIN_VARI_CHECK

CARACAL:
echo
echo CARACAL:
echo
	setvariable zHkill caracal

	goto SKIN_VARI_CHECK

LUN'SHELE:
echo
echo LUN'SHELE:
echo
	setvariable zHkill lun'shele

	goto SKIN_VARI_CHECK

RAIDER:
echo
echo RAIDER:
echo
	setvariable zHkill raider

	goto SEARCH

CLANCHIEF:
echo
echo CLANCHIEF:
echo
	setvariable zHkill raider

	goto SEARCH

REIVER:
echo
echo REIVER:
echo
	setvariable zHkill reiver

	goto SKIN_VARI_CHECK

WARCAT:
echo
echo WARCAT:
echo
	setvariable zHkill warcat

	goto SKIN_VARI_CHECK

CAIMAIN:
echo
echo CAIMAIN:
echo
	setvariable zHkill caimain

	goto SKIN_VARI_CHECK

SCOUT:
echo
echo SCOUT:
echo
	setvariable zHkill scout

	goto SKIN_VARI_CHECK

BANDIT:
echo
echo BANDIT:
echo
	setvariable zHkill bandit

	goto SEARCH

BARGHEST:
echo
echo BARGHEST:
echo
	setvariable zHkill barghest

	goto SKIN_VARI_CHECK

CROW:
echo
echo CROW:
echo
	setvariable zHkill crow

	goto SKIN_VARI_CHECK

SCREAMER:
echo
echo SCREAMER:
echo
	setvariable zHkill screamer

	goto SKIN_VARI_CHECK

DINEGO:
echo
echo DINEG0:
echo
	setvariable zHkill dinego

	goto SKIN_VARI_CHECK

GUARDIAN_PAUSE:
pause
GUARDIAN:
echo
echo GUARDIAN:
echo
	setvariable zHkill guardian

	match NO_LOOT could not
	match NO_LOOT What were you
	match SEARCH_NEXT not dead
	match SEARCH_NEXT It's still alive
	match NO_LOOT picked clean
	match NO_LOOT It carried nothing of interest.
	match LOOT_LOOK You search
	match LOOT_LOOK roundtime
	match GUARDIAN_PAUSE ...wait
	match GUARDIAN_PAUSE type ahead
	match GUARDIAN_PAUSE roundtime
put loot rubble %zHsearch
	matchwait

GENI:
echo
echo GENI:
echo
	setvariable zHkill geni

	goto SKIN_VARI_CHECK

SOUL:
echo
echo SOUL:
echo
	setvariable zHkill soul

	goto SKIN_VARI_CHECK

HAFWA:
echo
echo HAFWA:
echo
	setvariable zHkill hafwa

	goto SKIN_VARI_CHECK

FIEND:
echo
echo FIEND:
echo
	setvariable zHkill fiend

	goto SKIN_VARI_CHECK

MEY:
echo
echo MEY:
echo
	setvariable zHkill mey

	goto SKIN_VARI_CHECK

GERMISH'DIN:
echo
echo GERMISH'DIN:
echo
	setvariable zHkill germish'din

	goto SKIN_VARI_CHECK

KARTAIS:
echo
echo KARTAIS:
echo
	setvariable zHkill kartais

	goto SKIN_VARI_CHECK

LA'TAMI:
echo
echo LA'TAMI:
echo
	setvariable zHkill la'tami

	goto SKIN_VARI_CHECK

MALCHATA:
echo
echo MALCHATA:
echo
	setvariable zHkill malchata

	goto SKIN_VARI_CHECK

FANATIC:
echo
echo FANATIC:
echo
	setvariable zHkill fanatic

	goto SKIN_VARI_CHECK

MAGE:
echo
echo MAGE:
echo
	setvariable zHkill mage

	goto SKIN_VARI_CHECK

WARRIOR:
echo
echo WARRIOR:
echo
	setvariable zHkill warrior

	goto SKIN_VARI_CHECK

DANCER:
echo
echo DANCER:
echo
	setvariable zHkill dancer

	goto SKIN_VARI_CHECK

ARBELOG:
echo
echo ARBELOG:
echo
	setvariable zHkill arbelog

	goto SKIN_VARI_CHECK

SLUAGH:
echo
echo SLUAGH:
echo
	setvariable zHkill sluagh

	goto SKIN_VARI_CHECK

STEED:
echo
echo STEED:
echo
	setvariable zHkill steed

	goto SKIN_VARI_CHECK

SWAIN:
echo
echo SWAIN:
echo
	setvariable zHkill swain

	goto SKIN_VARI_CHECK

MORADU:
echo
echo MORADU:
echo
	setvariable zHkill moradu

	goto SKIN_VARI_CHECK

GIDII:
echo
echo GIDII:
echo
	setvariable zHkill gidii

	goto SKIN_VARI_CHECK

GREMLIN:
echo
echo GREMLIN:
echo
	setvariable zHkill gremlin

	goto SKIN_VARI_CHECK

SEORDMAER:
echo
echo SEORDMAER:
echo
	setvariable zHkill seordmaer

	goto SKIN_VARI_CHECK

BULL:
echo
echo BULL:
echo
	setvariable zHkill bull
	goto SEARCH

TOMMYKNOCKER:
echo
echo TOMMYKNOCKER:
echo
	setvariable zHkill tommyknocker
	goto SKIN_VARI_CHECK

SLIME:
echo
echo SLIME:
echo
	setvariable zHkill slime
	goto SKIN_VARI_CHECK

BAT:
echo
echo BAT:
echo
	setvariable zHkill bat
	goto SKIN_VARI_CHECK

SHALSWAR:
echo
echo SHALSWAR:
echo
	setvariable zHkill shalswar
	goto SKIN_VARI_CHECK

ZEALOT:
echo
echo ZEALOT:
echo
	setvariable zHkill zealot
	goto SEARCH

GRYPHON:
echo
echo GRYPHON:
echo
	setvariable zHkill gryphon
	goto SKIN_VARI_CHECK

BLOODVINE:
echo
echo BLOODVINE:
echo
	setvariable zHkill bloodvine
	goto SEARCH

LOUT:
echo
echo LOUT:
echo
	setvariable zHkill lout
	goto SEARCH

CONSCRIPT:
echo
echo CONSCRIPT:
echo
	setvariable zHkill conscript
	goto SKIN_VARI_CHECK

TRESS:
echo
echo TRESS:
echo
	setvariable zHkill tress
	goto SKIN_VARI_CHECK

CRAG:
echo
echo CRAG:
echo
	setvariable zHkill crag
	goto SKIN_VARI_CHECK

TENDRIL:
echo
echo TENDRIL:
echo
	setvariable zHkill tendril
	goto SKIN_VARI_CHECK

BEAST:
echo
echo BEAST:
echo
	setvariable zHkill beast
	goto SKIN_VARI_CHECK

BASILISK:
echo
echo BASILISK:
echo
	setvariable zHkill basilisk
	goto SKIN_VARI_CHECK


SKIN_VARI_CHECK:
	echo
	echo SKIN_VARI_CHECK:
	echo
goto %zHskin


SKIN1_PAUSE:
pause
SKIN1:
	echo
	echo SKIN1:
	echo
goto %zHarrange

ARR_YES:
	match %zHretreat you can't
	match SKIN1B already been skinned
	match SKIN1B You might want to kill it first
	match SKIN1__PAUSE roundtime
	match %zHretreat You don't have enough experience
	match %zHretreat Ranger
	match SKIN1_PAUSE ...wait
	match SKIN1_PAUSE type ahead
put arrange all
	matchwait

SKIN1B_PAUSE:
pause
SKIN1B:
	echo
	echo SKIN1B:
	echo
	match %zHretreat You might want to kill it first
	match SKIN_FAIL already been skinned
	match SKIN1__PAUSE roundtime
	match %zHretreat You don't have enough experience
	match %zHretreat Ranger
	match SKIN1B_PAUSE ...wait
	match SKIN1B_PAUSE type ahead
	match SEARCH You can't do that.
put arrange other %zHkill
	matchwait


SKIN1__PAUSE:
pause
ARR_NO:
goto %zHretreat

SKIN_RETREAT:
put retreat
put retreat
SKIN1_:
pause
IF_2 goto SKIN_STOW2
IF_1 goto SKIN_STOW
goto SKIN_GO1


SKIN_STOW2_PAUSE:
pause
SKIN_STOW2:
	echo
	echo SKIN_STOW2:
	echo
	matchre SKIN_STOW /you (sling|attach)|re already|wear what|what were you/i
	match SKIN_STOW2A can't wear
	match SKIN_STOW2_PAUSE ...wait
	match SKIN_STOW2_PAUSE type ahead
put wear %2
	matchwait

SKIN_STOW2A:
	echo
	echo SKIN_STOW2A:
	echo
	match SKIN_STOW_DROP2 too
	match SKIN_STOW you put
	match SKIN_STOW_DROP2 What were you
put stow %2
	matchwait

SKIN_STOW_DROP2:
	echo
	echo SKIN_STOW_DROP2:
	echo
put drop my %2

SKIN_STOW_PAUSE:
pause
SKIN_STOW:
	echo
	echo SKIN_STOW:
	echo
goto SKINTYPE_%zHtype

SKINTYPE_GAUNT:
put drop my claw
goto SKIN_GO

SKINTYPE_BRAWL:
goto SKIN_BRAWLTYPE_%zHbrawltype

SKIN_BRAWLTYPE_SHIELD_PAUSE:
pause
SKIN_BRAWLTYPE_SHIELD:
	match SKIN_STOWA you get
	match SKIN_STOWA you draw
	match SKIN_STOWA already holding
	match SKIN_BRAWLTYPE_SHIELD_PAUSE ...wait
	match SKIN_BRAWLTYPE_SHIELD_PAUSE type ahead
	matchre NO_KNIFE /out of reach|remove|What were you|can't seem|Wield what\?/i
put wield right my knife
	matchwait

SKIN_TYPE_PAUSE:
pause
SKIN_BRAWLTYPE_WEAPON:
SKINTYPE_0:
	match SKIN_SWAP1 you get
	match SKIN_SWAP1 you draw
	match SKIN_SWAP1 already holding
	match SKIN_TYPE_PAUSE ...wait
	match SKIN_TYPE_PAUSE type ahead
	matchre NO_KNIFE /out of reach|remove|What were you|can't seem|Wield what\?/i
put wield left my knife
	matchwait

SKIN_OFF_PAUSE:
pause
SKINTYPE_OFFHAND:
	match SKIN_STOWA you get
	match SKIN_STOWA you draw
	match SKIN_STOWA already holding
	match SKIN_OFF_PAUSE ...wait
	match SKIN_OFF_PAUSE type ahead
	match SKINTYPE_0 You need to have your right hand free to draw your 
	matchre NO_KNIFE /out of reach|remove|What were you|can't seem|Wield what\?/i
put wield right my knife
	matchwait


SKIN_SWAP1_PAUSE:
pause
SKIN_SWAP1:
	echo
	echo SKIN_SWAP1:
	echo
put swap
	matchre SKIN_STOWA /appropriate sheath|where\?|isn't any more|you can only|too heavy/i
	match SKIN_UNLOAD You should unload
	matchre SKIN_GO /You Sheath|you slide|you place|you slip|sheathe what\?|you hang|you secure/i
	matchre SKIN_SWAP1_PAUSE /\.\.\.wait|type ahead/i
put sheath left
	matchwait

SKIN_UNLOAD_PAUSE:
pause
SKIN_UNLOAD:
put sheath
	match SKIN_UNLOAD_STOW roundtime
	match SKIN_UNLOAD_PAUSE ...wait
	match SKIN_UNLOAD_PAUSE type ahead
	match SKINTYPE_0 isn't loaded
put unload
	matchwait

SKIN_UNLOAD_STOW_PAUSE:
pause
SKIN_UNLOAD_STOW:
	match SKIN_UNLOAD_STOW_PAUSE ...wait
	match SKIN_UNLOAD_STOW_PAUSE type ahead
	matchre SKINTYPE_0 /you put|stow what/i
put stow right
	matchwait

SKIN_STOWA:
	echo
	echo SKIN_STOWA:
	echo
	match SKIN_STOW_DROP unload
	match SKIN_STOWB can't wear
	matchre SKIN_GO /you (sling|attach)|re already|wear what|what were you/i
put wear %1
	matchwait

SKIN_STOWB:
	echo
	echo SKIN_STOWB:
	echo
goto SKIN_STOWB_%zHget

SKIN_STOWB_ON:
	match SKIN_UNLOAD You should unload
	match SKIN_STOW_DROP too
	match SKIN_GO you put
put put my %1 %zhGetA
	matchwait

SKIN_STOWB_OFF:
	match SKIN_UNLOAD You should unload
	match SKIN_STOW_DROP too
	match SKIN_GO you put
put stow %1
	matchwait


SKIN_STOW_DROP:
	echo
	echo SKIN_STOW_DROP:
	echo
put drop my %1
goto SKIN_GO


SKIN_GO1_PAUSE:
pause
SKIN_GO1:
	match SKIN_GO2 you get
	match SKIN_GO2 you draw
	match SKIN_GO2 already holding
	match SKIN_GO1_PAUSE ...wait
	match SKIN_GO1_PAUSE type ahead
	matchre NO_KNIFE /out of reach|remove|What were you|can't seem|Wield what\?/i
put wield left my knife
	matchwait

SKIN_GO2_PAUSE:
pause
SKIN_GO2:
	match SKIN_GO you swap
	match SKIN_GO you move
	match SKIN_GO2_PAUSE type ahead
	match SKIN_GO2_PAUSE ...wait
put swap
	matchwait


SKIN_GO_PAUSE:
pause
SKIN_GO:
	echo
	echo SKIN_GO:
	echo
	match SKIN_FAIL can't be skinned
	match SKIN_FAIL flay
	match NO_SKIN skin what?
	match SKIN_GO_PAUSE ...wait
	match SKIN_GO_PAUSE type ahead
	match SKINNED .
put skin
	matchwait

NO_KNIFE_PAUSE:
pause
NO_KNIFE:
	echo
	echo NO_KNIFE:
	echo
	match SEARCH can't be skinned
	match SEARCH flay
	match SEARCH skin what?
	match NO_KNIFE_PAUSE ...wait
	match NO_KNIFE_PAUSE type ahead
	match NO_KNIFE_SKINNED .
put skin
	matchwait

NO_KNIFE_SKINNED:
pause
	echo
	echo NO_KNIFE_SKINNED:
	echo
	match SEARCH nothing in your left hand
	match NO_KNIFE_SKINNED ...wait
	match NO_KNIFE_SKINNED type ahead
	match DROP_BUN2 a lumpy bundle in your left hand
	match NO_KNIFE_%zHskinexp left hand
put glance
	matchwait

DROP_BUN2:
put drop my bundle
wait
goto NO_KNIFE_SKIN

NO_KNIFE_SKIN_STOW_PAUSE:
pause
NO_KNIFE_BUN:
NO_KNIFE_SKIN_STOW:
	echo
	echo NO_KNIFE_SKIN_STOW:
	echo
	match NO_KNIFE_SKIN_STOWA appropriate sheath
	match NO_KNIFE_SKIN_STOWA sheathe what?
	match NO_KNIFE_SKIN_STOWA where?
	match NO_KNIFE_SKIN_STOWA isn't any more
	matchre BUN /You Sheath|you slide|you place|you slip|you hang|you secure/i
	match NO_KNIFE_SKIN_STOWA you can only
	match NO_KNIFE_SKIN_STOWA too heavy
	match NO_KNIFE_SKIN_STOW_PAUSE ...wait
	match NO_KNIFE_SKIN_STOW_PAUSE type ahead
put sheath
	matchwait

NO_KNIFE_SKIN_STOWA:
	echo
	echo NO_KNIFE_SKIN_STOWA:
	echo
	match NO_KNIFE_SKIN_STOW_DROP unload
	match NO_KNIFE_SKIN_STOWB can't wear
	matchre BUN /you (sling|attach)|re already|wear what|what were you/i
put wear %1
	matchwait

NO_KNIFE_SKIN_STOWB:
	echo
	echo NO_KNIFE_SKIN_STOWB:
	echo
goto NO_KNIFE_SKIN_STOWB_%zHGET

NO_KNIFE_SKIN_STOWB_ON:
	match NO_KNIFE_SKIN_STOW_DROP too
	match BUN you put
put put my %1 %zhGetA
	matchwait

NO_KNIFE_SKIN_STOWB_OFF:
	match NO_KNIFE_SKIN_STOW_DROP too
	match BUN you put
put stow %1
	matchwait

NO_KNIFE_SKIN_STOW_DROP:
	echo
	echo NO_KNIFE_SKIN_STOW_DROP:
	echo
put drop my %1

NO_SKIN:
SKIN_FAIL:
pause
	echo
	echo SKIN_FAIL:
	echo
	goto SKIN_RE_EQUIP_%zHskinexp

SKINNED:
pause
	echo
	echo SKINNED:
	echo
	match SKIN_FAIL nothing in your left hand
	match SKINNED ...wait
	match SKINNED type ahead
	match DROP_BUN a lumpy bundle in your left hand
	match %zHskinexp left hand
put glance
	matchwait

DROP_BUN:
put drop my bundle
wait
goto SKIN2

NO_KNIFE_BUN_NO:
BUN_NO:
setvariable zHcounter %c
counter set 0
counter set %zHskins
counter add 1
setvariable zHskins %c
counter set 0
counter set %zHskinsS
counter add 1
setvariable zHskinsS %c
counter set %zHcounter
	echo
	echo BUN_NO:
	echo
goto NOBUN2

BUN:
setvariable zHcounter %c
counter set 0
counter set %zHskins
counter add 1
setvariable zHskins %c
counter set 0
counter set %zHskinsS
counter add 1
setvariable zHskinsS %c
counter set %zHcounter
	echo
	echo BUN:
	echo
put sheath
goto BUN2

BUN2_PAUSE:
pause
BUN2:
#Netzer	echo
#Netzer	echo BUN2:
#Netzer	echo
#Netzer	match %zHskindrop not yours
#Netzer	match ROPE referring
#Netzer	match BUN22 you tap
#Netzer	match BUN2_PAUSE type ahead
#Netzer	match BUN2_PAUSE ...wait
#Netzerput tap my bundle
#Netzer	matchwait
	echo
	echo BUN2:
	echo
	match %zHskindrop not yours
	match ROPE What were you
	match BUN22 you get
	match BUN22 you pick
	match BUN22 already
	match OTHER_BUN That can't be picked up.
	match BUN2_PAUSE type ahead
	match BUN2_PAUSE ...wait
put get bundle
	matchwait

OTHER_BUN:
	echo
	echo OTHER_BUN:
	echo
	match %zHskindrop not yours
	match ROPE What were you
	match BUN22 you get
	match BUN22 you pick
	match NO_BUN That can't be picked up.
	match BUN22 already
	match BUN2_PAUSE type ahead
	match BUN2_PAUSE ...wait
put get other bundle
	matchwait

BUN22_PAUSE:
pause
BUN22:
	echo
	echo BUN22:
	echo
	match BUNDONE you bundle up
	match BUNDONE you stuff
	match ROPE BUNDLE HELP
	match ROPEN try to stuff
	match ROPEN new bundle
	match BUN22_PAUSE type ahead
put bundle
	matchwait

REMBUN2:
	echo
	echo REMBUN2:
	echo
	match ROPEN you sling
	match ROPEN you remove
put remove bun
	matchwait

ROPEN:
	echo
	echo ROPEN
	echo
	match REMBUN2 you aren't holding that
	match ROPE you drop
put drop my bundle
	matchwait

ROPE:
	echo
	echo ROPE:
	echo
	match %zHskindrop I could not
	match GET_ROPE You tap
put tap bun rope
	matchwait

GET_ROPE:
	echo
	echo GET_ROPE:
	echo
	match %zHskindrop What were you
	match BUN22 you get
	match BUN22 you pick
put get bun rope
	matchwait


NOBUN:
	echo
	echo NOBUN:
	echo
goto SKIN_%zHloot


SKIN_YES_LOOT:
NO_BUN:
	echo
	echo NO_BUN:
	echo
	match NOBUN2 no matter
	match NOBUN2 any more room
	match SKIN_RE_EQUIP You put
put stow left
	matchwait

SKIN_NO_LOOT_PAUSE:
pause
NO_KNIFE_NOBUN2:
SKIN_NO_LOOT:
NOBUN2:
	echo
	echo NOBUN2:
	echo
	matchre SKIN_FAIL /nothing in your left hand|your empty hands./i
	matchre DROP_WING /wing in your left hand|wings in your left hand/i
	matchre DROP_FEATHER /feather in your left hand|feathers in your left hand/i
	matchre DROP_SHELL /shell in your left hand|shells in your left hand/i
	match DROP_PSEUDOPOD pseudopod in your left hand
	match DROP_SHEEPSKIN sheepskin in your left hand
	match DROP_TOENAIL toenail in your left hand
	match DROP_HEART heart in your left hand
	matchre DROP_FRAGMENT /fragment in your left hand|fragments in your left hand/i
	matchre DROP_FORECLAW /foreclaw in your left hand|foreclaws in your left hand/i
	match DROP_ANT antennae
	matchre DROP_BARB /barb in your left hand|barbs in your left hand/i
	matchre DROP_CLAW /claws in your left hand|claw in your left hand/i
	matchre DROP_EAR /ear in your left hand|ears in your left hand/i
	matchre DROP_EYE /eye in your left hand|eyes in your left hand/i
	match DROP_HIDE hide in your left hand
	match DROP_HOOF hoof in your left hand
	matchre DROP_HORN /horn in your left hand|horns in your left hand/i
	match DROP_PELT pelt in your left hand
	match DROP_SAC sac in your left hand
	matchre DROP_SCALE /scale in your left hand|scales in your left hand/i
	match DROP_SCALP scalp in your left hand
	match DROP_SKIN skin in your left hand
	match DROP_TAIL tail in your left hand
	matchre DROP_TUSK /tusk in your left hand|tusks in your left hand/i
	match DROP_STRIPE stripe in your left hand
	match DROP_SPINNER spinneret in your left hand
	match DROP_TALON talon in your left hand
	match DROP_CATGUT catgut in your left hand
	match DROP_QUILL quill in your left hand
	matchre DROP_FANG /fang in your left hand|fangs in your left hand/i
	match DROP_BRISTLE bristle in your left hand
	match DROP_MOSSHAIR mosshair in your left hand
	match DROP_TOOTH tooth in your left hand
	match DROP_STINGER stinger in your left hand
	matchre DROP_BEAK /beak in your left hand|beaks in your left hand/i
	match SKIN_NO_LOOT_PAUSE ...wait
	match SKIN_NO_LOOT_PAUSE type ahead
put glance
	matchwait

REMBUN:
	echo
	echo REMBUN:
	echo
	match BUNDONE you sling
	match BUNDONE you remove
put remove bun
	matchwait


BUNDONE:
#NetzerWEAR_BUN:
#Netzer	echo
#Netzer	echo WEAR_BUN:
#Netzer	echo
#Netzerpause
#Netzerput wear my bun
#Netzergoto SKIN_RE_EQUIP
	echo
	echo BUNDONE:
	echo
	match REMBUN you aren't holding that
	match SKIN_RE_EQUIP you drop
put drop my bun
	matchwait

DROP_BEAK:
	echo
	echo DROP_BEAK:
	echo
setvariable zHskin2 beak
goto DROP2

DROP_STINGER:
	echo
	echo DROP_STINGER:
	echo
setvariable zHskin2 stinger
goto DROP2

DROP_TOOTH:
	echo
	echo DROP_TOOTH:
	echo
setvariable zHskin2 tooth
goto DROP2

DROP_MOSSHAIR:
	echo
	echo DROP_MOSSHAIR:
	echo
setvariable zHskin2 mosshair
goto DROP2

DROP_BRISTLE:
	echo
	echo DROP_BRISTLE:
	echo
setvariable zHskin2 bristle
goto DROP2

DROP_FANG:
	echo
	echo DROP_FANG:
	echo
setvariable zHskin2 fang
goto DROP2

DROP_QUILL:
	echo
	echo DROP_QUILL:
	echo
setvariable zHskin2 quill
goto DROP2

DROP_CATGUT:
	echo
	echo DROP_CATGUT:
	echo
setvariable zHskin2 catgut
goto DROP2

DROP_TALON:
	echo
	echo DROP_TALON:
	echo
setvariable zHskin2 talon
goto DROP2

DROP_SPINNER:
	echo
	echo DROP_SPINNER:
	echo
setvariable zHskin2 spinneret
goto DROP2

DROP_FEATHER:
	echo
	echo DROP_FEATHER:
	echo
setvariable zHskin2 feather
goto DROP2

DROP_WING:
	echo
	echo DROP_WING:
	echo
setvariable zHskin2 wing
goto DROP2

DROP_SHELL:
	echo
	echo DROP_SHELL:
	echo
setvariable zHskin2 SHELL
goto DROP2

DROP_PSEUDOPOD:
	echo
	echo DROP_PSEUDOPOD:
	echo
setvariable zHskin2 PSEUDOPOD
goto DROP2

DROP_SHEEPSKIN:
	echo
	echo DROP_SHEEPSKIN:
	echo
setvariable zHskin2 SHEEPSKIN
goto DROP2

DROP_STRIPE:
	echo
	echo DROP_STRIPE:
	echo
setvariable zHskin2 STRIPE
goto DROP2

DROP_TOENAIL:
	echo
	echo DROP_TOENAIL:
	echo
setvariable zHskin2 TOENAIL
goto DROP2

DROP_HEART:
	echo
	echo DROP_HEART:
	echo
setvariable zHskin2 HEART
goto DROP2

DROP_FRAGMENT:
	echo
	echo DROP_FRAGMENT:
	echo
setvariable zHskin2 FRAGMENT
goto DROP2

DROP_FORECLAW:
	echo
	echo DROP_FORECLAW:
	echo
setvariable zHskin2 FORECLAW
goto DROP2

DROP_ANT:
	echo
	echo DROP_ANT:
	echo
setvariable zHskin2 antennae
goto DROP2

DROP_BARB:
	echo
	echo DROP_BARB:
	echo
setvariable zHskin2 barb
goto DROP2

DROP_CLAW:
	echo
	echo DROP_CLAW:
	echo
setvariable zHskin2 claw
goto DROP2

DROP_EAR:
	echo
	echo DROP_EAR:
	echo
setvariable zHskin2 ear
goto DROP2

DROP_EYE:
	echo
	echo DROP_EYE:
	echo
setvariable zHskin2 eye
goto DROP2

DROP_HIDE:
	echo
	echo DROP_HIDE:
	echo
setvariable zHskin2 hide
goto DROP2

DROP_HOOF:
	echo
	echo DROP_HOOF:
	echo
setvariable zHskin2 hoof
goto DROP2

DROP_HORN:
	echo
	echo DROP_HORN:
	echo
setvariable zHskin2 horn
goto DROP2

DROP_PELT:
	echo
	echo DROP_PELT:
	echo
setvariable zHskin2 pelt
goto DROP2

DROP_SAC:
	echo
	echo DROP_SAC:
	echo
setvariable zHskin2 sac
goto DROP2

DROP_SCALE:
	echo
	echo DROP_SCALE:
	echo
setvariable zHskin2 scale
goto DROP2

DROP_SCALP:
	echo
	echo DROP_SCALP:
	echo
setvariable zHskin2 scalp
goto DROP2

DROP_SKIN:
	echo
	echo DROP_SKIN:
	echo
setvariable zHskin2 skin
goto DROP2

DROP_TAIL:
	echo
	echo DROP_TAIL:
	echo
setvariable zHskin2 tail
goto DROP2

DROP_TUSK:
	echo
	echo DROP_TUSK:
	echo
setvariable zHskin2 tusk
goto DROP2

DROP2:
	echo
	echo DROP2:
	echo
	match SKIN_RE_EQUIP_%zHskinexp You drop
	match SKIN_RE_EQUIP_%zHskinexp You relax
	matchre NOBUN2 /could not|What were you|But you/i
put drop my %zHskin2
	matchwait

SKIN_RE_EQUIP_BUN_NO:
	echo
	echo SKIN_RE_EQUIP_BUN_NO:
	echo
IF_1 goto K_SKIN_RE_EQUIP2
goto K_SKIN_EQUIP_%zHtype

K_SKIN_EQUIP_GAUNT:
K_SKIN_RE_EQUIP_GAUNT:
put sheath
wait
put slap my gaunt
wait
goto SEARCH

K_SKIN_EQUIP_BRAWL:
K_SKIN_EQUIP_0:
goto KO_SEARCH

K_SKIN_RE_EQUIP2_PAUSE:
pause
K_SKIN_RE_EQUIP2:
goto K_SKIN_RE_EQUIP_%zHtype

K_SKIN_EQUIP_OFFHAND:
K_SKIN_RE_EQUIP_OFFHAND:
	echo
	echo K_SKIN_EQUIP_OFFHAND:
	echo
	match KO_SEARCH you draw
	match KO_SEARCH free to
	match KO_SEARCH re already
	match NO_SKIN free hand
	matchre K_SKIN_EQUIP_OFFHAND2 /out of reach|remove|What were you|can't seem|Wield what\?|You can only wield a weapon or a shield/i
put wield left my %1
	matchwait

K_SKIN_EQUIP_OFFHAND2:
	echo
	echo K_SKIN_EQUIP_OFFHAND2:
	echo
	match KO_SEARCH you get
	match KO_SEARCH shoulder.
	match KO_SEARCH you remove
	match KO_SEARCH already holding that.
	match KO_SEARCH inventory
	match K_SEARCH right hand
	match KO_SEARCH What were you
	match KO_SEARCH What are yo
	match NO_SKIN hands are full
put remove my %1
put get my %1
	matchwait

K_SKIN_RE_EQUIP_BRAWL:
goto K_SKIN_BRAWLTYPE_%zHbrawltype

K_SKIN_BRAWLTYPE_SHIELD_PAUSE:
pause
K_SKIN_BRAWLTYPE_SHIELD:
	echo
	echo K_SKIN_BRAWLTYPE_SHIELD:
	echo
	match KO_SEARCH you pick up
	match KO_SEARCH you get
	match KO_SEARCH you sling
	match KO_SEARCH you remove
	match KO_SEARCH already
	match K_SKIN_BRAWLTYPE_SHIELD_PAUSE ...wait
	match K_SKIN_BRAWLTYPE_SHIELD_PAUSE type ahead
put remove my %1
put get %1
	matchwait

K_SKIN_BRAWLTYPE_WEAPON:
K_SKIN_RE_EQUIP_0:
	echo
	echo K_SKIN_RE_EQUIP_0:
	echo
	match K_SEARCH you draw
	match K_SEARCH already
	match NO_SKIN free to
	matchre K_SKIN_RE_EQUIP3 /out of reach|remove|What were you|can't seem|Wield what\?/i
	match K_SKIN_RE_EQUIP3 You can only wield a weapon or a shield!
	match K_SKIN_RE_EQUIP2_PAUSE ...wait
	match K_SKIN_RE_EQUIP2_PAUSE type ahead
put wield my %1
	matchwait

K_SKIN_RE_EQUIP3_PAUSE:
pause
K_SKIN_RE_EQUIP3:
	echo
	echo K_SKIN_RE_EQUIP3:
	echo
	match K_THROW_CHECK what were you
	match K_SEARCH you pick up
	match K_SEARCH you get
	match K_SEARCH you sling
	match K_SEARCH you remove
	match K_SEARCH already
	match K_SKIN_RE_EQUIP3_PAUSE ...wait
	match K_SKIN_RE_EQUIP3_PAUSE type ahead
put remove my %1
put get %1
	matchwait

K_THROW_CHECK:
put sheath my knife
goto THROW_CHECK

KO_SEARCH:
put sheath right
wait
goto SEARCH

K_SEARCH:
put swap
wait
put sheath left
wait
goto SEARCH

SKIN_RE_EQUIP:
SKIN_RE_EQUIP_BUN:
	echo
	echo SKIN_RE_EQUIP_BUN:
	echo
IF_1 goto SKIN_RE_EQUIP2
goto SKIN_EQUIP_%zHtype

SKIN_EQUIP_GAUNT:
put slap my gaunt
wait
SKIN_EQUIP_BRAWL:
SKIN_EQUIP_0:
goto SEARCH

SKIN_RE_EQUIP2_PAUSE:
pause
SKIN_RE_EQUIP2:
goto SKIN_RE_EQUIP_%zHtype

SKIN_EQUIP_OFFHAND:
SKIN_RE_EQUIP_OFFHAND:
	echo
	echo SKIN_EQUIP_OFFHAND:
	echo
	match SEARCH you draw
	match SEARCH free to
	match SEARCH re already
	match NO_SKIN free hand
	matchre SKIN_EQUIP_OFFHAND2 /out of reach|remove|What were you|can't seem|Wield what\?|You can only wield a weapon or a shield/i
put wield left my %1
	matchwait

SKIN_EQUIP_OFFHAND2:
	echo
	echo SKIN_EQUIP_OFFHAND2:
	echo
	match SEARCH you get
	match SEARCH shoulder.
	match SEARCH you remove
	match SEARCH already holding that.
	match SEARCH inventory
	match SKIN_EQUIP_OFFHAND2_SWAP right hand
	match SEARCH What were you
	match SEARCH What are yo
	match NO_SKIN hands are full
put remove my %1
put get my %1
	matchwait

SKIN_EQUIP_OFFHAND2_SWAP_PAUSE:
pause
SKIN_EQUIP_OFFHAND2_SWAP:
	match SEARCH left hand
	match SKIN_EQUIP_OFFHAND2_SWAP_PAUSE right hand
put swap
	matchwait

SKIN_RE_EQUIP_BRAWL:
goto SKIN_RE_BRAWLTYPE_%zHbrawltype

SKIN_RE_BRAWLTYPE_SHIELD_PAUSE:
pause
SKIN_RE_BRAWLTYPE_SHIELD:
	echo
	echo SKIN_RE_BRAWLTYPE_SHIELD:
	echo
	match KO_SEARCH you pick up
	match KO_SEARCH you get
	match K_OSEARCH you sling
	match KO_SEARCH you remove
	match SEARCH already
	match SKIN_RE_BRAWLTYPE_SHIELD_PAUSE ...wait
	match SKIN_RE_BRAWLTYPE_SHIELD_PAUSE type ahead
put remove my %1
put get %1
	matchwait

SKIN_RE_BRAWLTYPE_WEAPON:
SKIN_RE_EQUIP_0:
	echo
	echo SKIN_RE_EQUIP_0:
	echo
	match K_SEARCH you draw
	match K_SEARCH re already
	match NO_SKIN free to
	matchre SKIN_RE_EQUIP3 /out of reach|remove|What were you|can't seem|Wield what\?/i
	match SKIN_RE_EQUIP3 You can only wield a weapon or a shield!
	match SKIN_RE_EQUIP2_PAUSE ...wait
	match SKIN_RE_EQUIP2_PAUSE type ahead
put wield left my %1
	matchwait

SKIN_RE_EQUIP3_PAUSE:
pause
SKIN_RE_EQUIP3:
	echo
	echo SKIN_RE_EQUIP3:
	echo
	match THROW_CHECK what were you
	match SKIN_RE_EQUIP3_KC you pick up
	match SKIN_RE_EQUIP3_KC you get
	match SKIN_RE_EQUIP3_KC you sling
	match SKIN_RE_EQUIP3_KC you remove
	match SKIN_RE_EQUIP3_KC already
	match SKIN_RE_EQUIP3_PAUSE ...wait
	match SKIN_RE_EQUIP3_PAUSE type ahead
put remove my %1
put get %1
	matchwait

SKIN_RE_EQUIP3_KC_PAUSE:
pause
SKIN_RE_EQUIP3_KC:
	echo
	echo SKIN_RE_EQUIP_KC:
	echo
	match SEARCH nothing in your left hand
	match SEARCH empty hands
	match K_SEARCH in your left hand
	match SKIN_RE_EQUIP_KC_PAUSE ...wait
	match SKIN_RE_EQUIP_KC_PAUSE type ahead
put glance
	matchwait

THROW_CHECK:
	echo
	echo THROW_CHECK:
	echo
Goto T_%c

T_2220:
T_2221:
T_2222:
T_2223:
T_1220:
T_1221:
T_1222:
T_1223:
Goto SEARCH


SEARCH_PAUSE:
pause
SEARCH:
	echo
	echo SEARCH:
	echo
	match NO_LOOT could not
	match NO_LOOT What were you
	match SEARCH_NEXT not dead
	match SEARCH_NEXT It's still alive
	match NO_LOOT picked clean
	match NO_LOOT It carried nothing of interest.
	match LOOT_LOOK You search
	match LOOT_LOOK roundtime
	match SEARCH_PAUSE ...wait
	match SEARCH_PAUSE type ahead
	match SEARCH_PAUSE roundtime
put loot %zHsearch
	matchwait

SEARCH_NEXT_PAUSE:
pause
SEARCH_NEXT:
	echo
	echo SEARCH_NEXT:
	echo
	match NO_LOOT could not
	match NO_LOOT What were you
	match SEARCH_NEXT2 not dead
	match SEARCH_NEXT2 It's still alive
	match NO_LOOT picked clean
	match NO_LOOT It carried nothing of interest.
	match LOOT_LOOK You search
	match LOOT_LOOK roundtime
	match SEARCH_NEXT_PAUSE ...wait
	match SEARCH_NEXT_PAUSE type ahead
	match SEARCH_NEXT_PAUSE roundtime
put loot other %zHkill %zHsearch
	matchwait

SEARCH_NEXT2_PAUSE:
pause
SEARCH_NEXT2:
	echo
	echo SEARCH_NEXT2:
	echo
	match NO_LOOT could not
	match NO_LOOT What were you
	match NO_LOOT not dead
	match NO_LOOT It's still alive
	match NO_LOOT picked clean
	match NO_LOOT It carried nothing of interest.
	match LOOT_LOOK You search
	match LOOT_LOOK roundtime
	match SEARCH_NEXT2_PAUSE ...wait
	match SEARCH_NEXT2_PAUSE type ahead
	match SEARCH_NEXT2_PAUSE roundtime
put loot third %zHsearch
	matchwait

SEARCH_NEXT_NOSKIN_PAUSE:
pause
SEARCH_NEXT_NOSKIN:
	echo
	echo SEARCH_NEXT_NOSKIN:
	echo
	match NO_LOOT could not
	match NO_LOOT What were you
	match SEARCH_NOSKIN_NEXT2 not dead
	match SEARCH_NOSKIN_NEXT2 It's still alive
	match NO_LOOT picked clean
	match NO_LOOT It carried nothing of interest.
	match LOOT_LOOK You search
	match LOOT_LOOK roundtime
	match SEARCH_NEXT_NOSKIN_PAUSE ...wait
	match SEARCH_NEXT_NOSKIN_PAUSE type ahead
	match SEARCH_NEXT_NOSKIN_PAUSE roundtime
put loot other %zHkill %zHsearch
	matchwait

SEARCH_NEXT2_NOSKIN_PAUSE:
pause
SEARCH_NEXT2_NOSKIN:
	echo
	echo SEARCH_NEXT2_NOSKIN:
	echo
	match NO_LOOT could not
	match NO_LOOT What were you
	match NO_LOOT not dead
	match NO_LOOT It's still alive
	match NO_LOOT picked clean
	match NO_LOOT It carried nothing of interest.
	match LOOT_SEARCH You search
	match LOOT_SEARCH roundtime
	match SEARCH_NEXT_PAUSE ...wait
	match SEARCH_NEXT_PAUSE type ahead
	match SEARCH_NEXT_PAUSE roundtime
put loot third %zHkill %zHsearch
	matchwait

LOOT_LOOK:
goto %zHloot

LOOT_SKIPPING:
Goto NO_LOOT

YES_LOOT:
goto LOOT_%zHskin

LOOT_SKIN1:
goto LOOT_%zHtype
goto BOX_%zHlootbox

LOOT_SEARCH:
IF_2 goto LOOT_REM
goto LOOT_%zHtype

LOOT_GAUNT:
put drop claw
LOOT_BRAWL:
IF_1 goto BOX_%zHlootbox
put wield my knife
wait

LOOT_OFFHAND:
LOOT_0:
goto BOX_%zHlootbox

LOOT_REM_PAUSE:
pause
LOOT_REM:
	echo
	echo LOOT_REM:
	echo
	matchre BOX_%zHlootbox /you (sling|attach)|re already|wear what|what were you/i
	match LOOT_REMA can't wear
	match LOOT_REM_PAUSE ...wait
	match LOOT_REM_PAUSE type ahead
put wear %2
	matchwait

LOOT_REMA:
	echo
	echo LOOT_REMA:
	echo
	match LOOT_REM_DROP too
	match BOX_%zHlootbox You put
	match LOOT_REM_DROP What were you
put stow %2
	matchwait

LOOT_REM_DROP:
	echo
	echo LOOT_REM_DROP:
	echo
put drop my %2

goto BOX_%zHlootbox

BOX_0:
	echo
	echo LOOT_BOXES:
	echo
#	matchre LOOT_STRONGBOX / strongbox,| strongbox\.| strongbox and /i
#	matchre LOOT_COFFER / coffer,| coffer\.| coffer and /i
#	matchre LOOT_CHEST / chest,| chest\.| chest and /i
#	matchre LOOT_CADDY / caddy,| caddy\.| caddy and /i
#	matchre LOOT_CASKET / casket,| casket\.| casket and /i
#	matchre LOOT_TRUNK / trunk,| trunk\.| trunk and /i
#	matchre LOOT_SKIPPET / skippet,| skippet\.| skippet and /i
#	matchre LOOT_CRATE / crate,| crate\.| crate and /i
#	matchre LOOT_BOX / box,| box\.| box and /i

goto LOOT_BOXES

LOOT_BOXES_COUNT:
setvariable zHcounter %c
counter set 0
counter set %zHloots
counter add 1
setvariable zHloots %c
counter set 0
counter set %zHlootsS
counter add 1
setvariable zHlootsS %c
counter set %zHcounter
goto LOOT_BOXES

LOOT_BOXES_PAUSE:
pause
LOOT_BOXES:
	match LOOT_STRONGBOX strongbox
	match LOOT_COFFER coffer
	match LOOT_CHEST chest
	match LOOT_CADDY caddy
	match LOOT_CASKET casket
	match LOOT_TRUNK trunk
	match LOOT_SKIPPET skippet
	match LOOT_CRATE crate
	match LOOT_BOX box
	match LOOT_BOXES_COUNT You put
	match GEM_%zHlootgem Stow what?
	match LOOT_BOXES_PAUSE ...wait
	match LOOT_BOXES_PAUSE type ahead
put stow boxes
	matchwait

BOX_1:
goto GEM_%zHlootgem

GEM_0:
	echo
	echo LOOT_GEMS:
	echo
#	matchre LOOT_KUNZITE / kunzite,| kunzite\.| kunzite and /i
#	matchre LOOT_IOLITE / iolite,| iolite\.| iolite and /i
#	matchre LOOT_CORAL / coral,| coral\.| coral and /i
#	matchre LOOT_IVORY / ivory,| ivory\.| ivory and /i
#	matchre LOOT_SPINEL / spinel,| spinel\.| spinel and /i
#	matchre LOOT_ONYX / onyx,| onyx\.| onyx and /i
#	matchre LOOT_GARNET / garnet,| garnet\.| garnet and /i
#	matchre LOOT_CHALCEDONY / chalcedony,| chalcedony\.| chalcedony and /i
#	matchre LOOT_LAZULI / lazuli,| lazuli\.| lazuli and /i
#	matchre LOOT_STAR-STONE / star-stone,| star-stone\.| star-stone and /i
#	matchre LOOT_SUNSTONE / sunstone,| sunstone\.| sunstone and /i
#	matchre LOOT_MOONSTONE / moonstone,| moonstone\.| moonstone and /i
#	matchre LOOT_HEMATITE / hematite,| hematite\.| hematite and /i
#	matchre LOOT_TANZANITE / tanzanite,| tanzanite\.| tanzanite and /i
#	matchre LOOT_TURQUOISE / turquoise,| turquoise\.| turquoise and /i
#	matchre LOOT_PERIDOT / peridot,| peridot\.| peridot and /i
#	matchre LOOT_BERYL / beryl,| beryl\.| beryl and /i
#	matchre LOOT_ANDALUSITE / andalusite,| andalusite\.| andalusite and /i
#	matchre LOOT_AGATE / agate,| agate\.| agate and /i
#	matchre LOOT_JADE / jade,| jade\.| jade and /i
#	matchre LOOT_CITRINE / citrine,| citrine\.| citrine and /i
#	matchre LOOT_AQUAMARINE / aquamarine,| aquamarine\.| aquamarine and /i
##added Above gems - TY Storrmm Wyndrydor
#	matchre LOOT_PEARL / pearl,| pearl\.| pearl and /i
#	matchre LOOT_SAPPHIRE / sapphire,| sapphire\.| sapphire and /i
#	matchre LOOT_OPAL / opal,| opal\.| opal and /i
#	matchre LOOT_BLOODSTONE / bloodstone,| bloodstone\.| bloodstone and /i
#	matchre LOOT_NUGGET / nugget,| nugget\.| nugget and /i
#	matchre LOOT_ZIRCON / zircon,| zircon\.| zircon and /i
#	matchre LOOT_AMETHYST / amethyst,| amethyst\.| amethyst and /i
#	matchre LOOT_QUARTZ / quartz,| quartz\.| quartz and /i
#	matchre LOOT_JASPER / jasper,| jasper\.| jasper and /i
#	matchre LOOT_BLOODGEM / bloodgem,| bloodgem\.| bloodgem and /i
#	matchre LOOT_CRYSTAL / crystal,| crystal\.| crystal and /i
#	matchre LOOT_TOPAZ / topaz,| topaz\.| topaz and /i
#	matchre LOOT_RUBY / ruby,| ruby\.| ruby and /i
#	matchre LOOT_DIOPSIDE / diopside,| diopside\.| diopside and /i
#	matchre LOOT_GEM / gem,| gem\.| gem and /i
#	matchre LOOT_RUNE / runestone,| runestone\.| runestone and /i
#	matchre LOOT_SCROLL / scroll,| scroll\.| scroll and /i
#	matchre LOOT_TABLET / tablet,| tablet\.| tablet and /i
#	matchre LOOT_EMERALD / emerald,| emerald\.| emerald and /i
#	matchre LOOT_DIAMOND / diamond,| diamond\.| diamond and /i
#	matchre LOOT_STONE / stone,| stone\.| stone and | stones,| stones\.| stones and /i



goto LOOT_GEMS

LOOT_GEMS_COUNT:
setvariable zHcounter %c
counter set 0
counter set %zHloots
counter add 1
setvariable zHloots %c
counter set 0
counter set %zHlootsS
counter add 1
setvariable zHlootsS %c
counter set %zHcounter
goto LOOT_GEMS

LOOT_GEMS_PAUSE:
pause
LOOT_GEMS:
	match LOOT_CARNELIAN carnelian.
	match LOOT_CHRYSOPRASE chrysoprase.
	match LOOT_AMBER amber.
	match LOOT_KUNZITE kunzite.
	match LOOT_IOLITE iolite.
	match LOOT_CORAL coral.
	match LOOT_IVORY ivory.
	match LOOT_SPINEL spinel.
	match LOOT_ONYX onyx.
	match LOOT_GARNET garnet.
	match LOOT_CHALCEDONY chalcedony.
	match LOOT_LAZULI lazuli.
	match LOOT_STAR-STONE star-stone.
	match LOOT_SUNSTONE sunstone.
	match LOOT_MOONSTONE moonstone.
	match LOOT_HEMATITE hematite.
	match LOOT_TANZANITE tanzanite.
	match LOOT_TURQUOISE turquoise.
	match LOOT_PERIDOT peridot.
	match LOOT_BERYL beryl.
	match LOOT_ANDALUSITE andalusite.
	match LOOT_AGATE agate.
	match LOOT_JADE jade.
	match LOOT_CITRINE citrine.
	match LOOT_AQUAMARINE aquamarine.
#added Above gems - TY Storrmm Wyndrydor.
	match LOOT_MORGANITE morganite.
	match LOOT_PEARL pearl.
	match LOOT_SAPPHIRE sapphire.
	match LOOT_OPAL opal.
	match LOOT_BLOODSTONE bloodstone.
	match LOOT_NUGGET nugget.
	match LOOT_ZIRCON zircon.
	match LOOT_AMETHYST amethyst.
	match LOOT_QUARTZ quartz.
	match LOOT_JASPER jasper.
	match LOOT_BLOODGEM bloodgem.
	match LOOT_CRYSTAL crystal.
	match LOOT_TOPAZ topaz.
	match LOOT_RUBY ruby.
	match LOOT_DIOPSIDE diopside.
	match LOOT_EMERALD emerald.
	match LOOT_DIAMOND diamond.
	match LOOT_STONE stone.
	match LOOT_STONE stones.
	match LOOT_GEM gem.
	match LOOT_GEM gems.
	match LOOT_BAR bar.
	match LOOTING Stow what?
	match LOOT_GEMS_PAUSE ...wait
	match LOOT_GEMS_PAUSE type ahead
put stow gems
	matchwait


LOOTING_PAUSE:
setvariable zHcounter %c
counter set 0
counter set %zHloots
counter add 1
setvariable zHloots %c
counter set 0
counter set %zHlootsS
counter add 1
setvariable zHlootsS %c
counter set %zHcounter
goto LOOTING
LOOTING_PAUSE1:
pause
GEM_1:
LOOTING:
	echo
	echo LOOTING:
	echo
goto JUNK_%zHlootjunk

JUNK_0:
	matchre LOOT_SHIELD / shield,| shield\.| shield and /i
	matchre LOOT_SWORD / sword,| sword\.| sword and /i
	matchre LOOT_CLOAK / cloak,| cloak\.| cloak and /i
	match JUNK_1 Encumbrance :
	matchre NO_LOOT_DARK /and you can't see a thing|Your world is a crimson haze/i
put look junk
put encumb
	matchwait

LOOT_SHIELD:
	echo
	echo LOOT_SHIELD:
	echo
save shield
goto LOOT_STOW

LOOT_SWORD:
	echo
	echo LOOT_SWORD:
	echo
save sword
goto LOOT_STOW

LOOT_CLOAK:
	echo
	echo LOOT_CLOAK:
	echo
save cloak
goto LOOT_STOW


JUNK_1:
goto COIN_%zHlootcoin

COIN_0:
	matchre LOOT_COIN / coin,| coins,| coin\.| coin and | coins\.| coins and /i
COIN_1:
	matchre LOOT_FRAG / iron fragment,| iron fragment.| iron fragment and /i
	matchre LOOT_RUNE / runestone,| runestone and| runestone\./i
	matchre LOOT_CARD / card,| card\.| card and /i
	matchre LOOT_SCROLL / scroll,| scroll\.| scroll and /i
	matchre LOOT_TABLET / tablet,| tablet\.| tablet and /i
	matchre NO_LOOT /Encumbrance :|paths:|exits:/i
	matchre NO_LOOT_DARK /and you can't see a thing|Your world is a crimson haze/i
put look other
put encum
	matchwait

LOOT_CARNELIAN:
	echo
	echo LOOT_CARNELIAN:
	echo
save carnelian
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_MORGANITE:
	echo
	echo LOOT_MORGANITE:
	echo
save morganite
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_CHRYSOPRASE:
	echo
	echo LOOT_CHRYSOPRASE:
	echo
save chrysoprase
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_AMBER:
	echo
	echo LOOT_AMBER:
	echo
save amber
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_KUNZITE:
	echo
	echo LOOT_KUNZITE:
	echo
save kunzite
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_IOLITE:
	echo
	echo LOOT_IOLITE:
	echo
save iolite
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_CORAL:
	echo
	echo LOOT_CORAL:
	echo
save coral
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_IVORY:
	echo
	echo LOOT_IVORY:
	echo
save ivory
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_SPINEL:
	echo
	echo LOOT_SPINEL:
	echo
save spinel
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_ONYX:
	echo
	echo LOOT_ONYX:
	echo
save onyx
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_GARNET:
	echo
	echo LOOT_GARNET:
	echo
save garnet
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
goto LOOT_STOW

LOOT_CHALCEDONY:
	echo
	echo LOOT_CHALCEDONY:
	echo
save chalcedony
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_LAZULI:
	echo
	echo LOOT_LAZULI:
	echo
save lazuli
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_STAR-STONE:
	echo
	echo LOOT_STAR_STONE:
	echo
save star-stone
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_SUNSTONE:
	echo
	echo LOOT_SUNSTONE:
	echo
save sunstone
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_MOONSTONE:
	echo
	echo LOOT_MOONSTONE:
	echo
save moonstone
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_HEMATITE:
	echo
	echo LOOT_HEMATITE:
	echo
save hematite
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_TANZANITE:
	echo
	echo LOOT_TANZANITE:
	echo
save tanzanite
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_TURQUOISE:
	echo
	echo LOOT_TURQUOISE:
	echo
save turquoise
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_PERIDOT:
	echo
	echo LOOT_PERIDOT:
	echo
save peridot
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_BERYL:
	echo
	echo LOOT_BERYL:
	echo
save beryl
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_ANDALUSITE:
	echo
	echo LOOT_ANDALUSITE:
	echo
save andalusite
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_AGATE:
	echo
	echo LOOT_AGATE:
	echo
save agate
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_JADE:
	echo
	echo LOOT_JADE:
	echo
save jade
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_CITRINE:
	echo
	echo LOOT_CITRINE:
	echo
save citrine
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_AQUAMARINE:
	echo
	echo LOOT_AQUAMARINE:
	echo
save aquamarine
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_EMERALD:
	echo
	echo LOOT_EMERALD:
	echo
save emerald
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_DIAMOND:
	echo
	echo LOOT_DIAMOND:
	echo
save diamond
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	match LOOTING Stow what?
	matchwait
goto LOOT_STOW

LOOT_STRONGBOX:
	echo
	echo LOOT_STRONGBOX:
	echo
save strongbox
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_BOXES_COUNT You put
	match GEM_%zHlootgem Stow what?
	matchwait

LOOT_COFFER:
	echo
	echo LOOT_COFFER:
	echo
save coffer
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_BOXES_COUNT You put
	match GEM_%zHlootgem Stow what?
	matchwait

LOOT_CHEST:
	echo
	echo LOOT_CHEST:
	echo
save chest
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_BOXES_COUNT You put
	match GEM_%zHlootgem Stow what?
	matchwait

LOOT_BOX:
	echo
	echo LOOT_BOX:
	echo
save box
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_BOXES_COUNT You put
	match GEM_%zHlootgem Stow what?
	matchwait

LOOT_CADDY:
	echo
	echo LOOT_CADDY:
	echo
save caddy
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_BOXES_COUNT You put
	match GEM_%zHlootgem Stow what?
	matchwait

LOOT_CASKET:
	echo
	echo LOOT_CASKET:
	echo
save casket
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_BOXES_COUNT You put
	match GEM_%zHlootgem Stow what?
	matchwait

LOOT_TRUNK:
	echo
	echo LOOT_TRUNK:
	echo
save trunk
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_BOXES_COUNT You put
	match GEM_%zHlootgem Stow what?
	matchwait

LOOT_SKIPPET:
	echo
	echo LOOT_SKIPPET:
	echo
save skippet
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_BOXES_COUNT You put
	match GEM_%zHlootgem Stow what?
	matchwait

LOOT_CRATE:
	echo
	echo LOOT_CRATE:
	echo
save crate
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_BOXES_COUNT You put
	match GEM_%zHlootgem Stow what?
	matchwait

#LOOT_STRONGBOX:
#	echo
#	echo LOOT_STRONGBOX:
#	echo
#save strongbox
#goto LOOT_STOW
#
#LOOT_COFFER:
#	echo
#	echo LOOT_COFFER:
#	echo
#save coffer
#goto LOOT_STOW
#
#LOOT_CHEST:
#	echo
#	echo LOOT_CHEST:
#	echo
#save chest
#goto LOOT_STOW
#
#LOOT_BOX:
#	echo
#	echo LOOT_BOX:
#	echo
#save box
#goto LOOT_STOW
#
#LOOT_CADDY:
#	echo
#	echo LOOT_CADDY:
#	echo
#save caddy
#goto LOOT_STOW
#
#LOOT_CASKET:
#	echo
#	echo LOOT_CASKET:
#	echo
#save casket
#goto LOOT_STOW
#
#LOOT_TRUNK:
#	echo
#	echo LOOT_TRUNK:
#	echo
#save trunk
#goto LOOT_STOW
#
#LOOT_SKIPPET:
#	echo
#	echo LOOT_SKIPPET:
#	echo
#save skippet
#goto LOOT_STOW
#
#LOOT_CRATE:
#	echo
#	echo LOOT_CRATE:
#	echo
#save crate
#goto LOOT_STOW

LOOT_PEARL:
	echo
	echo LOOT_PEARL:
	echo
save pearl
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_SAPPHIRE:
	echo
	echo LOOT_SAPPHIRE:
	echo
save sapphire
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_OPAL:
	echo
	echo LOOT_OPAL:
	echo
save opal
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_BLOODSTONE:
	echo
	echo LOOT_BLOODSTONE:
	echo
save bloodstone
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_NUGGET:
	echo
	echo LOOT_NUGGET:
	echo
save nugget
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_ZIRCON:
	echo
	echo LOOT_ZIRCON:
	echo
save zircon
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_AMETHYST:
	echo
	echo LOOT_AMETHYST:
	echo
save amethyst
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_QUARTZ:
	echo
	echo LOOT_QUARTZ:
	echo
save quartz
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_JASPER:
	echo
	echo LOOT_JASPER:
	echo
save jasper
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_STONE:
	echo
	echo LOOT_STONE:
	echo
save stone
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_BLOODGEM:
	echo
	echo LOOT_BLOODGEM:
	echo
save bloodgem
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_CRYSTAL:
	echo
	echo LOOT_CRYSTAL:
	echo
save crystal
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_TOPAZ:
	echo
	echo LOOT_TOPAZ:
	echo
save topaz
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_RUBY:
	echo
	echo LOOT_RUBY:
	echo
save ruby
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_DIOPSIDE:
	echo
	echo LOOT_DIOPSIDE:
	echo
save diopside
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_BAR:
	echo
	echo LOOT_BAR:
	echo
save bar
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_GEM:
	echo
	echo LOOT_GEM:
	echo
save gem
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOT_GEMS_COUNT You put
	matchwait
goto LOOT_STOW

LOOT_RUNE:
	echo
	echo LOOT_RUNE:
	echo
save rune
goto LOOT_STOW

LOOT_SCROLL:
	echo
	echo LOOT_SCROLL:
	echo
save scroll
goto LOOT_STOW

LOOT_TABLET:
	echo
	echo LOOT_TABLET:
	echo
save tablet
goto LOOT_STOW

LOOT_CARD:
	echo
	echo LOOT_CARD:
	echo
save card
goto LOOT_STOW

LOOT_FRAG:
	echo
	echo LOOT_FRAG:
	echo
save fragment
goto LOOT_STOW

LOOT_STOW:
	match LOOT_DROP no matter
	match LOOT_DROP any more room
	match LOOTING_PAUSE You put
	match LOOT_LOOK_NO stow what
put stow %s
	matchwait


LOOT_COIN:
put get coin
waitfor you
put get coin
waitfor you
	goto LOOTING_PAUSE

LOOT_LOOK_NO:
	echo
	echo LOOT_LOOK_NO:
	echo
	echo **************************************************************************************
	echo ** Couldn't find %s%. Looting skipped.  (check room description)
	echo ** Type 'set !desc' to turn off room Descriptions for better looting.
	echo ** Type 'set desc' to turn them back on.
	echo **************************************************************************************
	echo
IF_2 goto LOOT_EQUIP
goto CHOKE_%zHtype

LOOT_DROP:
	echo
	echo LOOT_DROP:
	echo
put drop my %s
	echo
	echo ********************************
	echo ** Out of room to store Loot!
	echo ********************************
	echo
IF_2 goto LOOT_EQUIP
goto CHOKE_%zHtype

NO_LOOT_DARK:
	echo
	echo ********************************
	echo ** The room is too dark to loot!
	echo ********************************
	echo
IF_2 goto LOOT_EQUIP
goto CHOKE_%zHtype

NO_LOOT:
	echo
	echo NO_LOOT:
	echo
IF_2 goto LOOT_EQUIP
goto CHOKE_%zHtype

LOOT_EQUIP_PAUSE:
pause
LOOT_EQUIP:
	echo
	echo LOOT_EQUIP:
	echo
	match Loot_equip_pause ...wait
	match loot_equip_pause type ahead
	match CHOKE_POINT What were you
	match CHOKE_POINT You aren't
	match CHOKE_POINT you pick up
	match CHOKE_POINT you get
	match CHOKE_POINT you sling
	match CHOKE_POINT already
	match CHOKE_POINT you remove
put remove my %2
put get my %2
	matchwait

CHOKE_GAUNT:
put sheath my knife
put slap my gaunt
wait
goto CHOKE_POINT

CHOKE_BRAWL:
put sheath my knife
wait
goto CHOKE_POINT

CHOKE_OFFHAND:
CHOKE_0:
CHOKE_POINT:
	echo
	echo CHOKE_POINT:
	echo
goto KILL_COUNT


KILL_COUNT:
echo
echo ******************************************
echo ** Random Stats with SFhunter:
echo **            This Session / Overall
echo ** # of Kills Made::  %zHkillsS / %zHkills
echo ** Successful Skins:  %zHskinsS / %zHskins
echo ** Loot Grabbed:::::  %zHlootsS / %zHloots
echo ******************************************
echo

## XP Mind State by Chris Evans
XP_CHECK1:
	matchre XPSLEEP /(: Thick|: Very Thick|: Dense|: Very Dense|: Stagnant|: Very Stagnant|: Frozen|: Very Frozen)/i
	matchre XP%zHxpsleep /(: Murky|: Very Murky)/i
	matchre XPAWAKE /(: clear|: fluid)/i
put skill
	matchwait

XP_CHECK2:
pause 1
goto Multi_%zHmulti


XPSLEEP:
setvariable zHxpsleep SLEEP
put sleep
goto XP_CHECK2


XP%zHxpsleep:
XPAWAKE:
setvariable zHxpsleep AWAKE
put awaken
goto XP_CHECK2
## XP Mindstate by Chris Evans

goto Multi_%zHmulti

MULTI_ON:
	echo
	echo MULTI_ON:
	echo
Goto MULTIB_%zHexpB

MULTIB_OFF:
	echo
	echo MULTIB_OFF:
	echo
	match MULTI_EXP_%zHexpC % clear
	match MULTI_EXP_%zHexpC % learning
	match MULTI_EXP_%zHexpC % thoughtful
	match MULTI_EXP_%zHexpC % pondering
	match MULTI_EXP_%zHexpC % concentrating
	match MULTI_EXP_%zHexpC % muddled
	match MULTI_EXP_%zHexpC % very muddled
	match MULTI_EXP_%zHexpC % perplex
	match MULTI_EXP_%zHexpC Deaths:
	match MULTI_SWITCH % bewild
	match MULTI_SWITCH % dazed
	match MULTI_SWITCH % mind
put skill %zHexp
	matchwait
	

MULTIB_ON:
	echo
	echo MULTIB_ON:
	echo
	match MULTI_EXP_%zHexpC % clear
	match MULTI_EXP_%zHexpC % learning
	match MULTI_EXP_%zHexpC % thoughtful
	match MULTI_EXP_%zHexpC % pondering
	match MULTI_EXP_%zHexpC % concentrating
	match MULTI_EXP_%zHexpC % muddled
	match MULTI_EXP_%zHexpC % very muddled
	match MULTI_EXP_%zHexpC % perplex
	match MULTI_EXP_%zHexpC Deaths:
	match MULTI_SWITCH % bewild
	match MULTI_SWITCH % dazed
	match MULTI_SWITCH % mind
put skill %zHexpA
	matchwait
	
MULTIB_THROW:
	echo
	echo MULTIB_THROW:
	echo
	match MULTIB_THROW2 % clear
	match MULTIB_THROW2 % learning
	match MULTIB_THROW2 % thoughtful
	match MULTIB_THROW2 % pondering
	match MULTIB_THROW2 % concentrating
	match MULTIB_THROW2 % muddled
	match MULTIB_THROW2 % very muddled
	match MULTIB_THROW2 % perplex
	match MULTIB_THROW2 Deaths:
	match MULTI_SWITCH % bewild
	match MULTI_SWITCH % dazed
	match MULTI_SWITCH % mind
put skill Light Thrown
	matchwait

MULTIB_THROW2:
	echo
	echo MULTIB_THROW2:
	echo
	match MULTI_EXP_%zHexpC % clear
	match MULTI_EXP_%zHexpC % learning
	match MULTI_EXP_%zHexpC % thoughtful
	match MULTI_EXP_%zHexpC % pondering
	match MULTI_EXP_%zHexpC % concentrating
	match MULTI_EXP_%zHexpC % muddled
	match MULTI_EXP_%zHexpC % very muddled
	match MULTI_EXP_%zHexpC % perplex
	match MULTI_EXP_%zHexpC Deaths:
	match MULTI_SWITCH % bewild
	match MULTI_SWITCH % dazed
	match MULTI_SWITCH % mind
put skill Heavy Thrown
	matchwait

MULTIB_OFFHAND:
	echo
	echo MULTIB_OFFHAND:
	echo
	match MULTI_EXP_%zHexpC % clear
	match MULTI_EXP_%zHexpC % learning
	match MULTI_EXP_%zHexpC % thoughtful
	match MULTI_EXP_%zHexpC % pondering
	match MULTI_EXP_%zHexpC % concentrating
	match MULTI_EXP_%zHexpC % muddled
	match MULTI_EXP_%zHexpC % very muddled
	match MULTI_EXP_%zHexpC % perplex
	match MULTI_EXP_%zHexpC Deaths:
	match MULTI_SWITCH % bewild
	match MULTI_SWITCH % dazed
	match MULTI_SWITCH % mind
put skill %zHexpB
	matchwait

MULTI_SWITCH:
	echo
	echo MULTI_SWITCH:
	echo
put retreat
put retreat
waitfor you
pause
Goto MULTI_SWITCH_%zHexpB

MULTI_SWITCH_OFF:
goto MULTI_SWITCH_%zHexp

MULTI_SWITCH_UNL:
put unload my %1
goto MULTI_SWITCH_%zHexp

MULTI_SWITCH_TARGET:
MULTI_SWITCH_PRIMARY:
goto MULTI_SWITCH_%zHexpM

MULTI_SWITCH_BOW_PAUSE:
pause
MULTI_SWITCH_BOW:
MULTI_SWITCH_Short.Bow:
MULTI_SWITCH_Long.Bow:
MULTI_SWITCH_Composite.Bow:
IF_2 goto MULTI_AMMO_UNEQUIP
MULTI_SWITCH_AMMO_BOW:
MULTI_SWITCH_AMMO_Short.Bow:
MULTI_SWITCH_AMMO_Long.Bow:
MULTI_SWITCH_AMMO_Composite.Bow:
	echo
	echo MULTI_SWITCH_BOW:
	echo
	match MULTI_SWITCH_ON what are you
	match MULTI_SWITCH_BOW you pull
	match MULTI_SWITCH_BOW you pick up
	match MULTI_SWITCH_BOW you put
	match MULTI_SWITCH_ON stow what
	match MULTI_SWITCH_UNL You must unload
	match MULTI_SWITCH_BOW_PAUSE ...wait
	match MULTI_SWITCH_BOW_PAUSE type ahead
put stow %zHammo
put stow %zHammo
	matchwait
	

MULTI_SWITCH_XBOW_PAUSE:
pause
MULTI_SWITCH_XBOW:
MULTI_SWITCH_Heavy.Crossbow:
MULTI_SWITCH_Light.Crossbow:
IF_2 goto MULTI_AMMO_UNEQUIP
MULTI_SWITCH_AMMO_XBOW:
MULTI_SWITCH_AMMO_Heavy.Crossbow:
MULTI_SWITCH_AMMO_Light.Crossbow:
	echo
	echo MULTI_SWITCH_XBOW:
	echo
	match MULTI_SWITCH_ON what are you
	match MULTI_SWITCH_XBOW you pull
	match MULTI_SWITCH_XBOW you pick up
	match MULTI_SWITCH_XBOW you put
	match MULTI_SWITCH_ON stow what
	match MULTI_SWITCH_UNL You must unload
	match MULTI_SWITCH_XBOW_PAUSE ...wait
	match MULTI_SWITCH_XBOW_PAUSE type ahead
put stow %zHammo
put stow %zHammo
	matchwait

MULTI_SWITCH_SLING_PAUSE:
pause
MULTI_SWITCH_SLING:
MULTI_SWITCH_Staff.Sling:
IF_2 goto MULTI_AMMO_UNEQUIP
MULTI_SWITCH_AMMO_SLING:
MULTI_SWITCH_AMMO_Staff.Sling:
	echo
	echo MULTI_SWITCH_SLING:
	echo
	match MULTI_SWITCH_ON what are you
	match MULTI_SWITCH_SLING you pull
	match MULTI_SWITCH_SLING you pick up
	match MULTI_SWITCH_SLING you put
	match MULTI_SWITCH_ON stow what
	match MULTI_SWITCH_UNL You must unload
	match MULTI_SWITCH_SLING_PAUSE ...wait
	match MULTI_SWITCH_SLING_PAUSE type ahead
put stow %zHammo
put stow %zHammo
	matchwait

MULTI_AMMO_UNEQUIP_PAUSE:
pause
MULTI_AMMO_UNEQUIP:
	echo
	echo MULTI_AMMO_UNEQUIP:
	echo
	matchre MULTI_SWITCH_AMMO_%zHexp /you (sling|attach)|re already|wear what|what were you/i
	match MULTI_AMMO_UNEQUIPA can't wear
	match MULTI_AMMO_UNEQUIP_PAUSE ...wait
	match MULTI_AMMO_UNEQUIP_PAUSE type ahead
put wear %2
	matchwait

MULTI_AMMO_UNEQUIPA:
	echo
	echo MULTI_AMMO_UNEQUIPA:
	echo
put stow %2
wait
goto MULTI_SWITCH_AMMO_%zHexp

MULTI_SWITCH_Light.Edged:
MULTI_SWITCH_Medium.Edged:
MULTI_SWITCH_Heavy.Edged:
MULTI_SWITCH_Twohanded.Edged:
MULTI_SWITCH_Light.Blunt:
MULTI_SWITCH_Medium.Blunt:
MULTI_SWITCH_Twohanded.Blunt:
MULTI_SWITCH_Heavy.Blunt:
MULTI_SWITCH_Short.Staff:
MULTI_SWITCH_Quarter.Staff:
MULTI_SWITCH_Pike:
MULTI_SWITCH_Halberd:
MULTI_SWITCH_THROW:
MULTI_SWITCH_ON:
counter set %zHmultiZ
counter add 1
setvariable zHmultiZ %c
put retreat
put retreat
waitfor you
pause
IF_2 goto UNEQUIP_STOW2
IF_1 goto UNEQUIP_STOW
goto MULTI_GO


UNEQUIP_STOW2_PAUSE:
pause
UNEQUIP_STOW2:
	echo
	echo UNEQUIP_STOW2:
	echo
	matchre UNEQUIP_STOW /you (sling|attach)|re already|wear what|what were you/i
	match UNEQUIP_STOW2A can't wear
	match UNEQUIP_STOW2_PAUSE ...wait
	match UNEQUIP_STOW2_PAUSE type ahead
put wear %2
	matchwait

UNEQUIP_STOW2A:
	echo
	echo UNEQUIP_STOW2A:
	echo
put stow %2
wait

UNEQUIP_STOW_PAUSE:
pause
UNEQUIP_STOW:
	echo
	echo UNEQUIP_STOW:
	echo
	match UNEQUIP_STOWA appropriate sheath
	match UNEQUIP_STOWA sheathe what?
	match UNEQUIP_STOWA where?
	match UNEQUIP_STOWA isn't any more
	matchre MULTI_GO /You Sheath|you slide|you place|you slip|you hang|you secure/i
	match UNEQUIP_STOWA you can only
	match UNEQUIP_STOWA too heavy
	match UNEQUIP_STOW_PAUSE ...wait
	match UNEQUIP_STOW_PAUSE type ahead
put sheath
	matchwait

UNEQUIP_STOWA:
	echo
	echo UNEQUIP_STOWA:
	echo
	match UNEQUIP_STOW_DROP unload
	match UNEQUIP_STOWB can't wear
	matchre MULTI_GO /you (sling|attach)|re already|wear what|what were you/i
put wear %1
	matchwait

UNEQUIP_STOW_DROP:
	echo
	echo UNEQUIP_STOW_DROP:
	echo
put drop my %1
put drop my claw
wait
goto MULTI_GO

UNEQUIP_STOWB:
	echo
	echo UNEQUIP_STOWB:
	echo
goto UNEQUIP_STOWB_%zHget


UNEQUIP_STOWB_ON:
put put my %1 %zhGetA
wait
goto MULTI_GO

UNEQUIP_STOWB_OFF:
put stow %1
put drop my claw
wait
goto MULTI_GO

MULTI_SWITCH_OFFHAND:
counter set %zHmultiZ
counter add 1
setvariable zHmultiZ %c
IF_2 goto OFF_UNEQUIP_STOW2
IF_1 goto OFF_UNEQUIP_STOW
goto MULTI_GO


OFF_UNEQUIP_STOW2_PAUSE:
pause
OFF_UNEQUIP_STOW2:
	echo
	echo OFF_UNEQUIP_STOW2:
	echo
	matchre OFF_UNEQUIP_STOW /you (sling|attach)|re already|wear what|what were you/i
	match OFF_UNEQUIP_STOW2A can't wear
	match OFF_UNEQUIP_STOW2_PAUSE ...wait
	match OFF_UNEQUIP_STOW2_PAUSE type ahead
put wear %2
	matchwait

OFF_UNEQUIP_STOW2A:
	echo
	echo OFF_UNEQUIP_STOW2A:
	echo
put stow %2
wait

OFF_UNEQUIP_STOW_PAUSE:
pause
OFF_UNEQUIP_STOW:
	echo
	echo OFF_UNEQUIP_STOW:
	echo
	match OFF_UNEQUIP_STOWA appropriate sheath
	match OFF_UNEQUIP_STOWA sheathe what?
	match OFF_UNEQUIP_STOWA where?
	match OFF_UNEQUIP_STOWA isn't any more
	matchre MULTI_GO /You Sheath|you slide|you place|you slip|you hang|you secure/i
	match OFF_UNEQUIP_STOWA you can only
	match OFF_UNEQUIP_STOWA too heavy
	match OFF_UNEQUIP_STOW_PAUSE ...wait
	match OFF_UNEQUIP_STOW_PAUSE type ahead
put sheath
	matchwait

OFF_UNEQUIP_STOWA:
	echo
	echo OFF_UNEQUIP_STOWA:
	echo
	match OFF_UNEQUIP_STOW_DROP unload
	match OFF_UNEQUIP_STOWB can't wear
	matchre MULTI_GO /you (sling|attach)|re already|wear what|what were you/i
put wear %1
	matchwait

OFF_UNEQUIP_STOW_DROP:
	echo
	echo OFF_UNEQUIP_STOW_DROP:
	echo
put drop my %1
goto MULTI_GO

OFF_UNEQUIP_STOWB:
	echo
	echo OFF_UNEQUIP_STOWB:
	echo
put stow left %1
wait
goto MULTI_GO

MULTI_GO:
#goto MULTI_BRA_%zHexpA

#MULTI_BRA_BRAWLING:
#MULTI_BRA_OFF:
#MULTI_BRA_BACKSTAB:
#MULTI_BRA_STALKING:
	echo
	echo MULTI_GO:
	echo
put retreat
put retreat
waitfor you
pause
pause
put .SFhunter Multi %zHmultiZ

MULTI_OFF:
	echo
	echo MULTI_OFF:
	echo
MULTI_EXP_OFF:
MULTI_EXP_ON:
goto %zHmonsterapp


YES_APP:
	match NO_APP roundtime
	match NO_APP appraise
	match NO_APP You can't determine
	match NO_APP You cannot appraise
put app %zHkill quick
	matchwait

NO_APP:
goto COM1_%zHCOM1

COM1_PAUSE:
pause
COM1_ON:
	matchre COM1_PAUSE /\.\.\.wait|type ahead/i
	match COM1_OFF Encumbrance :
put %zHcom1
put encum
	matchwait
COM1_OFF:
goto COM2_%zHCOM2

COM2_PAUSE:
pause
COM2_ON:
	matchre COM2_PAUSE /\.\.\.wait|type ahead/i
	match COM2_OFF Encumbrance :
put %zHcom2
put encum
	matchwait
COM2_OFF:
goto COM3_%zHCOM3

COM3_PAUSE:
pause
COM3_ON:
	matchre COM3_PAUSE /\.\.\.wait|type ahead/i
	match COM3_OFF Encumbrance :
put %zHcom3
put encum
	matchwait
COM3_OFF:
goto COM4_%zHCOM4

COM4_PAUSE:
pause
COM4_ON:
	matchre COM4_PAUSE /\.\.\.wait|type ahead/i
	match COM4_OFF Encumbrance :
put %zHcom4
put encum
	matchwait
COM4_OFF:
goto COM5_%zHCOM5

COM5_PAUSE:
pause
COM5_ON:
	matchre COM5_PAUSE /\.\.\.wait|type ahead/i
	match COM5_OFF Encumbrance :
put %zHcom5
put encum
	matchwait
COM5_OFF:
goto COUNT_%zHcount

COUNT_ON_PAUSE:
pause
EXP_COUNT_ON:
COUNT_ON:
	match COUNT_ON_PAUSE ...wait
goto %zHCOUNT

COUNT_ONE:
	match CLEAR_CRITTERS you notice only one
COUNT_TWO:
	match CLEAR_CRITTERS you notice two
COUNT_THREE:
	match CLEAR_CRITTERS you notice three
COUNT_FOUR:
	match CLEAR_CRITTERS you notice four
COUNT_FIVE:
	match CLEAR_CRITTERS you notice five
COUNT_SIX:
	match CLEAR_CRITTERS you notice six
COUNT_SEVEN:
	match CLEAR_CRITTERS you notice seven
COUNT_EIGHT:
	match CLEAR_CRITTERS you notice eight
COUNT_NINE:
	match CLEAR_CRITTERS you notice nine
COUNT_TEN:
	match CLEAR_CRITTERS you notice ten
COUNT_ELEVEN:
	match CLEAR_CRITTERS you notice eleven
COUNT_TWELVE:
	match CLEAR_CRITTERS you notice twelve
COUNT_THIRTEEN:
	match CLEAR_CRITTERS you notice thirteen
COUNT_FOURTEEN:
	match CLEAR_CRITTERS you notice fourteen
COUNT_FIFTEEN:
	match CLEAR_CRITTERS you notice fifteen
COUNT_SIXTEEN:
	match CLEAR_CRITTERS you notice sixteen
COUNT_SEVENTEEN:
	match CLEAR_CRITTERS you notice seventeen
COUNT_EIGHTEEN:
	match CLEAR_CRITTERS you notice eighteen
COUNT_NINETEEN:
	match CLEAR_CRITTERS you notice nineteen
COUNT_PLUS:
	echo
	echo COUNT_PLUS:
	echo
	match CLEAR_CRITTERS you notice twenty
	match CLEAR_CRITTERS you notice thirty
	match CLEAR_CRITTERS you notice forty
	match CLEAR_CRITTERS you notice fifty
	match CLEAR_CRITTERS you notice sixty
	match CLEAR_CRITTERS you notice seventy
	match CLEAR_CRITTERS you notice eighty
	match CLEAR_CRITTERS you notice ninety
	match CLEAR_CRITTERS hundred
	match CLEAR_CRITTERS thousand
	match COUNT_5_1 You notice no 
	match CRITTER_COUNTS roundtime
put count critter
	matchwait

CRITTER_COUNTS:
setvariable zHcounter %c
counter set 0
counter set %zHcritters
counter add 1
setvariable zHcritters %c
counter set %zHcounter
echo
echo ********************
echo ** Dance number %zHcritters
echo ********************
echo 
goto COUNT_5_1

CLEAR_CRITTERS:
setvariable zHcritters 0
echo
echo ***************************
echo ** The Dance is now over **
echo ***************************
echo

COUNT_OFF:
goto %c


HELP:
	echo
	echo **************************************************************************************
	echo **
	echo ** Weapons
	echo ** Shields
	echo ** Ambushing
	echo ** Appraisal
	echo ** Backstabbing
	echo ** Brawling
	echo ** COMs
	echo ** Count Critters
	echo ** Choke
	echo ** Default Setting
	echo ** Dancing
	echo ** Empathic Brawling
	echo ** Experience Checks
	echo ** Looting Options
	echo ** Magic
	echo ** Multi Skill Training
	echo ** Poaching
	echo ** Repeating Crossbows
	echo ** Searching Options
	echo ** Skinning Options
	echo ** Slower Fighting
	echo ** Sniping
	echo ** Snapfiring
	echo ** Swappable Weapons (Bastard swords etc.)
	echo ** Syntax Full
	echo ** Thrown / Offhand Thrown / Throwing Vines|Logs
	echo ** Wearing Equipment
	echo ** Personalizations
	echo **
	echo ** Please type one of the above options for details.
	echo **
	echo **************************************************************************************
	echo
	match HELP_COUNT count
	match HELP_COMMAND coms
	match HELP_WEAR wear
	match HELP_SWAP swap
	match HELP_MULTI multi
	match HELP_SHIELD shield
	match HELP_LOOT loot
	match HELP_SKIN skin
	match HELP_APP appr
	match HELP_STANCE stance
	matchre HELP_DEF /defa|sett/i
	matchre HELP_BRAWL /brawl|chok/i
	matchre HELP_EMPATH /danc|empath/i
	match HELP_AMBUSH ambush
	match HELP_BACK back
	matchre HELP_POACH /poach|snip/i
	match HELP_REPEAT repeat
	match HELP_SNAP snap
	match HELP_SLOW slow
	matchre HELP_THROWN /off|vine|throw|log/i
	match HELP_SYNTAX synt
	match HELP_PERS person
	match HELP_MAGIC magic
	match HELP_EXP exp
	match HELP_WEAPON weap
	match HELP_SEARCH sear
	matchwait

HELP_
echo
echo **************************************************************************************
echo **
echo **
echo **
echo **
echo **
echo **************************************************************************************
echo
pause 5
goto HELP
pause 10
goto HELP_FRONT

HELP_SEARCH:
echo
echo **************************************************************************************
echo ** The script can be instructed to search dead critters for specific types of loot
echo ** per the in game LOOT verb. The Commands are:
echo **
echo ** SEARCHTREASURE, SEARCHBOXES, SEARCHEQUIPMENT, SEARCHGOODS, SEARCHALL 
echo ** Or you can use ST, SB, SE, SG, SA
echo **
echo ** Example: 
echo **  .SFhunter SB <weapon>
echo **     This will make the script "loot <critter> boxes" when searching kills.
echo **************************************************************************************
echo
pause 10
goto HELP_FRONT
HELP_COUNT:
echo
echo **************************************************************************************
echo ** It is possible to have the script Dance with a certain number of critters without
echo ** killing them. The Script will do 'Emapthic Brawling' until MORE THAN the number
echo ** of critters you designate is in the room. (NOT at melee. NOT on you. IN THE ROOM.)
echo **
echo ** In line with Simu's new 'inactivity' system dacnign will make one kill before
echo ** five minute 'timer' that will trigger critters to leave the room.
echo **
echo ** .SFhunter Count #
echo **
echo ** Example:
echo **  .SFhunter Count 3 Scimitar
echo **     You will Dance until there are 4 critters, then attack until there are only
echo **     3 again.
echo **************************************************************************************
echo
pause 10
goto HELP_FRONT
HELP_COMMAND:
echo
echo **************************************************************************************
echo ** The script now enables you to input your own personal commands. This commands
echo **   occur after each kill, or before engaging the first monster to enter an empty
echo **   room. You can enter up to 5 commands to be done one after the other.
echo **
echo **   NOTE: Appraisal is done at the same time as commands, keep roundtimes in mind.
echo **
echo ** .SFhunter Com1 comm.and ... Com5 comm.and  (use the periods for multiple words)
echo **
echo **   NOTE: When combined with Default or Multi-Weapon set-ups you will need to manually
echo **          re-add the periods via SF's Variable window.   Variable Names: zHmulti1-20
echo **
echo ** Examples:
echo **  .SFhunter Com1 sing.dmrs Com2 concentrate
echo **  .SFhunter Com1 roar.trothfang Com2 assess
echo **  .SFhunter Com1 point.%zHkill Com2 say.Next!
echo ** NOTE: %zHkill is the name of the critter you last killed. There will need to be a
echo **          second one for it to work %100. (Appraisal uses %zHkill)
echo **************************************************************************************
echo
pause 10
goto HELP_FRONT
HELP_WEAR:
echo
echo **************************************************************************************
echo ** The script is able to equip items for you.
echo ** You can do this for multiple pieces of equipment.
echo **
echo ** Remove:
echo ** The script will REMOVE then STOW the item.
echo **
echo ** Wear:
echo ** The script will GET then WEAR the item.
echo **
echo ** .SFhunter remove <item> wear <item> (rest of fighting set-up)
echo **************************************************************************************
echo
pause 10
goto HELP_FRONT
HELP_EXP:
echo
echo **************************************************************************************
echo ** The script has two methods of Checking Experience.
echo **   The Main method is using the 'Mutli' command, where the script will check Exp
echo ** and switch weapons to your next set-up when needed. (See the Multi-weapon section)
echo **
echo **	  The second Method is using the 'EXP' variable. This causes the script to input
echo ** 'exp' everytime a weapon cycles or a kill is made. There is no actual skill check
echo ** via the script with this option, it simply displays you current field exp.
echo **
echo **   However, if you use the EXP variable inside a Multi-Weapon Setup it will check
echo ** your weapon EXP every cycle and switch to your next setup as needed. This is great
echo ** for backtraining weapons when you can't kill the critter with your current skill.
echo **
echo ** Syntax: .SFhunter EXP <weapon> (shield)
echo **************************************************************************************
echo
pause 5
goto HELP_FRONT
HELP_MAGIC:
echo
echo **************************************************************************************
echo ** At long Last, the script can use magic. Both Targeted and none Targeted Magic, be
echo **   they attack spells or buff spells. (LB or SOP)
echo ** It is however limited to one spell, and the standard prep/target/cast routine.
echo **	  And The script CANNOT use weapons while a spell is being preped/targeted.
echo **
echo ** Commands:  TM/PM = You will use mainly magic to hunt.
echo **            MAGIC = You will use mainly weapons to hunt.
echo **                 When combined with Multi, TM checks Targeted Magic, PM/MAGIC Primary.
echo **
echo ** Syntax:   .SFhunter TM/PM/MAGIC <spell> <mana> {weapon} (shield)
echo **
echo ** Examples: .SFhunter TM FB 15 scimitar
echo **           .SFhunter MAGIC SOP 20 swap 1 b.sword targe
echo **
echo ** Notes: TM/PM will hunt using magic, your weapon is a back-up and is only used when
echo **        low on mana.
echo **        MAGIC is a single spell cast as the weapon combo repeats.
echo **        SNAP can be used for snap casting.
echo **************************************************************************************
echo
pause 10
goto HELP
HELP_STANCE:
echo
echo **************************************************************************************
echo ** The script is able to alter your stance.
echo ** Attack - Evasion - Block - Parry - Custom
echo ** These commands will make the script switch to the preset Stance you enter.
echo ** 
echo ** .SFhunter att/eva/blo/par/cus {weapon} (shield)
echo **************************************************************************************
echo
pause 10
goto HELP_FRONT
HELP_REPEAT:
echo
echo **************************************************************************************
echo ** The script is able to use repeating crossbows to the utmost of their abilities.
echo ** 
echo ** .SFhunter repeat {crossbow}
echo **************************************************************************************
echo
pause 3
goto HELP
HELP_SLOW:
echo
echo **************************************************************************************
echo **     For those of us that get tired out when using Weapons at full
echo ** speed, the script can be set-up to use them a little more slowly.
echo ** You can use Slow or Young to turn this on.
echo **
echo ** NOTE: Does not work with: Backstab, Ambush, Ranged, or Thrown combat styles.
echo ** 
echo ** .SFhunter slow {weapon} (sheild) or .SFhunter young {weapon} (shield)
echo **************************************************************************************
echo
pause 3
goto HELP_FRONT
HELP_MULTI:
SETUP:
echo
echo **************************************************************************************
echo **     To set up multi weapon simply put in SET as the first variable followed by the
echo ** SFhunter set-ups you want to cycle through, each set-up must be inside a set of
echo ** quotes ("). Multi-weapon will change set-ups when you reach Bewildering in the
echo ** current weapon.
echo **    Syntax:  .SFhunter SET "Set-up1" "Set-up2" Set-up3" ... "Set-up20"
echo ** NOTE: You don't have to use all 20 available set-up spots.
echo ** Example: .SFhunter SET "skin loot scimitar shield" "loot app brawl"
echo **
echo ** USE:
echo **     Once set-up, to use the script for multi-weapon simply use the "multi" command.
echo ** If you want to start on a set-up that isn't your first one entered simply type in
echo ** the number of the set-up you want to start with.
echo ** 
echo ** .SFhunter MULTI (#)
echo ** I know its a bit complex. AIM: Malific Drockmur EMAIL: drockmali@hotmail.com
echo ** 
echo ** A note on multi word items:
echo **     If a set-up contains a multi word weapon or command like bastard.sword or
echo ** COM1 dance.bear there is an added step to get this to work properly.
echo **     Once you create your set-up, since it is inside quotes the . is removed making
echo ** these one word weapons two words, and thus two variables. To fix this do the
echo ** following.
echo **     Go into your scripts window and click the "Variables" button. Find the variable
echo ** with your multi word item and re-enter the period. This will make it function
echo ** properly when "multi" is used.
echo **
echo **************************************************************************************
echo
pause 7
goto HELP
HELP_SWAP:
echo
echo **************************************************************************************
echo ** The script can be set-up to use swappable weapons.
echo ** "Swap X" must be followed by the weapon.
echo **
echo ** Syntax: .SFhunter swap {1/2/E/B/PI/HA/SS/QS} {weapon} (shield)
echo **
echo ** 1 = 1 handed for weapons that swap between 1 and 2 hands.
echo ** 2 = 2 handed for weapons that swap between 1 and 2 hands.
echo ** E = Edged for weapons that swap between edged and blunt.
echo ** B = Blunt for weapons that swap between edged and blunt.
echo ** PI = Use this weapon as a Pike.
echo ** HA = Use this weapon as a Halberd.
echo ** SS = Use this weapon as a Short Staff.
echo ** QS = Use this weapon as a Quarter Staff.
echo **
echo ** EXAMPLES: .SFhunter swap 1 sword shield
echo **           .SFhunter swap PI spear
echo **************************************************************************************
echo
pause 3
goto HELP
HELP_WEAPON:
HELP_SHIELD:
echo
echo **************************************************************************************
echo ** It works any type of weapon in the game. Anytime you can use a shield, the script
echo ** supports it.
echo ** WARNING: If you are using an arm worn shield DO NOT enter a shield name.
echo ** .SFhunter {weapon} (shield)
echo **************************************************************************************
echo
pause 3
goto HELP
HELP_LOOT:
echo
echo **************************************************************************************
echo ** The Script can be set-up to loot Kills. (It always searches.)
echo **
echo ** Due to match limitations it only looks for the most common types of items to loot,
echo ** So keep your eyes open for the extremely rare stuff.
echo **
echo ** .SFhunter loot {weapon} (shield)    <--- Loots everything except junk
echo **
echo ** You can also set-up the script to loot specific item types, rather than everything.
echo ** The variables for these are:
echo **
echo ** lootgem
echo ** lootcoin
echo ** lootbox
echo ** lootjunk    <--- junk referes to SOME common drops: sword, cloak, shield, etc.
echo **
echo ** .SFhunter lootbox {weapon} {shield}          <--- Loot boxes but not gems or coins.
echo ** .SFhunter lootgem lootcoin {weapon} {shield} <--- Loot coins and gems but not boxes.
echo **************************************************************************************
echo
pause 3
goto HELP_FRONT
HELP_APP:
echo
echo **************************************************************************************
echo ** The Script can be set-up to appraise the monsters you are fighting.
echo **
echo ** The script will 'appraise quick' for a 3 second RT.
echo ** It attempts to app after a kill, and will app when a monster enters an empty room.
echo ** Do to the limitations of the script it can ONLY app the same type of monster as the
echo ** last monster you killed.
echo ** This creates a sort of "hit or miss" system, but it does work most of the time.
echo **
echo ** .SFhunter app {weapon} (shield)
echo **************************************************************************************
echo
pause 3
goto HELP_FRONT
HELP_SKIN:
echo
echo **************************************************************************************
echo ** Everyone has there own method of how they skin. This script therefore has several
echo ** options on how skinning works.
echo ** Here are the commands for skinning, and what they do:
echo **
echo ** Skin or  : Skins, bundles, leaves bundles on ground. If it can't bundle, it stows
echo **  Skinning  the skin if you are looting, drops the skin if you aren't.
echo ** Skindrop : Same as 'skin' but drops the skin if it can't bundle.
echo ** Skinexp  : Skins the kill, then drops the skin, makes no attempt to stow or bundle.
echo ** Arrange  : Same as 'skin' but it will 'arrange all' first.  - Arr
echo ** Retreat  : Will make the script retreat before skinning.  - Ret
echo **
echo ** There is no need to use 'skin' if you are using one of the other options, it knows
echo ** you're skinning.
echo **
echo ** Options can be combined for full effect.
echo ** Example: .Sfhunter Arrange Skinexp Retreat - this would make the script retreat,
echo ** arrange the kill, skin it, and drop the skin.
echo **
echo **************************************************************************************
echo
pause 10
goto HELP_FRONT
HELP_FRONT:
echo
echo ************************************************************************************** 
echo **
echo ** The Option you chose was a "Front Command"
echo ** Front commands must come before any other scripting commands,
echo ** but can be mixed in any order with other Front Commands.
echo **
echo ** LIST of FRONT commands: Appraise, Arrange, Exp, Loot, Retreat, Skin, Skindrop,
echo **                         Skinexp, Slower, Attack, Evasion, Shield, Parry, Custom,
echo **                         Lootbox, Lootcoin, Lootgem, Wear <item>, Com1-Com5,
echo **                         Count, SearchTreasure(ST), SearchBoxes(SB), SearchAll(SA),
echo **                         SearchGoods(SG), SearchEquipment(SE)
echo **
echo **************************************************************************************
echo
pause 5
goto HELP
HELP_BRAWL:
echo
echo **************************************************************************************
echo ** The script Brawls, both with and without weapons/shields. You can also brawl with
echo ** just a shield.
echo **
echo **   For Barbarians you can also go on a choking spree! Keep in mind though you can't
echo ** Choke with a weapon or shield in hand.
echo **
echo ** .SFhunter brawl {weapon} (shield)
echo ** .SFhunter choke
echo **************************************************************************************
echo
pause 3
goto HELP
HELP_EMPATH:
echo
echo **************************************************************************************
echo **   If you're an Empath, or just want to dance with a critter. There is brawling that
echo ** doesn't hurt the critter. you can do it with or without weapons/shields and can
echo ** also do it with just a shield.
echo ** .SFhunter empath (weapon) (shield)
echo **************************************************************************************
echo
pause 3
goto HELP
HELP_AMBUSH:
echo
echo **************************************************************************************
echo **     For non thieves looking to get the drop on someone there's always ambushing.
echo ** Ambushing automatically aims for the head (Thief only) so thieves can get
echo ** backstab exp from this script. Support is in there for ambushing with ANY melee
echo ** weapon in the game, as well as ambushing while brawling.
echo ** .SFhunter ambush {weapon} (shield)
echo ** .SFhunter ambush brawl {weapon} (shield)
echo **************************************************************************************
echo
pause 3
goto HELP
HELP_BACK:
echo
echo ************************************************************************************** 
echo ** For all you Th... err Bakers. Backstabbing is supported.
echo ** .SFhunter backstab {weapon} (shield)
echo **************************************************************************************
echo
pause 3
goto HELP
HELP_POACH:
echo
echo **************************************************************************************
echo ** For those of you who like your stealth kills at range, Poaching and Sniping is
echo ** fully operational.
echo ** .SFhunter poach {weapon} (shield(slings and LX only!)
echo ** .SFhunter snipe {weapon} (shield(LX only!)
echo **************************************************************************************
echo
pause 3
goto HELP
HELP_SNAP:
echo
echo ************************************************************************************** 
echo ** For those of us who are impatient, ALL Ranged systems can be snapfired.
echo **   Snapfiring will cause the script to aim fully one time, then aim and fire instanly
echo ** after you load until your target is dead.
echo **
echo ** SNAP also works with Magic systems. It will fully prepare the spell then Target and
echo **   Cast at the same time.
echo **
echo ** .SFhunter snap {weapon} (shield(slings and LX only!)
echo ** .SFhunter snap poach {weapon} (shield(slings and LX only!)
echo ** .SFhunter snap TM FB 15 scimitar
echo **************************************************************************************
echo
pause 3
goto HELP
HELP_SYNTAX:
echo
echo **************************************************************************************
echo **    This is a brief (for me anyway) description of how the script works
echo ** and What order commands come in, as well as a list of all the commands
echo ** the script has.
echo ** 
echo **    There are many options settings and methods of using the script,
echo ** all of which have been programed in and can be called forth using the
echo ** correct comamnds. Knowing those commands and how to use them is what
echo ** this section is for.
echo ** 
echo **    'Command' refers to anything that follows .SFhunter when starting the script.
echo ** There are several types of commands:
echo ** 
echo **    'Front Commands' have to come before anything else, but can
echo ** be placed in any order amongst themselves. These are basic systems
echo ** that toggle on or off specific non-combat features.
echo ** 
echo **    'Combat Methods' come after 'Front Commands' but before 
echo ** 'Combat Systems'. Methods alter a System in very specifc but minor
echo ** ways, and can usually only be used with a specific System.
echo ** 
echo **    'Combat Systems' come After Methods, and Immediately before your
echo ** Equipment. Systems decide how the script is going to fight. This is usually
echo ** defined by your Equipment, but occasionlly a System is used that redefines
echo ** how combat is undergone with Certain Equipment.
echo ** 
echo **    'Equipment' is always the last command. When the script finds your
echo ** Equipment (usually a weapon) it begins combat after equiping you.
echo ** Equipment is defined as the in game items you will be using to hunt with.
echo ** 
echo **    'Special' commands are.. special. They are usually systems that have
echo ** nothing to do with combat itself, but were placed into the script as extras
echo ** They are also the commands used to set-up some of the more complex features
echo ** of the script.
echo ** 
echo ** Command List:
echo ** Front Commands: Appraise, Arrange, Exp, Loot, Retreat, Skin, Skindrop, Skinexp,
echo **                 Slower, Attack, Evasion, Shield, Parry, Custom, Lootbox, Lootcoin,
echo **                 Lootgem, Wear <item>, Com1-Com5, Count
echo ** Combat Methods: Ambush, Slow, Snapfire
echo ** Combat Systems: Backstab, Brawl, Choke, Empath, Magic, Offhand, PM, Repeat, Snipe,
echo **                 Swap, Throw, TM
echo ** Spc. Equipment: Gauntlet
echo ** Spcl. Commands: SET and MULTI (multi weapons), DSET (Default Setting), LIST, DEBUG,
echo **                 HELP
echo ** 
echo ** SYNTAX ORDER: [] = Special Commands () = Front Commands || = Combat Methods
echo **               /\ = Combat Systems {} = Equipment
echo ** 
echo ** Basic: .SFhunter {weapon} {shield}
echo ** Advan: .SFhunter () || /\ {}
echo ** Spcl.: .SFhunter []
echo ** 
echo ** For more specifc information please refer to the individual HELP sections.
echo ** 
echo **************************************************************************************
echo
pause 20
goto HELP
HELP_THROWN:
echo
echo **************************************************************************************
echo ** Like to throw things? SFhunter can satisfy your needs!
echo ** It's also enabled to throw vines and logs while brawling,
echo ** as well as doing Offhand thrown.
echo ** 
echo ** .SFhunter throw {weapon} (shield)
echo ** .SFhunter off {weapon} (shield)
echo ** .SFhunter vine (shield)
echo ** .SFhunter log (shield)
echo **************************************************************************************
echo
pause 3
goto HELP
HELP_PERS:
echo
echo **************************************************************************************
echo ** Personalizations are custom edits of SFhunter done by Malific.
echo ** 
echo **     Personalizations are included with the general release so the
echo ** the script doesn't have to be re-edited for every bug fix/change.
echo ** They are Commented (#) out of the actual script.
echo ** 
echo **     If you have a personalization and need to know how to use it, simply
echo ** open the script in a text editor and replace "#Character name" with 
echo ** a blank or space.
echo **
echo ** If you have questions or requests refer to:
echo ** AIM: Malific Drockmur  EMAIL: drockmali@hotmail.com
echo **************************************************************************************
echo
pause 5
goto HELP
HELP_DEF:
echo
echo **************************************************************************************
echo **     The script can be configured to create 1 default combat setting.
echo ** This setting will be used when the script is started with no variables.
echo ** It will skip all variable checks and go immediately into combat using
echo ** the pre-configured weapon set-up created with this command.
echo ** 
echo ** Basically think of this as your "Oh crap! I need to be fighting NOW" set-up.
echo ** 
echo ** SYNTAX: .SFhunter DSET {weapon set-up}
echo ** EXAMPLE: .SFhunter DSET loot skin scimtar shield
echo ** USAGE: .SFhunter
echo ** 
echo ** A note on multi word weapons:
echo **     If your set-up contains a multi word weapon like short.bow or bastard.sword
echo ** there is an added step to get this to work properly. Once you create your set-up,
echo ** since it is inside quotes the . is removed making these one word weapons two words,
echo ** and thus two variables. To fix this do the following.
echo **     GO into your scripts window and click the "Variables" button. Find the variable
echo ** with your multi word weapon and re-enter the period. This will make it function 
echo ** properly when default mode is used.
echo ** 
echo **************************************************************************************
echo
pause 10
goto HELP_DM
HELP_DM:
echo
echo **************************************************************************************
echo **     To tie Default setting into a Multi-Weapon Setup use the command DMULTI
echo ** This will make the script use your default setting as the first chain in a
echo ** Multi-weapon set-up. You must have previously set-up Multi-Weapon to use this.
echo **
echo ** SYNTAX: .SFhunter DSET DMULTI {weapon set-up}
echo ** EXAMPLE: .SFhunter DSET DMULTI loot skin scimitar shield
echo **
echo **************************************************************************************
echo
goto HELP

#PatriciaKHRI_PAUSE:
#Patriciapause
#PatriciaKHRI:
#Patricia	match KHRI2_PAUSE You close your eyes
#Patricia	match KHRI2_PAUSE Roundtime
#Patricia	match KHRI2 already
#Patricia	match KHRI_PAUSE You are still stunned.
#Patricia	match KHRI_PAUSE ...wait
#Patricia	match KHRI_PAUSE type ahead
#Patriciaput khri support
#Patricia	matchwait
#Patricia
#PatriciaKHRI2_PAUSE:
#Patriciapause
#PatriciaKHRI2:
#Patricia	match %c Taking slow deep breaths
#Patricia	match %c Roundtime
#Patricia	match %c already
#Patricia	match %c yourself too drained
#Patricia	match KHRI2_PAUSE You are still stunned.
#Patricia	match KHRI2_PAUSE ...wait
#Patricia	match KHRI2_PAUSE type ahead
#Patriciaput khri spar
#Patricia	matchwait
#PatriciaCOUNT_KHRI_PAUSE:
#Patriciapause
#PatriciaCOUNT_KHRI:
#Patricia	match COUNT_KHRI2_PAUSE You close your eyes
#Patricia	match COUNT_KHRI2_PAUSE Roundtime
#Patricia	match COUNT_KHRI2 already
#Patricia	match COUNT_KHRI_PAUSE You are still stunned.
#Patricia	match COUNT_KHRI_PAUSE ...wait
#Patricia	match COUNT_KHRI_PAUSE type ahead
#Patriciaput khri support
#Patricia	matchwait
#Patricia
#PatriciaCOUNT_KHRI2_PAUSE:
#Patriciapause
#PatriciaCOUNT_KHRI2:
#Patricia	match %s Taking slow deep breaths
#Patricia	match %s Roundtime
#Patricia	match %s already
#Patricia	match %s yourself too drained
#Patricia	match COUNT_KHRI2_PAUSE You are still stunned.
#Patricia	match COUNT_KHRI2_PAUSE ...wait
#Patricia	match COUNT_KHRI2_PAUSE type ahead
#Patriciaput khri spar
#Patricia	matchwait


LABELERROR:
	echo *****************
	echo ** LABELERROR: **
	echo *****************
BEGIN_NOWEAP:
	echo
	echo ********************************
	echo ** Can't find your equipment.
	echo **       Ending Script.
	echo ********************************
	echo
goto DEBUG_MODE
UN_ID:
	echo
	echo UN_ID:
	echo
	echo *************************************
	echo ** Unable to Identify your weapon.
	echo **         Ending Script.
	echo *************************************
	echo
DEBUG:
DEBUG_MODE:
	echo
	echo DEBUG_MODE:
	echo
	echo **************************************************************************************
	echo **
	echo ** Copy/Paste DEBUG_MODE and LAST 3 commands worth of game text
	echo ** to DrockMali@hotmail.com for troubleshooting.
	echo **
	echo ** SITE:  http://www.malific.com/ or http://www.geocities.com/malificdr/
	echo ** AIM:   Malific Drockmur
	echo **
	echo ** SFhunter Version 2: Last tweak 4/16/2009 6:20PM
	echo **
	echo **************************************************************************************
	echo
	pause 5
put echo /on
waitfor echo
	echo
	echo **************************************************************************************
	echo **
	echo ** Variables:
	echo **           1 = %1
IF_2	echo **           2 = %2
IF_3	echo **           3 = %3
IF_4	echo **           4 = %4
IF_5	echo **           5 = %5
IF_6	echo **           6 = %6
IF_7	echo **           7 = %7
IF_8	echo **           8 = %8
IF_9	echo **           9 = %9
	echo **           0 = %0
	echo **        Save = %s
	echo **     Counter = %c
	echo **
	echo ** General Variables:
	echo **      zHkill = %zHkill
	echo **       zHapp = %zHmonsterapp
	echo **   zHmonster = %zHmonster
	echo **      zHloot = %zHloot
	echo **   zHlootbox = %zHlootbox
	echo **  zHlootcoin = %zHlootcoin
	echo **   zHlootgem = %zHlootgem
	echo **      zHskin = %zHskin
	echo **   zHskinexp = %zHskinexp
	echo **  zHskindrop = %zHskindrop
	echo **   zHarrange = %zHarrange
	echo **     zHmulti = %zHmulti
	echo **    zHmultiZ = %zHmultiZ
	echo **       zHexp = %zHexp
	echo **      zHexpA = %zHexpA
	echo **      zHexpB = %zHexpB
	echo **      zHexpC = %zHexpC
	echo **      zHexpM = %zHexpM
	echo **      zHtype = %zHtype
	echo **   zHcounter = %zHcounter
	echo **     zHrange = %zHrange
	echo **    zHrange1 = %zHrange1
	echo **      zHsnap = %zHsnap
	echo **       zHarm = %zHarm
	echo **       zHamb = %zHamb
	echo **       zHget = %zHget
	echo **      zHgetA = %zHgetA
	echo **     zHcount = %zHcount
	echo **     zHCOUNT = %zHCOUNT
	echo **    zHcBrawl = %zHcBrawl
	echo ** zHbrawltype = %zHbrawltype
	echo **  zHcritters = %zHcritters
	echo **   zHxpsleep = %zHxpsleep
	echo **    zHsearch = %zHsearch
	echo **
	echo ** Weapon Combos:
	echo **    zHcombo1 = %zHcombo1
	echo **    zHcombo2 = %zHcombo2
	echo **    zHcombo3 = %zHcombo3
	echo **    zHcombo4 = %zHcombo4
	echo **    zHcombo5 = %zHcombo5
	echo **    zHcombo6 = %zHcombo6
	echo **    zHcombo7 = %zHcombo7
	echo **    zHcombo8 = %zHcombo8
	echo **    
	echo ** Magic Settings:
	echo **     zHspell = %zHspell
	echo **      zHmana = %zHmana
	echo **         zHm = %zHm
	echo **        zHmc = %zHmc
	echo **
	echo ** Multi Set-ups:
	echo **    zHmulti1 = %zHmulti1
	echo **    zHmulti2 = %zHmulti2
	echo **    zHmulti3 = %zHmulti3
	echo **    zHmulti4 = %zHmulti4
	echo **    zHmulti5 = %zHmulti5
	echo **    zHmulti6 = %zHmulti6
	echo **    zHmulti7 = %zHmulti7
	echo **    zHmulti8 = %zHmulti8
	echo **    zHmulti9 = %zHmulti9
	echo **   zHmulti10 = %zHmulti10
	echo **   zHmulti11 = %zHmulti11
	echo **   zHmulti12 = %zHmulti12
	echo **   zHmulti13 = %zHmulti13
	echo **   zHmulti14 = %zHmulti14
	echo **   zHmulti15 = %zHmulti15
	echo **   zHmulti16 = %zHmulti16
	echo **   zHmulti17 = %zHmulti17
	echo **   zHmulti18 = %zHmulti18
	echo **   zHmulti19 = %zHmulti19
	echo **   zHmulti20 = %zHmulti20
	echo **
	echo ** Command Settings:
	echo **      zHCOM1 = %zHCOM1
	echo **      zHcom1 = %zHcom1
	echo **      zHCOM2 = %zHCOM2
	echo **      zHcom2 = %zHcom2
	echo **      zHCOM3 = %zHCOM3
	echo **      zHcom3 = %zHcom3
	echo **      zHCOM4 = %zHCOM4
	echo **      zHcom4 = %zHcom4
	echo **      zHCOM5 = %zHCOM5
	echo **      zHcom5 = %zHcom5
	echo ** 
	echo **      zHDset = %zHDset
	echo **
	echo **************************************************************************************
put echo /off
waitfor echo
	echo
	echo ********************************
	echo **       Ending Script.
	echo ********************************
	echo
exit

LIST:
	echo
	echo *******************************************
	echo **
	echo ** Listing ALL Variables and their values.
	echo **
	echo *******************************************
	echo
	pause 3
put echo /on
waitfor echo
	echo
	echo *******************************************
	echo **
	echo **        zHkill = %zHkill
	echo **       zHkills = %zHkills
	echo **  zHmonsterapp = %zHmonsterapp
	echo **     zHmonster = %zHmonster
	echo **        zHloot = %zHloot
	echo **     zHlootbox = %zHlootbox
	echo **    zHlootcoin = %zHlootcoin
	echo **     zHlootgem = %zHlootgem
	echo **       zHloots = %zHloots
	echo **     zHretreat = %zHretreat
	echo **        zHskin = %zHskin
	echo **       zHskin2 = %zHskin2
	echo **       zHskins = %zHskins
	echo **     zHskinexp = %zHskinexp
	echo **    zHskindrop = %zHskindrop
	echo **     zHarrange = %zHarrange
	echo **       zHmulti = %zHmulti
	echo **      zHmultiZ = %zHmultiZ
	echo **         zHexp = %zHexp
	echo **        zHexpA = %zHexpA
	echo **        zHexpB = %zHexpB
	echo **        zHtype = %zHtype
	echo **     zHcounter = %zHcounter
	echo **       zHrange = %zHrange
	echo **      zHrange1 = %zHrange1
	echo **      zHrepeat = %zHrepeat
	echo **        zHammo = %zHammo
	echo **        zHsnap = %zHsnap
	echo **         zHarm = %zHarm
	echo **         zHamb = %zHamb
	echo **       zHspell = %zHspell
	echo **        zHmana = %zHmana
	echo **           zHm = %zHm
	echo **          zHmc = %zHmc
	echo **        zHexpC = %zHexpC
	echo **        zHexpM = %zHexpM
	echo **         zHget = %zHget
	echo **        zHgetA = %zHgetA
	echo **       zHcount = %zHcount
	echo **       zHCOUNT = %zHCOUNT
	echo **      zHcBrawl = %zHcBrawl
	echo **   zHbrawltype = %zHbrawltype
	echo **      zHkillsS = %zHkillsS
	echo **      zHskinsS = %zHskinsS
	echo **      zHlootsS = %zHlootsS
	echo **    zHcritters = %zHcritters
	echo **     zHxpsleep = %zHxpsleep
	echo **      zHsearch = %zHsearch
	echo **
	echo **      zHcombo1 = %zHcombo1
	echo **      zHcombo2 = %zHcombo2
	echo **      zHcombo3 = %zHcombo3
	echo **      zHcombo4 = %zHcombo4
	echo **      zHcombo5 = %zHcombo5
	echo **      zHcombo6 = %zHcombo6
	echo **      zHcombo7 = %zHcombo7
	echo **      zHcombo8 = %zHcombo8
	echo **
	echo **      zHmulti1 = %zHmulti1
	echo **      zHmulti2 = %zHmulti2
	echo **      zHmulti3 = %zHmulti3
	echo **      zHmulti4 = %zHmulti4
	echo **      zHmulti5 = %zHmulti5
	echo **      zHmulti6 = %zHmulti6
	echo **      zHmulti7 = %zHmulti7
	echo **      zHmulti8 = %zHmulti8
	echo **      zHmulti9 = %zHmulti9
	echo **     zHmulti10 = %zHmulti10
	echo **     zHmulti11 = %zHmulti11
	echo **     zHmulti12 = %zHmulti12
	echo **     zHmulti13 = %zHmulti13
	echo **     zHmulti14 = %zHmulti14
	echo **     zHmulti15 = %zHmulti15
	echo **     zHmulti16 = %zHmulti16
	echo **     zHmulti17 = %zHmulti17
	echo **     zHmulti18 = %zHmulti18
	echo **     zHmulti19 = %zHmulti19
	echo **     zHmulti20 = %zHmulti20
	echo **
	echo **        zHCOM1 = %zHCOM1
	echo **        zHcom1 = %zHcom1
	echo **        zHCOM2 = %zHCOM2
	echo **        zHcom2 = %zHcom2
	echo **        zHCOM3 = %zHCOM3
	echo **        zHcom3 = %zHcom3
	echo **        zHCOM4 = %zHCOM4
	echo **        zHcom4 = %zHcom4
	echo **        zHCOM5 = %zHCOM5
	echo **        zHcom5 = %zHcom5
	echo **
	echo **      zHweapon = %zHweapon
	echo **      zHshield = %zHshield
	echo **      zHbrawlT = %zHbrawlT
	echo **
	echo **           zHD = %zHD
	echo **       zHDloot = %zHDloot
	echo **    zHDlootbox = %zHDlootbox
	echo **   zHDlootcoin = %zHDlootcoin
	echo **    zHDlootgem = %zHDlootgem
	echo **    zHDretreat = %zHDretreat
	echo **       zHDskin = %zHDskin
	echo **    zHDskinexp = %zHDskinexp
	echo **   zHDskindrop = %zHDskindrop
	echo **    zHDarrange = %zHDarrange
	echo ** zHDmonsterapp = %zHDmonsterapp
	echo **      zHDmulti = %zHDmulti
	echo **        zHDexp = %zHDexp
	echo **       zHDexpA = %zHDexpA
	echo **       zHDexpB = %zHDexpB
	echo **       zHDtype = %zHDtype
	echo **      zHDrange = %zHDrange
	echo **     zHDrange1 = %zHDrange1
	echo **     zHDrepeat = %zHDrepeat
	echo **       zHDammo = %zHDammo
	echo **     zHDcombo1 = %zHDcombo1
	echo **     zHDcombo2 = %zHDcombo2
	echo **     zHDcombo3 = %zHDcombo3
	echo **     zHDcombo4 = %zHDcombo4
	echo **     zHDcombo5 = %zHDcombo5
	echo **     zHDcombo6 = %zHDcombo6
	echo **     zHDcombo7 = %zHDcombo7
	echo **     zHDcombo8 = %zHDcombo8
	echo **    zHDcounter = %zHDcounter
	echo **     zHDweapon = %zHDweapon
	echo **     zHDshield = %zHDshield
	echo **      zHDspell = %zHDspell
	echo **       zHDmana = %zHDmana
	echo **         zHDmc = %zHDmc
	echo **       zHDexpC = %zHDexpC
	echo **       zHDexpM = %zHDexpM
	echo **        zHDget = %zHDget
	echo **       zHDgetA = %zHDgetA
	echo **        zHDset = %zHDset
	echo **      zHDcount = %zHDcount
	echo **      zHDCOUNT = %zHDCOUNT
	echo **     zHDcBrawl = %zHDcBrawl
	echo **    zHDcBrawlB = %zHDcBrawlB
	echo **  zHDbrawltype = %zHDbrawltype
	echo **
	echo **       zHDCOM1 = %zHDCOM1
	echo **       zHDcom1 = %zHDcom1
	echo **       zHDCOM2 = %zHDCOM2
	echo **       zHDcom2 = %zHDcom2
	echo **       zHDCOM3 = %zHDCOM3
	echo **       zHDcom3 = %zHDcom3
	echo **       zHDCOM4 = %zHDCOM4
	echo **       zHDcom4 = %zHDcom4
	echo **       zHDCOM5 = %zHDCOM5
	echo **       zHDcom5 = %zHDcom5
	echo **
	echo ** ALL variables have been Listed.
	echo ** To delete ALL existing Variables
	echo ** Restart the script as .SFhunter DELETE
	echo **
	echo *******************************************
	echo
put echo /off
waitfor echo
exit

DELETE:
	echo
	echo ********************************************
	echo **
	echo **  WARNING! WARNING! WARNING! WARNGING!
	echo **
	echo ** This command will erase ALL Variables
	echo ** SFhunter has saved into Stormfront.
	echo **
	echo ** # of Kills, skins, loots, and
	echo ** your Multi-Weapon Set-ups
	echo **
	echo **         WILL BE LOST!!
	echo **
	echo ** To continue type GO otherwise hit ESC
	echo **        to exit the script.
	echo **
	echo ********************************************
	waitfor Go what?
deletevariable zHkill
deletevariable zHkills
deletevariable zHmonsterapp
deletevariable zHmonster
deletevariable zHloot
deletevariable zHlootbox
deletevariable zHlootcoin
deletevariable zHlootgem
deletevariable zHretreat
deletevariable zHloots
deletevariable zHskin
deletevariable zHskin2
deletevariable zHskins
deletevariable zHskinexp
deletevariable zHskindrop
deletevariable zHarrange
deletevariable zHmulti
deletevariable zHmultiZ
deletevariable zHexp
deletevariable zHexpA
deletevariable zHexpB
deletevariable zHtype
deletevariable zHcounter
deletevariable zHrange
deletevariable zHrange1
deletevariable zHrepeat
deletevariable zHammo
deletevariable zHsnap
deletevariable zHarm
deletevariable zHamb
deletevariable zHspell
deletevariable zHmana
deletevariable zHm
deletevariable zHmc
deletevariable zHexpC
deletevariable zHexpM
deletevariable zHget
deletevariable zHgetA
deletevariable zHcount
deletevariable zHCOUNT
deletevariable zHcBrawl
deletevariable zHcBrawlB
deletevariable zHbrawltype
deletevariable zHkillsS
deletevariable zHskinsS
deletevariable zHlootsS
deletevariable zHcritters
deletevariable zHxpsleep

deletevariable zHcombo1
deletevariable zHcombo2
deletevariable zHcombo3
deletevariable zHcombo4
deletevariable zHcombo5
deletevariable zHcombo6
deletevariable zHcombo7
deletevariable zHcombo8

deletevariable zHmulti1
deletevariable zHmulti2
deletevariable zHmulti3
deletevariable zHmulti4
deletevariable zHmulti5
deletevariable zHmulti6
deletevariable zHmulti7
deletevariable zHmulti8
deletevariable zHmulti9
deletevariable zHmulti10
deletevariable zHmulti11
deletevariable zHmulti12
deletevariable zHmulti13
deletevariable zHmulti14
deletevariable zHmulti15
deletevariable zHmulti16
deletevariable zHmulti17
deletevariable zHmulti18
deletevariable zHmulti19
deletevariable zHmulti20

deletevariable zHweapon
deletevariable zHshield
deletevariable zHbrawlT

deletevariable zHCOM1
deletevariable zHcom1
deletevariable zHCOM2
deletevariable zHcom2
deletevariable zHCOM3
deletevariable zHcom3
deletevariable zHCOM4
deletevariable zHcom4
deletevariable zHCOM5
deletevariable zHcom5

deletevariable zHD
deletevariable zHDloot
deletevariable zHDlootbox
deletevariable zHDlootcoin
deletevariable zHDlootgem
deletevariable zHDretreat
deletevariable zHDskin
deletevariable zHDskinexp
deletevariable zHDskindrop
deletevariable zHDarrange
deletevariable zHDmonsterapp
deletevariable zHDmulti
deletevariable zHDexp
deletevariable zHDexpA
deletevariable zHDexpB
deletevariable zHDtype
deletevariable zHDrange
deletevariable zHDrange1
deletevariable zHDrepeat
deletevariable zHDammo
deletevariable zHDcombo1
deletevariable zHDcombo2
deletevariable zHDcombo3
deletevariable zHDcombo4
deletevariable zHDcombo5
deletevariable zHDcombo6
deletevariable zHDcombo7
deletevariable zHDcombo8
deletevariable zHDcounter
deletevariable zHDweapon
deletevariable zHDshield
deletevariable zHDspell
deletevariable zHDmana
deletevariable zHDmc
deletevariable zHDexpC
deletevariable zHDexpM
deletevariable zHDget
deletevariable zHDgetA
deletevariable zHDset
deletevariable zHDcount
deletevariable zHDCOUNT
deletevariable zHDcBrawl
deletevariable zHDcBrawlB
deletevariable zHDbrawltype

deletevariable zHDCOM1
deletevariable zHDcom1
deletevariable zHDCOM2
deletevariable zHDcom2
deletevariable zHDCOM3
deletevariable zHDcom3
deletevariable zHDCOM4
deletevariable zHDcom4
deletevariable zHDCOM5
deletevariable zHDcom5

echo
echo **************************************************************************************
echo ** All SFhunter Variables have been removed.
echo **************************************************************************************
echo
exit

%zHFromEZ:
goto EZCheck_%EZrange

EZCheck_1:
EZCheck_2:
echo
echo ******************************************************
echo **                READ IMPORTANT!!
echo ** Do to certain Circumstances I have altered the
echo ** names of the Variables for SFhunter.
echo **
echo ** The script has detected that you are using the
echo ** older variables, or this is the first time you
echo ** have run the script for this character.
echo **
echo ** The script will now set-up your Varaibles to
echo ** use the correct names... Do not be alarmed.
echo **
echo ** PLEASE NOTE: Default setup WILL need to be re-set.
echo **
echo *******************************************************
echo
pause 3

ZHSWAP:
setvariable zHkill %EZkill
setvariable zHkills %EZkills
setvariable zHmonsterapp %EZmonsterapp
setvariable zHmonster %EZmonster
setvariable zHloot %EZloot
setvariable zHloots %EZloots
setvariable zHskin %EZskin
setvariable zHskin2 %EZskin2
setvariable zHskins %EZskins
setvariable zHskinexp %EZskinexp
setvariable zHskindrop %EZskindrop
setvariable zHarrange %EZarrange
setvariable zHmulti %EZmulti
setvariable zHmultiZ %EZmultiZ
setvariable zHexp %EZexp
setvariable zHexpA %EZexpA
setvariable zHexpB %EZexpB
setvariable zHtype %EZtype
setvariable zHcounter %EZcounter
setvariable zHrange %EZrange
setvariable zHrange1 %EZrange1
setvariable zHrepeat %EZrepeat
setvariable zHammo %EZammo
setvariable zHsnap %EZsnap
setvariable zHarm %EZarm
setvariable zHamb %EZamb
setvariable zHspell %EZspell
setvariable zHmana %EZmana
setvariable zHm %EZm
setvariable zHmc %EZmc
setvariable zHexpC %EZexpC
setvariable zHexpM %EZexpM

setvariable zHcombo1 %EZcombo1
setvariable zHcombo2 %EZcombo2
setvariable zHcombo3 %EZcombo3
setvariable zHcombo4 %EZcombo4
setvariable zHcombo5 %EZcombo5
setvariable zHcombo6 %EZcombo6
setvariable zHcombo7 %EZcombo7
setvariable zHcombo8 %EZcombo8

setvariable zHmulti1 %EZmulti1
setvariable zHmulti2 %EZmulti2
setvariable zHmulti3 %EZmulti3
setvariable zHmulti4 %EZmulti4
setvariable zHmulti5 %EZmulti5
setvariable zHmulti6 %EZmulti6
setvariable zHmulti7 %EZmulti7
setvariable zHmulti8 %EZmulti8
setvariable zHmulti9 %EZmulti9
setvariable zHmulti10 %EZmulti10
setvariable zHmulti11 %EZmulti11
setvariable zHmulti12 %EZmulti12
setvariable zHmulti13 %EZmulti13
setvariable zHmulti14 %EZmulti14
setvariable zHmulti15 %EZmulti15
setvariable zHmulti16 %EZmulti16
setvariable zHmulti17 %EZmulti17
setvariable zHmulti18 %EZmulti18
setvariable zHmulti19 %EZmulti19
setvariable zHmulti20 %EZmulti20

setvariable zHweapon %EZweapon
setvariable zHshield %EZshield
setvariable zHbrawlT %EZbrawlT

setvariable zHD %EZD
setvariable zHDloot %EZDloot
setvariable zHDskin %EZDskin
setvariable zHDskinexp %EZDskinexp
setvariable zHDskindrop %EZDskindrop
setvariable zHDarrange %EZDarrange
setvariable zHDmonsterapp %EZDmonsterapp
setvariable zHDmulti %EZDmulti
setvariable zHDexp %EZDexp
setvariable zHDexpA %EZDexpA
setvariable zHDexpB %EZDexpB
setvariable zHDtype %EZDtype
setvariable zHDrange %EZDrange
setvariable zHDrange1 %EZDrange1
setvariable zHDrepeat %EZDrepeat
setvariable zHDammo %EZDammo
setvariable zHDcombo1 %EZDcombo1
setvariable zHDcombo2 %EZDcombo2
setvariable zHDcombo3 %EZDcombo3
setvariable zHDcombo4 %EZDcombo4
setvariable zHDcombo5 %EZDcombo5
setvariable zHDcombo6 %EZDcombo6
setvariable zHDcombo7 %EZDcombo7
setvariable zHDcombo8 %EZDcombo8
setvariable zHDcounter %EZDcounter
setvariable zHDweapon %EZDweapon
setvariable zHDshield %EZDshield
setvariable zHDspell %EZDspell
setvariable zHDmana %EZDmana
setvariable zHDmc %EZDmc
setvariable zHDexpC %EZDexpC
setvariable zHDexpM %EZDexpM

deletevariable EZkill
deletevariable EZkills
deletevariable EZmonsterapp
deletevariable EZmonster
deletevariable EZloot
deletevariable EZretreat
deletevariable EZloots
deletevariable EZskin
deletevariable EZskin2
deletevariable EZskins
deletevariable EZskinexp
deletevariable EZskindrop
deletevariable EZarrange
deletevariable EZmulti
deletevariable EZmultiZ
deletevariable EZexp
deletevariable EZexpA
deletevariable EZexpB
deletevariable EZtype
deletevariable EZcounter
deletevariable EZrange
deletevariable EZrange1
deletevariable EZrepeat
deletevariable EZammo
deletevariable EZsnap
deletevariable EZarm
deletevariable EZamb
deletevariable EZspell
deletevariable EZmana
deletevariable EZm
deletevariable EZmc
deletevariable EZexpC
deletevariable EZexpM

deletevariable EZcombo1
deletevariable EZcombo2
deletevariable EZcombo3
deletevariable EZcombo4
deletevariable EZcombo5
deletevariable EZcombo6
deletevariable EZcombo7
deletevariable EZcombo8

deletevariable EZmulti1
deletevariable EZmulti2
deletevariable EZmulti3
deletevariable EZmulti4
deletevariable EZmulti5
deletevariable EZmulti6
deletevariable EZmulti7
deletevariable EZmulti8
deletevariable EZmulti9
deletevariable EZmulti10
deletevariable EZmulti11
deletevariable EZmulti12
deletevariable EZmulti13
deletevariable EZmulti14
deletevariable EZmulti15
deletevariable EZmulti16
deletevariable EZmulti17
deletevariable EZmulti18
deletevariable EZmulti19
deletevariable EZmulti20

deletevariable EZweapon
deletevariable EZshield
deletevariable EZbrawlT

deletevariable EZD
deletevariable EZDloot
deletevariable EZDretreat
deletevariable EZDskin
deletevariable EZDskinexp
deletevariable EZDskindrop
deletevariable EZDarrange
deletevariable EZDmonsterapp
deletevariable EZDmulti
deletevariable EZDexp
deletevariable EZDexpA
deletevariable EZDexpB
deletevariable EZDtype
deletevariable EZDrange
deletevariable EZDrange1
deletevariable EZDrepeat
deletevariable EZDammo
deletevariable EZDcombo1
deletevariable EZDcombo2
deletevariable EZDcombo3
deletevariable EZDcombo4
deletevariable EZDcombo5
deletevariable EZDcombo6
deletevariable EZDcombo7
deletevariable EZDcombo8
deletevariable EZDcounter
deletevariable EZDweapon
deletevariable EZDshield
deletevariable EZDspell
deletevariable EZDmana
deletevariable EZDmc
deletevariable EZDexpC
deletevariable EZDexpM
echo
echo ******************************************************
echo **                READ IMPORTANT!!
echo ** Do to certain Circumstances I have altered the
echo ** names of the Variables for SFhunter.
echo **
echo ** The script has detected that you are using the
echo ** older variables, or this is the first time you
echo ** have run the script for this character.
echo **
echo ** The script has now set-up your Varaibles to
echo ** use the correct names... Do not be alarmed.
echo **
echo ** PLEASE NOTE: You WILL need to re-enter your 
echo **              Default set-up.
echo **
echo *******************************************************
echo
pause 3
goto INTRO_NEW

0    = default
1    = Thief Ambushing +
2    = Slower Comboes +
3    = xtra

10   = 1st
20   = 2nd
30   = 3rd
40   = 4th
50   = 5th
60   = 6th


100  = Range, Poach, Snipe +
200  = Snapfiring +
300  = Choke +
400  = 4 combo +
500  = 5 combo +
600  = 6 combo +
700  = 7 combo +
800  = 8 combo +
900  = xtra
1000 = Ambushing +
1100 = Backstabbing +
1200 = Thrown +
1300 = xtra
1400 = Amb 4 combo +
1500 = Amb 5 combo +
1600 = Amb 6 combo +
1700 = Amb 7 combo +
1800 = Amb 8 combo +
1900 = xtra
2000 = xtra
2100 = xtra
2200 = Off Hand Thrown +
2300 = Magic +



10000 = Default Setup
20000 = xtra
30000 = xtra
40000 = xtra
