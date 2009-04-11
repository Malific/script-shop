#Lootall.cmd
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
echo SITE:  http://www.malific.com/ or http://www.geocities.com/malificdr/
echo AIM:   Malific Drockmur
echo EMAIL: drockmali@hotmail.com
echo
if_2 goto LOOT_LOOK
echo
echo *******************************************************
echo **         You need to specify containers!           **
echo **                .loot [1] [2] [3]                  **
echo **         .loot [box holder] [gem holder]           **
echo **  [unbunable skins/secondary box holder(optional)] **
echo *******************************************************
echo
echo ***************************************************
echo **   Remember to put descripts insides "'s       **
echo **         or a period between words.            **
echo ** example:         "gem pouch"                  **
echo **                      OR                       **
echo **                   gem.pouch                   **
echo ***************************************************
exit

LOOK1:
LOOK2:
LOOK3:
LOOT_LOOK:
	echo **
	echo ** LOOT_LOOK:
	echo **
	match LOOT_ARROW arrow
	match LOOT_BOLT bolt
	match LOOT_COIN coin
	match LOOT_TABLET tablet
	match LOOT_KGWETH kyanite
	match LOOT_JGWETH jadeite
	match LOOT_LOOK2 :
put look
	matchwait
LOOK10:
LOOK20:
LOOK30:
LOOT_LOOK2:
	echo
	echo LOOT_LOOK2:
	echo
	match LOOT_EGG egg
	match LOOT_BARB tail barb
	match LOOT_FORECLAW foreclaw
	match LOOT_LOOK3 :
put look
	matchwait
LOOK100:
LOOK200:
LOOK300:
LOOT_LOOK3:
	echo
	echo LOOT_LOOK3:
	echo
	match LOOT_TOOTH tooth,
	match LOOT_TALON talon,
	match LOOT_SKIN skin,
	match LOOT_SCALE scale,
	match LOOT_PELT pelt,
	match LOOT_CLAW claw,
	match LOOT_TUSK tusk,
	match LOOT_FEATHER feather,
	match LOOT_SHELL shell,
	match LOOT_FRAGMENT fragment,
	match LOOT_EAR grendel ear
	match LOOT_PSUEDOPOD psuedopod
	match LOOT_HOOF hoof
	match LOOT_HIDE hide
	match LOOT_HORN horn
	match LOOT_ANTENNAE antennae
	match LOOT_STRIPE stripe
	match LOOT_EYE eye,
	match LOOT_SCALP scalp
	match LOOT_SAC sac
	match LOOT_HEART heart
	match LOOT_SCROLL scroll
	match LOOT_TAIL tail
	match LOOT_TEAR tear
	match LOOT_RUNE rune
	match LOOT_LOOK4 :
put look
	matchwait
LOOK1000:
LOOK2000:
LOOK3000:
LOOT_LOOK4:
	echo
	echo LOOT_LOOK4:
	echo
	match LOOT_TOENAIL toenail
	match LOOT_TUSKS a pair of tusks
	match LOOT_HIDES hides
	match LOOT_TOOTH tooth
	match LOOT_TALON talon
	match LOOT_SKIN skin
	match LOOT_SCALE scale
	match LOOT_PELT pelt
	match LOOT_CLAW claw
	match LOOT_TUSK tusk
	match LOOT_FEATHER feather
	match LOOT_SHELL shell
	match LOOT_FRAGMENT fragment
	match LOOT_EYE eye
	match NO_LOOT :
put look
	matchwait
LOOT_COIN:

put get coin
put get coin
wait
pause
Goto LOOT_LOOK

LOOT_ARROW:
	save arrow
	counter set 1
	goto GET_LOOT

LOOT_BOLT:
	save bolt
	counter set 1
	goto GET_LOOT

LOOT_STRONGBOX:
	save strongbox

	counter set 1

	goto GET_LOOT
	matchwait

LOOT_COFFER:
	save coffer

	counter set 1

	goto GET_LOOT
	matchwait

LOOT_CHEST:
	save chest

	counter set 1
	GOTO GET_LOOT

LOOT_TINDERBOX:
	save tinderbox

	counter set 1

	goto GET_LOOT
	matchwait

LOOT_BOX:
	save box

	counter set 1

	goto GET_LOOT
	matchwait

LOOT_CADDY:
	save caddy

	counter set 1

	goto GET_LOOT
	matchwait

LOOT_CASKET:
	save casket

	counter set 1

	goto GET_LOOT
	matchwait

LOOT_TRUNK:
	save trunk

	counter set 1

	goto GET_LOOT
	matchwait

LOOT_SKIPPET:
	save skippet

	counter set 1

	goto GET_LOOT
	matchwait

LOOT_CRATE:
	save crate

	counter set 1

	goto GET_LOOT
	matchwait

LOOT_PEARL:
	save pearl

	counter set 2

	goto GET_LOOT
	matchwait

LOOT_SAPPHIRE:
	save sapphire

	counter set 2

	goto GET_LOOT
	matchwait

LOOT_OPAL:
	save opal

	counter set 2

	goto GET_LOOT
	matchwait

LOOT_BLOODSTONE:
	save bloodstone

	counter set 2

	goto GET_LOOT
	matchwait

LOOT_NUGGET:
	save nugget

	counter set 2

	goto GET_LOOT
	matchwait

LOOT_ZIRCON:
	save zircon

	counter set 2

	goto GET_LOOT
	matchwait

LOOT_AMETHYST:
	save amethyst

	counter set 2

	goto GET_LOOT
	matchwait

LOOT_QUARTZ:
	save quartz

	counter set 2

	goto GET_LOOT
	matchwait

LOOT_JASPER:
	save jasper

	counter set 20

	goto GET_LOOT
	matchwait

LOOT_STONE:
	save stone

	counter set 20

	goto GET_LOOT
	matchwait

LOOT_BLOODGEM:
	save bloodgem

	counter set 2

	goto GET_LOOT
	matchwait

LOOT_CRYSTAL:
	save crystal

	counter set 200

	goto GET_LOOT
	matchwait

LOOT_TOPAZ:
	save topaz

	counter set 20

	goto GET_LOOT
	matchwait

LOOT_RUBY:
	save ruby

	counter set 20

	goto GET_LOOT
	matchwait

LOOT_DIOPSIDE:
	save diopside
	counter set 2


	goto GET_LOOT
	matchwait

LOOT_BAR:
	save bar

	counter set 200

	goto GET_LOOT
	matchwait

LOOT_GEM:
	save gem

	counter set 2000

	goto GET_LOOT
	matchwait

LOOT_RUNE:
	save rune

	counter set 100

	goto GET_LOOT
	matchwait

LOOT_SCROLL:
	save scroll

	counter set 100

	goto GET_LOOT
	matchwait

LOOT_TABLET:
	save tablet

	counter set 1

	goto GET_LOOT
	matchwait

LOOT_KGWETH:
	save gweth

	counter set 1

	goto GET_LOOT
	matchwait

LOOT_JGWETH:
	save gweth

	counter set 1

	goto GET_LOOT
	matchwait

LOOT_FRAGMENTS:
	save fragment
	counter set 3
	goto GET_LOOT

LOOT_SUNSTONE:
	save sunstone
	counter set 2
	goto GET_LOOT

LOOT_MOONSTONE:
	save moonstone
	counter set 2
	goto GET_LOOT

LOOT_GOLDSTONE:
	save goldstone
	counter set 2
	goto GET_LOOT

LOOT_TEARDROP:
	save teardrop
	counter set 2
	goto GET_LOOT

LOOT_AMBERGRIS:
	save ambergis
	counter set 20
	goto GET_LOOT

LOOT_ALEXANDRITE:
	save alexandrite
	counter set 20
	goto GET_LOOT

LOOT_AGATE:
	save agate
	counter set 20
	goto GET_LOOT

LOOT_ANIMITE:
	save animite
	counter set 20
	goto GET_LOOT

LOOT_BEAD:
	save bead
	counter set 20
	goto GET_LOOT

LOOT_BERYL:
	save beryl
	counter set 20
	goto GET_LOOT

LOOT_CARNELION:
	save carnelion
	counter set 20
	goto GET_LOOT

LOOT_CORAL:
	save coral
	counter set 20
	goto GET_LOOT

LOOT_DIAMOND:
	save diamond
	counter set 20
	goto GET_LOOT

LOOT_EGG:
	save egg
	counter set 20
	goto GET_LOOT

LOOT_EMERALD:
	save emerald
	counter set 20
	goto GET_LOOT

LOOT_GARNET:
	save garnet
	counter set 20
	goto GET_LOOT

LOOT_GLASS:
	save glass
	counter set 20
	goto GET_LOOT

LOOT_GRANITE:
echo
echo LOOT_GRANITE:
echo
	save granite
	counter set 20
	goto GET_LOOT

LOOT_HAWKSEYE:
	save hawkseye
	counter set 20
	goto GET_LOOT

LOOT_JADE:
	save jade
	counter set 20
	goto GET_LOOT

LOOT_LAZULI:
	save lazuli
	counter set 20
	goto GET_LOOT

LOOT_LUMP:
	save lump
	counter set 20
	goto GET_LOOT

LOOT_MARBLE:
	save marble
	counter set 20
	goto GET_LOOT

LOOT_MINERAL:
	save mineral
	counter set 20
	goto GET_LOOT

LOOT_SHEEPSKIN:
	save sheepskin
	counter set 30
	goto GET_LOOT

LOOT_PEBBLE:
	save pebble
	counter set 20
	goto GET_LOOT

LOOT_PLATINUM:
	save platinum
	counter set 20
	goto GET_LOOT

LOOT_FORECLAW:
	save foreclaw
	counter set 30
	goto GET_LOOT

LOOT_TOURMALINE:
	save tourmaline
	counter set 20
	goto GET_LOOT

LOOT_AMBER:
	save amber
	counter set 200
	goto GET_LOOT

LOOT_MALACHITE:
	save malachite
	counter set 200
	goto GET_LOOT

LOOT_AQUAMARINE:
	save aquamarine
	counter set 20
	goto GET_LOOT

LOOT_TOOTH:
	save tooth
	counter set 200
	goto GET_LOOT

LOOT_TALON:
	save talon
	counter set 200
	goto GET_LOOT

LOOT_SKIN:
	save skin
	counter set 300
	goto GET_LOOT

LOOT_SCALE:
	save scale
	counter set 300
	goto GET_LOOT

LOOT_PELT:
	save pelt
	counter set 300
	goto GET_LOOT

LOOT_CLAW:
	save claw
	counter set 300
	goto GET_LOOT

LOOT_TUSK:
	save tusk
	counter set 300
	goto GET_LOOT

LOOT_FEATHER:
	save feather
	counter set 300
	goto GET_LOOT

LOOT_SHELL:
	save shell
	counter set 300
	goto GET_LOOT

LOOT_FRAGMENT:
	save fragment
	counter set 200
	goto GET_LOOT

LOOT_EAR:
	save ear
	counter set 300
	goto GET_LOOT

LOOT_PSUEDOPOD:
	save psuedopod
	counter set 300
	goto GET_LOOT

LOOT_HOOF:
	save hoof
	counter set 300
	goto GET_LOOT

LOOT_HIDE:
	save hide
	counter set 300
	goto GET_LOOT

LOOT_HORN:
	save horn
	counter set 300
	goto GET_LOOT

LOOT_ANTENNAE:
	save antennae
	counter set 300
	goto GET_LOOT

LOOT_STRIPE:
	save stripe
	counter set 300
	goto GET_LOOT

LOOT_EYE:
	save eye
	counter set 300
	goto GET_LOOT

LOOT_SCALP:
	save scalp
	counter set 300
	goto GET_LOOT

LOOT_SAC:
	save sac
	counter set 300
	goto GET_LOOT

LOOT_ONYX:
	save onyx
	counter set 200
	goto GET_LOOT

LOOT_HEART:
	save heart
	counter set 300
	goto GET_LOOT

LOOT_BARB:
	save barb
	counter set 30
	goto GET_LOOT

LOOT_TAIL:
	save tail
	counter set 300
	goto GET_LOOT

LOOT_TEAR:
	save tear
	counter set 200
	goto GET_LOOT

LOOT_SPINEL:
	save spinel
	counter set 200
	goto GET_LOOT

LOOT_TOENAIL:
	save toenail
	counter set 3000
	goto GET_LOOT

LOOT_TUSKS:
	save tusks
	counter set 3000
	goto GET_LOOT

LOOT_HIDES:
	save hides
	counter set 3000
	goto GET_LOOT



GET_LOOT:
	echo
	echo ** GET_LOOT:
	echo
	match LOOT_PACK you get
	match LOOT_STOW you pick up
	match LOOT_MISS what were you
	match LOOT_HANDS are full
put get %s
	matchwait

LOOT_HANDS:
	echo
	echo **********************
	echo ** HANDS ARE FULL!! **
	echo **********************
	echo
next1:
match stow container for stowing things
match stow in what?
match next11 you put
match next11 STOW HELP
put stow right
matchwait

next11:
pause
match stow container for stowing things
match stow in what?
match GET_LOOT you put
match GET_LOOT STOW HELP
put stow left
matchwait

STOW:
put stow help
	echo
	echo ************************************************************
	echo ** IF your containers are full the script is over, sorry! **
	echo ************************************************************
	echo

waitfor you put
goto GET_LOOT

LOOT_PACK:
	echo
	echo ***************************************************
	echo ** We are grabbing an item from your inventory!! **
	echo ***************************************************
	echo


LOOT_MISS:
	echo
	echo *************************************************
	echo **  Can't find the item we're trying to loot!  **
	echo **    Figure out what I'm trying to grab,      **
	echo ** Then try and see what is making me grab it! **
	echo *************************************************
	echo
Pause 10
goto LOOT_LOOK:

LOOT_STOW:
echo
echo	LOOT_STOW:
echo
goto %c

1:
10:
100:
1000:
	echo
	echo ** 1:/10:/100:/1000:
	echo
	match CLOSED1 But that's closed
	match LOOT_FULL1 no matter
	match LOOT_FULL1 any more room
	match LOOT_FULL1 too heavy
	match NOT_THERE referring
	match LOOK%c you put
Put put %s in my %1
	matchwait

LOOT_FULL1:
	echo
	echo ** LOOT_FULL1:
	echo
IF_3	match CLOSED3 But that's closed
IF_3	match LOOT_LOOP no matter
IF_3	match LOOT_LOOP any more room
IF_3	match LOOT_LOOP too heavy
IF_3    match NOT_THERE What are you
IF_3	match LOOK%c you put
IF_3 Put put %s in my %3
IF_3	matchwait
GOTO LOOT_LOOP

2:
20:
echo
echo 20:
echo
200:
2000:
	echo
	echo ** 2:/20:/200:/2000:
	echo
	match CLOSED2 But that's closed
	match 1 no matter
	match 1 any more room
	match 1 too heavy
	match NOT_THERE What are you
	match LOOK%c you put
Put put %s in my %2
	matchwait

3:
30:
300:
3000:
BUN:
	echo
	echo BUN:/3:/30:/300:/3000:
	echo
	match BUN_DONEW you bundle up
	match LOOK%c you stuff
	match ROPE BUNDLE HELP
	match ROPE new bundle
put bundle
	matchwait

BUN_DONEW:
	echo
	echo ** BUN_DONEW:
	echo
	match LOOK%c You sling
	match BUN_DROP wear
put wear bun
	matchwait

BUN_DROP:
	echo
	echo BUN_DROP:
	echo
put drop bun
waitfor you drop
put remove bun
waitfor you sling
put drop bun
waitfor you drop
put get other bun
waitfor you pick up
put wear bun
waitfor you sling
goto LOOK%c

ROPE:
	echo
	echo ROPE:
	echo
	match NOBUN What are you
	match BUN you get
put get rope
	matchwait

NOBUN:
IF_3	match CLOSED3 But that's closed
IF_3	match 1 no matter
IF_3	match 1 any more room
IF_3	match 1 too heavy
IF_3	match NOT_THERE What are you
IF_3	match LOOK%c you put
IF_3 Put put %s in my %3
IF_3	matchwait
GOTO 1

CLOSED1:
put open %1
waitfor you open
goto 1

CLOSED2:
put open %2
waitfor you open
goto 2

CLOSED3:
put open %3
waitfor you open
goto NOBUN

NOT_THERE:
	echo
	echo ***********************************************************************
	echo ** I attempted to put (%s) in a container, but couldn't find it.
	echo ** Please restart me and make sure your containers are available.
	echo ***********************************************************************
	echo
exit

LOOT_LOOP:
	echo
	echo *******************************************************
	echo ** A container is full.  I will attempt to continue, **
	echo **   but most likely I will hang up as your hands    **
	echo **          fill and I try to empty them.            **
	echo *******************************************************
	echo
Goto LOOK_%c

LOOK_:
LOOK_1:
LOOK_2:
LOOK_3:
goto LOOT_LOOK

LOOK_10:
LOOK_20:
LOOK_30:
goto LOOT_LOOK2

LOOK_100:
LOOK_200:
LOOK_300:
GOTO LOOT_LOOK3

NO_LOOT:
	echo
	echo ********************************************
	echo ** I've found all the loot I can for you. **
	echo **    Make sure I haven't missed any.     **
	echo ********************************************
	echo
put close %2
waitfor close
put get bun
put get bun
waitfor you
put wear bun
wait
put wear bun
exit

LABELERROR:
	echo
	echo LABELERROR:
	echo
	