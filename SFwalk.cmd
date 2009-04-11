#Power Perception

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
echo SITE:  http://www.malific.com/ or http://www.geocities.com/malificdr/
echo AIM:   Malific Drockmur
echo EMAIL: drockmali@hotmail.com
echo
IF_1 goto BEGIN

echo
echo ****
echo ** Usage:
echo **   .SFwalk # <>
echo ** # = The number of rooms to walk before backtracking. (50 max)
echo ** <> = Placeholder, put anything here if you want to "perc health" as well.
echo **
echo ** IMPORTANT NOTES:
echo ** This script inputs 'set !desc' when started and 'set desc' when finished.
echo ** If the script is aborted, you will need to reset your desc manually.
echo **
echo ** Also, If aborted, there are several #B variables that won't be deleted.
echo ** These have the potential to to make the script backtrack farther than it
echo ** should if you walk less rooms than you aborted in a later use of the script.
echo ****
echo
echo
echo
exit
BEGIN:
counter set %1
	echo
	echo BEGIN:
	echo
put set !desc
goto POWER1

POWER1_PAUSE:
pause
POWER1:
IF_2 goto POWER2
	match POWER1_PAUSE ...wait
	match POWER1_PAUSE type ahead
POWER2:
put power
IF_2 waitfor roundtime
IF_2 goto EMPATHY1_PAUSE
	match LOOK roundtime
	matchwait

EMPATHY1_PAUSE:
pause
EMPATHY1:
	match EMPATHY1_PAUSE ...wait
	match EMPATHY1_PAUSE type ahead
	match LOOK roundtime
	match EMPATHY1_PAUSE You're not ready to do that again
put perc health
	matchwait

POWER_PAUSE:
pause
POWER:
	match POWER_PAUSE ...wait
	match POWER_PAUSE type ahead
	match NEXT roundtime
put power
	matchwait

EMPATHY_PAUSE:
pause
EMPATHY:
	match EMPATHY_PAUSE ...wait
	match EMPATHY_PAUSE type ahead
	match NEXT2 roundtime
	match NEXT2 You're not ready to do that again
put perc health
	matchwait

NEXT:
IF_2 goto EMPATHY
NEXT2:
pause
counter subtract 1
goto CHECK_%c

LOOK_PAUSE:
pause
LOOK:

LOOK2:
	echo
	echo LOOK:
	echo
	match N north.
	match N north,
	match NE northeast.
	match NE northeast,
	match SE southeast.
	match SE southeast,
	match S south.
	match S south,
	match SW southwest.
	match SW southwest,
	match NW northwest.
	match NW northwest,
	match E east.
	match E east,
	match W west.
	match W west,
	match LOOK_PAUSE ...wait
	match LOOK_PAUSE type ahead
put look
	matchwait

NE_PAUSE:
pause
NE:
	echo
	echo NE:
	echo
setvariable zHlooknext NE_LOOK
setvariable %c%B BACK_SW
	match POWER southwest,
	match POWER southwest.
	match NE_PAUSE ...wait
	match NE_PAUSE type ahead
put ne
	matchwait

NE_LOOK_PAUSE:
pause
NE_LOOK:
	match N north.
	match N north,
	match NE northeast.
	match NE northeast,
	match SE southeast.
	match SE southeast,
	match S south.
	match S south,
	match NW northwest.
	match NW northwest,
	match E east.
	match E east,
	match SW southwest.
	match NE_LOOK_PAUSE ...wait
	match NE_LOOK_PAUSE type ahead
	
put look
	matchwait

N_PAUSE:
pause
N:
	echo
	echo N:
	echo
setvariable zHlooknext N_LOOK
setvariable %c%B BACK_S
	match POWER south,
	match POWER south.
	match N_PAUSE ...wait
	match N_PAUSE type ahead
put n
	matchwait

N_LOOK_PAUSE:
pause
N_LOOK:
	match N north.
	match N north,
	match NE northeast.
	match NE northeast,
	match SE southeast.
	match SE southeast,
	match SW southwest.
	match SW southwest,
	match NW northwest.
	match NW northwest,
	match E east.
	match E east,
	match W west.
	match W west,
	match S south.
	match N_LOOK_PAUSE ...wait
	match N_LOOK_PAUSE type ahead
put look
	matchwait


NW_PAUSE:
pause
NW:
	echo
	echo NW:
	echo
setvariable zHlooknext NW_LOOK
setvariable %c%B BACK_SE
	match POWER southeast,
	match POWER southeast.
	match NW_PAUSE ...wait
	match NW_PAUSE type ahead
put nw
	matchwait

NW_LOOK_PAUSE:
pause
NW_LOOK:
	match N north.
	match N north,
	match NE northeast.
	match NE northeast,
	match S south.
	match S south,
	match SW southwest.
	match SW southwest,
	match NW northwest.
	match NW northwest,
	match W west.
	match W west,
	match SE southeast.
	match NW_LOOK_PAUSE ...wait
	match NW_LOOK_PAUSE type ahead
put look
	matchwait

E_PAUSE:
pause
E:
	echo
	echo E:
	echo
setvariable zHlooknext E_LOOK
setvariable %c%B BACK_W
	match POWER west,
	match POWER west.
	match E_PAUSE ...wait
	match E_PAUSE type ahead
put e
	matchwait

E_LOOK_PAUSE:
pause
E_LOOK:
	match N north.
	match N north,
	match NE northeast.
	match NE northeast,
	match SE southeast.
	match SE southeast,
	match S south.
	match S south,
	match SW southwest.
	match SW southwest,
	match NW northwest.
	match NW northwest,
	match E east.
	match E east,
	match W west.
	match E_LOOK_PAUSE ...wait
	match E_LOOK_PAUSE type ahead
put look
	matchwait

W_PAUSE:
pause
W:
	echo
	echo W:
	echo
setvariable zHlooknext W_LOOK
setvariable %c%B BACK_E
	match POWER east,
	match POWER east.
	match W_PAUSE ...wait
	match W_PAUSE type ahead
put w
	matchwait

W_LOOK_PAUSE:
pause
W_LOOK:
	match N north.
	match N north,
	match NE northeast.
	match NE northeast,
	match SE southeast.
	match SE southeast,
	match S south.
	match S south,
	match SW southwest.
	match SW southwest,
	match NW northwest.
	match NW northwest,
	match W west.
	match W west,
	match E east.
	match W_LOOK_PAUSE ...wait
	match W_LOOK_PAUSE type ahead
put look
	matchwait

SE_PAUSE:
pause
SE:
	echo
	echo SE:
	echo
setvariable zHlooknext SE_LOOK
setvariable %c%B BACK_NW
	match POWER northwest,
	match POWER northwest.
	match SE_PAUSE ...wait
	match SE_PAUSE type ahead
put SE
	matchwait

SE_LOOK_PAUSE:
pause
SE_LOOK:
	match N north.
	match N north,
	match NE northeast.
	match NE northeast,
	match SE southeast.
	match SE southeast,
	match S south.
	match S south,
	match SW southwest.
	match SW southwest,
	match E east.
	match E east,
	match NW northwest.
	match SE_LOOK_PAUSE ...wait
	match SE_LOOK_PAUSE type ahead
put look
	matchwait

S_PAUSE:
pause
S:
	echo
	echo S:
	echo
setvariable zHlooknext S_LOOK
setvariable %c%B BACK_N
	match POWER north,
	match POWER north.
	match S_PAUSE ...wait
	match S_PAUSE type ahead
put s
	matchwait

S_LOOK_PAUSE:
pause
S_LOOK:
	match NE northeast.
	match NE northeast,
	match SE southeast.
	match SE southeast,
	match S south.
	match S south,
	match SW southwest.
	match SW southwest,
	match NW northwest.
	match NW northwest,
	match E east.
	match E east,
	match W west.
	match W west,
	match N north.
	match S_LOOK_PAUSE ...wait
	match S_LOOK_PAUSE type ahead
put look
	matchwait



SW_PAUSE:
pause
SW:
	echo
	echo SW:
	echo
setvariable zHlooknext SW_LOOK
setvariable %c%B BACK_NE
	match POWER northeast,
	match POWER northeast.
	match SW_PAUSE ...wait
	match SW_PAUSE type ahead
put sw
	matchwait

SW_LOOK_PAUSE:
pause
SW_LOOK:
	match N north.
	match N north,
	match SE southeast.
	match SE southeast,
	match S south.
	match S south,
	match SW southwest.
	match SW southwest,
	match NW northwest.
	match NW northwest,
	match W west.
	match W west,
	match NE northeast.
	match SW_LOOK_PAUSE ...wait
	match SW_LOOK_PAUSE type ahead
put look
	matchwait


CHECK_1:
CHECK_2:
CHECK_3:
CHECK_4:
CHECK_5:
CHECK_6:
CHECK_7:
CHECK_8:
CHECK_9:
CHECK_10:
CHECK_11:
CHECK_12:
CHECK_13:
CHECK_14:
CHECK_15:
CHECK_16:
CHECK_17:
CHECK_18:
CHECK_19:
CHECK_20:
CHECK_21:
CHECK_22:
CHECK_23:
CHECK_24:
CHECK_25:
CHECK_26:
CHECK_27:
CHECK_28:
CHECK_29:
CHECK_30:
CHECK_31:
CHECK_32:
CHECK_33:
CHECK_34:
CHECK_35:
CHECK_36:
CHECK_37:
CHECK_38:
CHECK_39:
CHECK_40:
CHECK_41:
CHECK_42:
CHECK_43:
CHECK_44:
CHECK_45:
CHECK_46:
CHECK_47:
CHECK_48:
CHECK_49:
CHECK_50:
goto %zHlooknext

CHECK_0:
deletevariable zHlooknext
BACKTRACKING:
	echo
	echo BACKTRACKING:
	echo
goto %c

BACK_N_PAUSE:
pause
BACK_N:
pause
	echo
	echo BACK_N:
	echo
	match BACK_POWER south,
	match BACK_POWER south.
	match BACK_N_PAUSE ...wait
	match BACK_N_PAUSE type ahead
put n
	matchwait

BACK_S_PAUSE:
pause
BACK_S:
pause
	echo
	echo BACK_S:
	echo
	match BACK_POWER north,
	match BACK_POWER north.
	match BACK_S_PAUSE ...wait
	match BACK_S_PAUSE type ahead
put s
	matchwait

BACK_NE_PAUSE:
pause
BACK_NE:
pause
	echo
	echo BACK_NE:
	echo
	match BACK_POWER southwest,
	match BACK_POWER southwest.
	match BACK_NE_PAUSE ...wait
	match BACK_NE_PAUSE type ahead
put ne
	matchwait


BACK_NW_PAUSE:
pause
BACK_NW:
pause
	echo
	echo BACK_NW:
	echo
	match BACK_POWER southeast,
	match BACK_POWER southeast.
	match BACK_NW_PAUSE ...wait
	match BACK_NW_PAUSE type ahead
put nw
	matchwait

BACK_SE_PAUSE:
pause
BACK_SE:
pause
	echo
	echo BACK_SE:
	echo
	match BACK_POWER northwest,
	match BACK_POWER northwest.
	match BACK_SE_PAUSE ...wait
	match BACK_SE_PAUSE type ahead
put se
	matchwait

BACK_SW_PAUSE:
pause
BACK_SW:
pause
	echo
	echo BACK_SW:
	echo
	match BACK_POWER northeast,
	match BACK_POWER northeast.
	match BACK_SW_PAUSE ...wait
	match BACK_SW_PAUSE type ahead
put sw
	matchwait

BACK_W_PAUSE:
pause
BACK_W:
pause
	echo
	echo BACK_W:
	echo
	match BACK_POWER east,
	match BACK_POWER east.
	match BACK_W_PAUSE ...wait
	match BACK_W_PAUSE type ahead
put w
	matchwait

BACK_E_PAUSE:
pause
BACK_E:
pause
	echo
	echo BACK_E:
	echo
	match BACK_POWER west,
	match BACK_POWER west.
	match BACK_E_PAUSE ...wait
	match BACK_E_PAUSE type ahead
put e
	matchwait

BACK_POWER:
put power
wait
deletevariable %c%B
counter add 1
IF_2 goto BACK_EMPATHY
goto %c

BACK_EMPATHY_PAUSE:
pause
BACK_EMPATHY:
	match BACK_EMPATHY_PAUSE ...wait
	match BACK_EMPATHY_PAUSE type ahead
	match %c roundtime
	match %c You're not ready to do that again
put perc health
	matchwait


0:
counter set 1
1:
goto %1B
%1B:
goto DONE


2:
goto %2B
%2B:
goto DONE


3:
goto %3B
%3B:
goto DONE

4:
goto %4B
%4B:
goto DONE

5:
goto %5B
%5B:
goto DONE

6:
goto %6B
%6B:
goto DONE

7:
goto %7B
%7B:
goto DONE

8:
goto %8B
%8B:
goto DONE

9:
goto %9B
%9B:
goto DONE

10:
goto %10B
%10B:
goto DONE

11:
goto %11B
%11B:
goto DONE

12:
goto %12B
%12B:
goto DONE

13:
goto %13B
%13B:
goto DONE

14:
goto %14B
%14B:
goto DONE

15:
goto %15B
%15B:
goto DONE

16:
goto %16B
%16B:
goto DONE

17:
goto %17B
%17B:
goto DONE

18:
goto %18B
%18B:
goto DONE

19:
goto %19B
%19B:
goto DONE

20:
goto %20B
%20B:
goto DONE

21:
goto %21B
%21B:
goto DONE

22:
goto %22B
%22B:
goto DONE

23:
goto %23B
%23B:
goto DONE

24:
goto %24B
%24B:
goto DONE

25:
goto %25B
%25B:
goto DONE

26:
goto %26B
%26B:
goto DONE

27:
goto %27B
%27B:
goto DONE

28:
goto %28B
%28B:
goto DONE

29:
goto %29B
%29B:
goto DONE

30:
goto %30B
%30B:
goto DONE

31:
goto %31B
%31B:
goto DONE

32:
goto %32B
%32B:
goto DONE

33:
goto %33B
%33B:
goto DONE

34:
goto %34B
%34B:
goto DONE

35:
goto %35B
%35B:
goto DONE

36:
goto %36B
%36B:
goto DONE

37:
goto %37B
%37B:
goto DONE

38:
goto %38B
%38B:
goto DONE

39:
goto %39B
%39B:
goto DONE

40:
goto %40B
%40B:
goto DONE

41:
goto %41B
%41B:
goto DONE

42:
goto %42B
%42B:
goto DONE

43:
goto %43B
%43B:
goto DONE

44:
goto %44B
%44B:
goto DONE

45:
goto %45B
%45B:
goto DONE

46:
goto %46B
%46B:
goto DONE

47:
goto %47B
%47B:
goto DONE

48:
goto %48B
%48B:
goto DONE

49:
goto %49B
%49B:
goto DONE

50:
goto %50B
%50B:
goto DONE

LABELERROR:
echo
echo ***************
echo ** LABELERROR!
echo ***************
echo
DONE:
put set Desc
echo
echo ***********************************
echo **  Back in the starting room!   **
echo **  Would you like to go again?  **
echo **                               **
echo **      Type GO if you do.       **
echo ***********************************
echo
waitfor Go What?
goto BEGIN