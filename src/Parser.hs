{-# OPTIONS_GHC -w #-}
module Parser (parseExpr) where
import Data.Char (isDigit, isSpace, isAlpha)
import Data.List (stripPrefix)
import Syntax
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19
	| HappyAbsSyn20 t20
	| HappyAbsSyn21 t21

action_0 (22) = happyShift action_6
action_0 (23) = happyShift action_7
action_0 (24) = happyShift action_8
action_0 (25) = happyShift action_9
action_0 (26) = happyShift action_10
action_0 (28) = happyShift action_11
action_0 (29) = happyShift action_12
action_0 (30) = happyShift action_13
action_0 (31) = happyShift action_14
action_0 (33) = happyShift action_15
action_0 (34) = happyShift action_16
action_0 (35) = happyShift action_17
action_0 (36) = happyShift action_18
action_0 (44) = happyShift action_19
action_0 (46) = happyShift action_20
action_0 (53) = happyShift action_21
action_0 (4) = happyGoto action_22
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 _ = happyFail

action_1 (22) = happyShift action_6
action_1 (23) = happyShift action_7
action_1 (24) = happyShift action_8
action_1 (25) = happyShift action_9
action_1 (26) = happyShift action_10
action_1 (28) = happyShift action_11
action_1 (29) = happyShift action_12
action_1 (30) = happyShift action_13
action_1 (31) = happyShift action_14
action_1 (33) = happyShift action_15
action_1 (34) = happyShift action_16
action_1 (35) = happyShift action_17
action_1 (36) = happyShift action_18
action_1 (44) = happyShift action_19
action_1 (46) = happyShift action_20
action_1 (53) = happyShift action_21
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (8) = happyGoto action_5
action_1 _ = happyFail

action_2 (49) = happyShift action_41
action_2 _ = happyReduce_1

action_3 (42) = happyShift action_39
action_3 (54) = happyShift action_40
action_3 _ = happyReduce_2

action_4 (33) = happyShift action_15
action_4 (34) = happyShift action_16
action_4 (35) = happyShift action_17
action_4 (36) = happyShift action_18
action_4 (44) = happyShift action_38
action_4 (46) = happyShift action_20
action_4 (8) = happyGoto action_37
action_4 _ = happyReduce_17

action_5 _ = happyReduce_19

action_6 (36) = happyShift action_36
action_6 _ = happyFail

action_7 (36) = happyShift action_35
action_7 _ = happyFail

action_8 (35) = happyShift action_34
action_8 _ = happyFail

action_9 (35) = happyShift action_33
action_9 _ = happyFail

action_10 (35) = happyShift action_32
action_10 _ = happyFail

action_11 (35) = happyShift action_31
action_11 _ = happyFail

action_12 (35) = happyShift action_30
action_12 (13) = happyGoto action_29
action_12 _ = happyFail

action_13 (35) = happyShift action_28
action_13 (9) = happyGoto action_27
action_13 _ = happyFail

action_14 (22) = happyShift action_6
action_14 (23) = happyShift action_7
action_14 (24) = happyShift action_8
action_14 (25) = happyShift action_9
action_14 (26) = happyShift action_10
action_14 (28) = happyShift action_11
action_14 (29) = happyShift action_12
action_14 (30) = happyShift action_13
action_14 (31) = happyShift action_14
action_14 (33) = happyShift action_15
action_14 (34) = happyShift action_16
action_14 (35) = happyShift action_17
action_14 (36) = happyShift action_18
action_14 (44) = happyShift action_19
action_14 (46) = happyShift action_20
action_14 (53) = happyShift action_21
action_14 (6) = happyGoto action_26
action_14 (7) = happyGoto action_4
action_14 (8) = happyGoto action_5
action_14 _ = happyFail

action_15 _ = happyReduce_20

action_16 _ = happyReduce_21

action_17 _ = happyReduce_22

action_18 _ = happyReduce_23

action_19 (22) = happyShift action_6
action_19 (23) = happyShift action_7
action_19 (24) = happyShift action_8
action_19 (25) = happyShift action_9
action_19 (26) = happyShift action_10
action_19 (28) = happyShift action_11
action_19 (29) = happyShift action_12
action_19 (30) = happyShift action_13
action_19 (31) = happyShift action_14
action_19 (33) = happyShift action_15
action_19 (34) = happyShift action_16
action_19 (35) = happyShift action_25
action_19 (36) = happyShift action_18
action_19 (44) = happyShift action_19
action_19 (46) = happyShift action_20
action_19 (53) = happyShift action_21
action_19 (6) = happyGoto action_24
action_19 (7) = happyGoto action_4
action_19 (8) = happyGoto action_5
action_19 _ = happyFail

action_20 _ = happyReduce_24

action_21 (35) = happyShift action_23
action_21 _ = happyFail

action_22 (55) = happyAccept
action_22 _ = happyFail

action_23 (37) = happyShift action_61
action_23 _ = happyFail

action_24 (42) = happyShift action_39
action_24 (45) = happyShift action_60
action_24 (54) = happyShift action_40
action_24 _ = happyFail

action_25 (37) = happyShift action_59
action_25 _ = happyReduce_22

action_26 (32) = happyShift action_58
action_26 (42) = happyShift action_39
action_26 (54) = happyShift action_40
action_26 _ = happyFail

action_27 (47) = happyShift action_57
action_27 _ = happyFail

action_28 (44) = happyShift action_54
action_28 (14) = happyGoto action_56
action_28 (15) = happyGoto action_52
action_28 (16) = happyGoto action_53
action_28 _ = happyReduce_33

action_29 (47) = happyShift action_55
action_29 _ = happyFail

action_30 (44) = happyShift action_54
action_30 (14) = happyGoto action_51
action_30 (15) = happyGoto action_52
action_30 (16) = happyGoto action_53
action_30 _ = happyReduce_33

action_31 (37) = happyShift action_50
action_31 _ = happyFail

action_32 (37) = happyShift action_49
action_32 _ = happyFail

action_33 (37) = happyShift action_48
action_33 _ = happyFail

action_34 (37) = happyShift action_47
action_34 _ = happyFail

action_35 (22) = happyShift action_6
action_35 (23) = happyShift action_7
action_35 (24) = happyShift action_8
action_35 (25) = happyShift action_9
action_35 (26) = happyShift action_10
action_35 (28) = happyShift action_11
action_35 (29) = happyShift action_12
action_35 (30) = happyShift action_13
action_35 (31) = happyShift action_14
action_35 (33) = happyShift action_15
action_35 (34) = happyShift action_16
action_35 (35) = happyShift action_17
action_35 (36) = happyShift action_18
action_35 (44) = happyShift action_19
action_35 (46) = happyShift action_20
action_35 (53) = happyShift action_21
action_35 (6) = happyGoto action_46
action_35 (7) = happyGoto action_4
action_35 (8) = happyGoto action_5
action_35 _ = happyFail

action_36 (40) = happyShift action_45
action_36 _ = happyFail

action_37 _ = happyReduce_18

action_38 (22) = happyShift action_6
action_38 (23) = happyShift action_7
action_38 (24) = happyShift action_8
action_38 (25) = happyShift action_9
action_38 (26) = happyShift action_10
action_38 (28) = happyShift action_11
action_38 (29) = happyShift action_12
action_38 (30) = happyShift action_13
action_38 (31) = happyShift action_14
action_38 (33) = happyShift action_15
action_38 (34) = happyShift action_16
action_38 (35) = happyShift action_17
action_38 (36) = happyShift action_18
action_38 (44) = happyShift action_19
action_38 (46) = happyShift action_20
action_38 (53) = happyShift action_21
action_38 (6) = happyGoto action_24
action_38 (7) = happyGoto action_4
action_38 (8) = happyGoto action_5
action_38 _ = happyFail

action_39 (22) = happyShift action_6
action_39 (23) = happyShift action_7
action_39 (24) = happyShift action_8
action_39 (25) = happyShift action_9
action_39 (26) = happyShift action_10
action_39 (28) = happyShift action_11
action_39 (29) = happyShift action_12
action_39 (30) = happyShift action_13
action_39 (31) = happyShift action_14
action_39 (33) = happyShift action_15
action_39 (34) = happyShift action_16
action_39 (35) = happyShift action_17
action_39 (36) = happyShift action_18
action_39 (44) = happyShift action_19
action_39 (46) = happyShift action_20
action_39 (53) = happyShift action_21
action_39 (6) = happyGoto action_44
action_39 (7) = happyGoto action_4
action_39 (8) = happyGoto action_5
action_39 _ = happyFail

action_40 (22) = happyShift action_6
action_40 (23) = happyShift action_7
action_40 (24) = happyShift action_8
action_40 (25) = happyShift action_9
action_40 (26) = happyShift action_10
action_40 (28) = happyShift action_11
action_40 (29) = happyShift action_12
action_40 (30) = happyShift action_13
action_40 (31) = happyShift action_14
action_40 (33) = happyShift action_15
action_40 (34) = happyShift action_16
action_40 (35) = happyShift action_17
action_40 (36) = happyShift action_18
action_40 (44) = happyShift action_19
action_40 (46) = happyShift action_20
action_40 (53) = happyShift action_21
action_40 (6) = happyGoto action_43
action_40 (7) = happyGoto action_4
action_40 (8) = happyGoto action_5
action_40 _ = happyFail

action_41 (22) = happyShift action_6
action_41 (23) = happyShift action_7
action_41 (24) = happyShift action_8
action_41 (25) = happyShift action_9
action_41 (26) = happyShift action_10
action_41 (28) = happyShift action_11
action_41 (29) = happyShift action_12
action_41 (30) = happyShift action_13
action_41 (31) = happyShift action_14
action_41 (33) = happyShift action_15
action_41 (34) = happyShift action_16
action_41 (35) = happyShift action_17
action_41 (36) = happyShift action_18
action_41 (44) = happyShift action_19
action_41 (46) = happyShift action_20
action_41 (53) = happyShift action_21
action_41 (6) = happyGoto action_42
action_41 (7) = happyGoto action_4
action_41 (8) = happyGoto action_5
action_41 _ = happyFail

action_42 (42) = happyShift action_39
action_42 (54) = happyShift action_40
action_42 _ = happyReduce_3

action_43 _ = happyReduce_12

action_44 (42) = happyShift action_39
action_44 (54) = happyShift action_40
action_44 _ = happyReduce_14

action_45 (22) = happyShift action_6
action_45 (23) = happyShift action_7
action_45 (24) = happyShift action_8
action_45 (25) = happyShift action_9
action_45 (26) = happyShift action_10
action_45 (28) = happyShift action_11
action_45 (29) = happyShift action_12
action_45 (30) = happyShift action_13
action_45 (31) = happyShift action_14
action_45 (33) = happyShift action_15
action_45 (34) = happyShift action_16
action_45 (35) = happyShift action_17
action_45 (36) = happyShift action_18
action_45 (44) = happyShift action_19
action_45 (46) = happyShift action_20
action_45 (53) = happyShift action_21
action_45 (6) = happyGoto action_79
action_45 (7) = happyGoto action_4
action_45 (8) = happyGoto action_5
action_45 _ = happyFail

action_46 _ = happyReduce_8

action_47 (22) = happyShift action_6
action_47 (23) = happyShift action_7
action_47 (24) = happyShift action_8
action_47 (25) = happyShift action_9
action_47 (26) = happyShift action_10
action_47 (28) = happyShift action_11
action_47 (29) = happyShift action_12
action_47 (30) = happyShift action_13
action_47 (31) = happyShift action_14
action_47 (33) = happyShift action_15
action_47 (34) = happyShift action_16
action_47 (35) = happyShift action_17
action_47 (36) = happyShift action_18
action_47 (44) = happyShift action_19
action_47 (46) = happyShift action_20
action_47 (53) = happyShift action_21
action_47 (6) = happyGoto action_78
action_47 (7) = happyGoto action_4
action_47 (8) = happyGoto action_5
action_47 _ = happyFail

action_48 (22) = happyShift action_6
action_48 (23) = happyShift action_7
action_48 (24) = happyShift action_8
action_48 (25) = happyShift action_9
action_48 (26) = happyShift action_10
action_48 (28) = happyShift action_11
action_48 (29) = happyShift action_12
action_48 (30) = happyShift action_13
action_48 (31) = happyShift action_14
action_48 (33) = happyShift action_15
action_48 (34) = happyShift action_16
action_48 (35) = happyShift action_17
action_48 (36) = happyShift action_18
action_48 (44) = happyShift action_19
action_48 (46) = happyShift action_20
action_48 (53) = happyShift action_21
action_48 (6) = happyGoto action_77
action_48 (7) = happyGoto action_4
action_48 (8) = happyGoto action_5
action_48 _ = happyFail

action_49 (22) = happyShift action_6
action_49 (23) = happyShift action_7
action_49 (24) = happyShift action_8
action_49 (25) = happyShift action_9
action_49 (26) = happyShift action_10
action_49 (28) = happyShift action_11
action_49 (29) = happyShift action_12
action_49 (30) = happyShift action_13
action_49 (31) = happyShift action_14
action_49 (33) = happyShift action_15
action_49 (34) = happyShift action_16
action_49 (35) = happyShift action_17
action_49 (36) = happyShift action_18
action_49 (44) = happyShift action_19
action_49 (46) = happyShift action_20
action_49 (53) = happyShift action_21
action_49 (6) = happyGoto action_76
action_49 (7) = happyGoto action_4
action_49 (8) = happyGoto action_5
action_49 _ = happyFail

action_50 (22) = happyShift action_6
action_50 (23) = happyShift action_7
action_50 (24) = happyShift action_8
action_50 (25) = happyShift action_9
action_50 (26) = happyShift action_10
action_50 (28) = happyShift action_11
action_50 (29) = happyShift action_12
action_50 (30) = happyShift action_13
action_50 (31) = happyShift action_14
action_50 (33) = happyShift action_15
action_50 (34) = happyShift action_16
action_50 (35) = happyShift action_17
action_50 (36) = happyShift action_18
action_50 (44) = happyShift action_19
action_50 (46) = happyShift action_20
action_50 (53) = happyShift action_21
action_50 (6) = happyGoto action_75
action_50 (7) = happyGoto action_4
action_50 (8) = happyGoto action_5
action_50 _ = happyFail

action_51 (38) = happyShift action_74
action_51 _ = happyFail

action_52 _ = happyReduce_32

action_53 (44) = happyShift action_54
action_53 (15) = happyGoto action_73
action_53 (16) = happyGoto action_53
action_53 _ = happyReduce_34

action_54 (35) = happyShift action_72
action_54 _ = happyFail

action_55 (22) = happyShift action_6
action_55 (23) = happyShift action_7
action_55 (24) = happyShift action_8
action_55 (25) = happyShift action_9
action_55 (26) = happyShift action_10
action_55 (28) = happyShift action_11
action_55 (29) = happyShift action_12
action_55 (30) = happyShift action_13
action_55 (31) = happyShift action_14
action_55 (33) = happyShift action_15
action_55 (34) = happyShift action_16
action_55 (35) = happyShift action_17
action_55 (36) = happyShift action_18
action_55 (44) = happyShift action_19
action_55 (46) = happyShift action_20
action_55 (53) = happyShift action_21
action_55 (6) = happyGoto action_71
action_55 (7) = happyGoto action_4
action_55 (8) = happyGoto action_5
action_55 _ = happyFail

action_56 (38) = happyShift action_70
action_56 _ = happyFail

action_57 (22) = happyShift action_6
action_57 (23) = happyShift action_7
action_57 (24) = happyShift action_8
action_57 (25) = happyShift action_9
action_57 (26) = happyShift action_10
action_57 (28) = happyShift action_11
action_57 (29) = happyShift action_12
action_57 (30) = happyShift action_13
action_57 (31) = happyShift action_14
action_57 (33) = happyShift action_15
action_57 (34) = happyShift action_16
action_57 (35) = happyShift action_17
action_57 (36) = happyShift action_18
action_57 (44) = happyShift action_19
action_57 (46) = happyShift action_20
action_57 (53) = happyShift action_21
action_57 (6) = happyGoto action_69
action_57 (7) = happyGoto action_4
action_57 (8) = happyGoto action_5
action_57 _ = happyFail

action_58 (35) = happyShift action_67
action_58 (44) = happyShift action_68
action_58 (19) = happyGoto action_64
action_58 (20) = happyGoto action_65
action_58 (21) = happyGoto action_66
action_58 _ = happyFail

action_59 (22) = happyShift action_6
action_59 (23) = happyShift action_7
action_59 (24) = happyShift action_8
action_59 (25) = happyShift action_9
action_59 (26) = happyShift action_10
action_59 (28) = happyShift action_11
action_59 (29) = happyShift action_12
action_59 (30) = happyShift action_13
action_59 (31) = happyShift action_14
action_59 (33) = happyShift action_15
action_59 (34) = happyShift action_16
action_59 (35) = happyShift action_17
action_59 (36) = happyShift action_18
action_59 (44) = happyShift action_19
action_59 (46) = happyShift action_20
action_59 (53) = happyShift action_21
action_59 (6) = happyGoto action_63
action_59 (7) = happyGoto action_4
action_59 (8) = happyGoto action_5
action_59 _ = happyFail

action_60 _ = happyReduce_25

action_61 (22) = happyShift action_6
action_61 (23) = happyShift action_7
action_61 (24) = happyShift action_8
action_61 (25) = happyShift action_9
action_61 (26) = happyShift action_10
action_61 (28) = happyShift action_11
action_61 (29) = happyShift action_12
action_61 (30) = happyShift action_13
action_61 (31) = happyShift action_14
action_61 (33) = happyShift action_15
action_61 (34) = happyShift action_16
action_61 (35) = happyShift action_17
action_61 (36) = happyShift action_18
action_61 (44) = happyShift action_19
action_61 (46) = happyShift action_20
action_61 (53) = happyShift action_21
action_61 (6) = happyGoto action_62
action_61 (7) = happyGoto action_4
action_61 (8) = happyGoto action_5
action_61 _ = happyFail

action_62 (39) = happyShift action_96
action_62 (42) = happyShift action_39
action_62 (54) = happyShift action_40
action_62 _ = happyFail

action_63 (42) = happyShift action_39
action_63 (45) = happyShift action_95
action_63 (54) = happyShift action_40
action_63 _ = happyFail

action_64 _ = happyReduce_11

action_65 (48) = happyShift action_94
action_65 _ = happyReduce_40

action_66 (43) = happyShift action_93
action_66 _ = happyFail

action_67 (44) = happyShift action_54
action_67 (14) = happyGoto action_92
action_67 (15) = happyGoto action_52
action_67 (16) = happyGoto action_53
action_67 _ = happyReduce_33

action_68 (35) = happyShift action_67
action_68 (44) = happyShift action_68
action_68 (20) = happyGoto action_91
action_68 (21) = happyGoto action_66
action_68 _ = happyFail

action_69 (42) = happyShift action_39
action_69 (54) = happyShift action_40
action_69 _ = happyReduce_10

action_70 (35) = happyShift action_90
action_70 (10) = happyGoto action_89
action_70 _ = happyFail

action_71 (42) = happyShift action_39
action_71 (54) = happyShift action_40
action_71 _ = happyReduce_9

action_72 (37) = happyShift action_88
action_72 _ = happyFail

action_73 _ = happyReduce_35

action_74 (35) = happyShift action_87
action_74 (17) = happyGoto action_85
action_74 (18) = happyGoto action_86
action_74 _ = happyFail

action_75 (39) = happyShift action_84
action_75 (42) = happyShift action_39
action_75 (54) = happyShift action_40
action_75 _ = happyFail

action_76 (38) = happyShift action_83
action_76 (42) = happyShift action_39
action_76 (54) = happyShift action_40
action_76 _ = happyFail

action_77 (38) = happyShift action_82
action_77 (42) = happyShift action_39
action_77 (54) = happyShift action_40
action_77 _ = happyFail

action_78 (39) = happyShift action_81
action_78 (42) = happyShift action_39
action_78 (54) = happyShift action_40
action_78 _ = happyFail

action_79 (41) = happyShift action_80
action_79 (42) = happyShift action_39
action_79 (54) = happyShift action_40
action_79 _ = happyFail

action_80 (22) = happyShift action_6
action_80 (23) = happyShift action_7
action_80 (24) = happyShift action_8
action_80 (25) = happyShift action_9
action_80 (26) = happyShift action_10
action_80 (28) = happyShift action_11
action_80 (29) = happyShift action_12
action_80 (30) = happyShift action_13
action_80 (31) = happyShift action_14
action_80 (33) = happyShift action_15
action_80 (34) = happyShift action_16
action_80 (35) = happyShift action_17
action_80 (36) = happyShift action_18
action_80 (44) = happyShift action_19
action_80 (46) = happyShift action_20
action_80 (53) = happyShift action_21
action_80 (6) = happyGoto action_110
action_80 (7) = happyGoto action_4
action_80 (8) = happyGoto action_5
action_80 _ = happyFail

action_81 (22) = happyShift action_6
action_81 (23) = happyShift action_7
action_81 (24) = happyShift action_8
action_81 (25) = happyShift action_9
action_81 (26) = happyShift action_10
action_81 (28) = happyShift action_11
action_81 (29) = happyShift action_12
action_81 (30) = happyShift action_13
action_81 (31) = happyShift action_14
action_81 (33) = happyShift action_15
action_81 (34) = happyShift action_16
action_81 (35) = happyShift action_17
action_81 (36) = happyShift action_18
action_81 (44) = happyShift action_19
action_81 (46) = happyShift action_20
action_81 (53) = happyShift action_21
action_81 (6) = happyGoto action_109
action_81 (7) = happyGoto action_4
action_81 (8) = happyGoto action_5
action_81 _ = happyFail

action_82 (22) = happyShift action_6
action_82 (23) = happyShift action_7
action_82 (24) = happyShift action_8
action_82 (25) = happyShift action_9
action_82 (26) = happyShift action_10
action_82 (28) = happyShift action_11
action_82 (29) = happyShift action_12
action_82 (30) = happyShift action_13
action_82 (31) = happyShift action_14
action_82 (33) = happyShift action_15
action_82 (34) = happyShift action_16
action_82 (35) = happyShift action_17
action_82 (36) = happyShift action_18
action_82 (44) = happyShift action_19
action_82 (46) = happyShift action_20
action_82 (53) = happyShift action_21
action_82 (6) = happyGoto action_108
action_82 (7) = happyGoto action_4
action_82 (8) = happyGoto action_5
action_82 _ = happyFail

action_83 (22) = happyShift action_6
action_83 (23) = happyShift action_7
action_83 (24) = happyShift action_8
action_83 (25) = happyShift action_9
action_83 (26) = happyShift action_10
action_83 (28) = happyShift action_11
action_83 (29) = happyShift action_12
action_83 (30) = happyShift action_13
action_83 (31) = happyShift action_14
action_83 (33) = happyShift action_15
action_83 (34) = happyShift action_16
action_83 (35) = happyShift action_17
action_83 (36) = happyShift action_18
action_83 (44) = happyShift action_19
action_83 (46) = happyShift action_20
action_83 (53) = happyShift action_21
action_83 (6) = happyGoto action_107
action_83 (7) = happyGoto action_4
action_83 (8) = happyGoto action_5
action_83 _ = happyFail

action_84 (22) = happyShift action_6
action_84 (23) = happyShift action_7
action_84 (24) = happyShift action_8
action_84 (25) = happyShift action_9
action_84 (26) = happyShift action_10
action_84 (28) = happyShift action_11
action_84 (29) = happyShift action_12
action_84 (30) = happyShift action_13
action_84 (31) = happyShift action_14
action_84 (33) = happyShift action_15
action_84 (34) = happyShift action_16
action_84 (35) = happyShift action_17
action_84 (36) = happyShift action_18
action_84 (44) = happyShift action_19
action_84 (46) = happyShift action_20
action_84 (53) = happyShift action_21
action_84 (6) = happyGoto action_106
action_84 (7) = happyGoto action_4
action_84 (8) = happyGoto action_5
action_84 _ = happyFail

action_85 _ = happyReduce_31

action_86 (48) = happyShift action_105
action_86 _ = happyReduce_37

action_87 (44) = happyShift action_54
action_87 (14) = happyGoto action_104
action_87 (15) = happyGoto action_52
action_87 (16) = happyGoto action_53
action_87 _ = happyReduce_33

action_88 (22) = happyShift action_6
action_88 (23) = happyShift action_7
action_88 (24) = happyShift action_8
action_88 (25) = happyShift action_9
action_88 (26) = happyShift action_10
action_88 (28) = happyShift action_11
action_88 (29) = happyShift action_12
action_88 (30) = happyShift action_13
action_88 (31) = happyShift action_14
action_88 (33) = happyShift action_15
action_88 (34) = happyShift action_16
action_88 (35) = happyShift action_17
action_88 (36) = happyShift action_18
action_88 (44) = happyShift action_19
action_88 (46) = happyShift action_20
action_88 (53) = happyShift action_21
action_88 (6) = happyGoto action_103
action_88 (7) = happyGoto action_4
action_88 (8) = happyGoto action_5
action_88 _ = happyFail

action_89 _ = happyReduce_26

action_90 (50) = happyShift action_102
action_90 _ = happyFail

action_91 (45) = happyShift action_101
action_91 _ = happyFail

action_92 _ = happyReduce_44

action_93 (22) = happyShift action_6
action_93 (23) = happyShift action_7
action_93 (24) = happyShift action_8
action_93 (25) = happyShift action_9
action_93 (26) = happyShift action_10
action_93 (28) = happyShift action_11
action_93 (29) = happyShift action_12
action_93 (30) = happyShift action_13
action_93 (31) = happyShift action_14
action_93 (33) = happyShift action_15
action_93 (34) = happyShift action_16
action_93 (35) = happyShift action_17
action_93 (36) = happyShift action_18
action_93 (44) = happyShift action_19
action_93 (46) = happyShift action_20
action_93 (53) = happyShift action_21
action_93 (6) = happyGoto action_100
action_93 (7) = happyGoto action_4
action_93 (8) = happyGoto action_5
action_93 _ = happyFail

action_94 (35) = happyShift action_67
action_94 (44) = happyShift action_68
action_94 (19) = happyGoto action_99
action_94 (20) = happyGoto action_65
action_94 (21) = happyGoto action_66
action_94 _ = happyFail

action_95 (42) = happyShift action_98
action_95 _ = happyFail

action_96 (22) = happyShift action_6
action_96 (23) = happyShift action_7
action_96 (24) = happyShift action_8
action_96 (25) = happyShift action_9
action_96 (26) = happyShift action_10
action_96 (28) = happyShift action_11
action_96 (29) = happyShift action_12
action_96 (30) = happyShift action_13
action_96 (31) = happyShift action_14
action_96 (33) = happyShift action_15
action_96 (34) = happyShift action_16
action_96 (35) = happyShift action_17
action_96 (36) = happyShift action_18
action_96 (44) = happyShift action_19
action_96 (46) = happyShift action_20
action_96 (53) = happyShift action_21
action_96 (6) = happyGoto action_97
action_96 (7) = happyGoto action_4
action_96 (8) = happyGoto action_5
action_96 _ = happyFail

action_97 (42) = happyShift action_39
action_97 (54) = happyShift action_40
action_97 _ = happyReduce_4

action_98 (22) = happyShift action_6
action_98 (23) = happyShift action_7
action_98 (24) = happyShift action_8
action_98 (25) = happyShift action_9
action_98 (26) = happyShift action_10
action_98 (28) = happyShift action_11
action_98 (29) = happyShift action_12
action_98 (30) = happyShift action_13
action_98 (31) = happyShift action_14
action_98 (33) = happyShift action_15
action_98 (34) = happyShift action_16
action_98 (35) = happyShift action_17
action_98 (36) = happyShift action_18
action_98 (44) = happyShift action_19
action_98 (46) = happyShift action_20
action_98 (53) = happyShift action_21
action_98 (6) = happyGoto action_118
action_98 (7) = happyGoto action_4
action_98 (8) = happyGoto action_5
action_98 _ = happyFail

action_99 _ = happyReduce_41

action_100 (42) = happyShift action_39
action_100 (54) = happyShift action_40
action_100 _ = happyReduce_42

action_101 _ = happyReduce_43

action_102 (35) = happyShift action_117
action_102 (11) = happyGoto action_115
action_102 (12) = happyGoto action_116
action_102 _ = happyFail

action_103 (42) = happyShift action_39
action_103 (45) = happyShift action_114
action_103 (54) = happyShift action_40
action_103 _ = happyFail

action_104 _ = happyReduce_39

action_105 (35) = happyShift action_87
action_105 (17) = happyGoto action_113
action_105 (18) = happyGoto action_86
action_105 _ = happyFail

action_106 (42) = happyShift action_39
action_106 (54) = happyShift action_40
action_106 _ = happyReduce_6

action_107 (27) = happyShift action_112
action_107 (42) = happyShift action_39
action_107 (54) = happyShift action_40
action_107 _ = happyFail

action_108 (27) = happyShift action_111
action_108 (42) = happyShift action_39
action_108 (54) = happyShift action_40
action_108 _ = happyFail

action_109 (42) = happyShift action_39
action_109 (54) = happyShift action_40
action_109 _ = happyReduce_5

action_110 (54) = happyShift action_40
action_110 _ = happyReduce_7

action_111 (22) = happyShift action_6
action_111 (23) = happyShift action_7
action_111 (24) = happyShift action_8
action_111 (25) = happyShift action_9
action_111 (26) = happyShift action_10
action_111 (28) = happyShift action_11
action_111 (29) = happyShift action_12
action_111 (30) = happyShift action_13
action_111 (31) = happyShift action_14
action_111 (33) = happyShift action_15
action_111 (34) = happyShift action_16
action_111 (35) = happyShift action_17
action_111 (36) = happyShift action_18
action_111 (44) = happyShift action_19
action_111 (46) = happyShift action_20
action_111 (53) = happyShift action_21
action_111 (6) = happyGoto action_123
action_111 (7) = happyGoto action_4
action_111 (8) = happyGoto action_5
action_111 _ = happyFail

action_112 (22) = happyShift action_6
action_112 (23) = happyShift action_7
action_112 (24) = happyShift action_8
action_112 (25) = happyShift action_9
action_112 (26) = happyShift action_10
action_112 (28) = happyShift action_11
action_112 (29) = happyShift action_12
action_112 (30) = happyShift action_13
action_112 (31) = happyShift action_14
action_112 (33) = happyShift action_15
action_112 (34) = happyShift action_16
action_112 (35) = happyShift action_17
action_112 (36) = happyShift action_18
action_112 (44) = happyShift action_19
action_112 (46) = happyShift action_20
action_112 (53) = happyShift action_21
action_112 (6) = happyGoto action_122
action_112 (7) = happyGoto action_4
action_112 (8) = happyGoto action_5
action_112 _ = happyFail

action_113 _ = happyReduce_38

action_114 _ = happyReduce_36

action_115 (51) = happyShift action_121
action_115 _ = happyFail

action_116 (52) = happyShift action_120
action_116 _ = happyReduce_28

action_117 (37) = happyShift action_119
action_117 _ = happyFail

action_118 (42) = happyShift action_39
action_118 (54) = happyShift action_40
action_118 _ = happyReduce_13

action_119 (22) = happyShift action_6
action_119 (23) = happyShift action_7
action_119 (24) = happyShift action_8
action_119 (25) = happyShift action_9
action_119 (26) = happyShift action_10
action_119 (28) = happyShift action_11
action_119 (29) = happyShift action_12
action_119 (30) = happyShift action_13
action_119 (31) = happyShift action_14
action_119 (33) = happyShift action_15
action_119 (34) = happyShift action_16
action_119 (35) = happyShift action_17
action_119 (36) = happyShift action_18
action_119 (44) = happyShift action_19
action_119 (46) = happyShift action_20
action_119 (53) = happyShift action_21
action_119 (6) = happyGoto action_125
action_119 (7) = happyGoto action_4
action_119 (8) = happyGoto action_5
action_119 _ = happyFail

action_120 (35) = happyShift action_117
action_120 (11) = happyGoto action_124
action_120 (12) = happyGoto action_116
action_120 _ = happyFail

action_121 _ = happyReduce_27

action_122 (42) = happyShift action_39
action_122 (54) = happyShift action_40
action_122 _ = happyReduce_16

action_123 (42) = happyShift action_39
action_123 (54) = happyShift action_40
action_123 _ = happyReduce_15

action_124 _ = happyReduce_29

action_125 (42) = happyShift action_39
action_125 (54) = happyShift action_40
action_125 _ = happyReduce_30

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Progm happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  5 happyReduction_2
happyReduction_2 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happyReduce 6 6 happyReduction_4
happyReduction_4 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 6 6 happyReduction_5
happyReduction_5 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Pi happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 6 6 happyReduction_6
happyReduction_6 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Mu happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 6 6 happyReduction_7
happyReduction_7 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenDigits happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (F happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_3  6 happyReduction_8
happyReduction_8 (HappyAbsSyn6  happy_var_3)
	(HappyTerminal (TokenDigits happy_var_2))
	_
	 =  HappyAbsSyn6
		 (U happy_var_2 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happyReduce 4 6 happyReduction_9
happyReduction_9 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Data happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 4 6 happyReduction_10
happyReduction_10 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Rec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 4 6 happyReduction_11
happyReduction_11 ((HappyAbsSyn19  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Case happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_3  6 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Add happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 7 6 happyReduction_13
happyReduction_13 ((HappyAbsSyn6  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Pi happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Pi "" happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 8 6 happyReduction_15
happyReduction_15 ((HappyAbsSyn6  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Let happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 8 6 happyReduction_16
happyReduction_16 ((HappyAbsSyn6  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Letrec happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_1  6 happyReduction_17
happyReduction_17 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  7 happyReduction_18
happyReduction_18 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (App happy_var_1 happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  7 happyReduction_19
happyReduction_19 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  8 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn8
		 (Nat
	)

happyReduce_21 = happySpecReduce_1  8 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn8
		 (Error
	)

happyReduce_22 = happySpecReduce_1  8 happyReduction_22
happyReduction_22 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn8
		 (Var happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  8 happyReduction_23
happyReduction_23 (HappyTerminal (TokenDigits happy_var_1))
	 =  HappyAbsSyn8
		 (Lit happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  8 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn8
		 (Kind Star
	)

happyReduce_25 = happySpecReduce_3  8 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happyReduce 4 9 happyReduction_26
happyReduction_26 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_2) `HappyStk`
	(HappyTerminal (TokenIdent happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (RB happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 4 10 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (RecField happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_28 = happySpecReduce_1  11 happyReduction_28
happyReduction_28 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  11 happyReduction_29
happyReduction_29 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1:happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  12 happyReduction_30
happyReduction_30 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn12
		 ((happy_var_1,happy_var_3)
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happyReduce 4 13 happyReduction_31
happyReduction_31 ((HappyAbsSyn17  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_2) `HappyStk`
	(HappyTerminal (TokenIdent happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (DB happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_1  14 happyReduction_32
happyReduction_32 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_0  14 happyReduction_33
happyReduction_33  =  HappyAbsSyn14
		 ([]
	)

happyReduce_34 = happySpecReduce_1  15 happyReduction_34
happyReduction_34 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 ([happy_var_1]
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  15 happyReduction_35
happyReduction_35 (HappyAbsSyn15  happy_var_2)
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1:happy_var_2
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happyReduce 5 16 happyReduction_36
happyReduction_36 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 ((happy_var_2, happy_var_4)
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_1  17 happyReduction_37
happyReduction_37 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 ([happy_var_1]
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  17 happyReduction_38
happyReduction_38 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1:happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_2  18 happyReduction_39
happyReduction_39 (HappyAbsSyn14  happy_var_2)
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn18
		 (Constructor happy_var_1 happy_var_2
	)
happyReduction_39 _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  19 happyReduction_40
happyReduction_40 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn19
		 ([happy_var_1]
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  19 happyReduction_41
happyReduction_41 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1:happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  20 happyReduction_42
happyReduction_42 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn20
		 (Alt happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  20 happyReduction_43
happyReduction_43 _
	(HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (happy_var_2
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_2  21 happyReduction_44
happyReduction_44 (HappyAbsSyn14  happy_var_2)
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn21
		 (PConstr (Constructor happy_var_1 []) happy_var_2
	)
happyReduction_44 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 55 55 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenKeyword "fold" -> cont 22;
	TokenKeyword "unfold" -> cont 23;
	TokenKeyword "pi" -> cont 24;
	TokenKeyword "let" -> cont 25;
	TokenKeyword "letrec" -> cont 26;
	TokenKeyword "in" -> cont 27;
	TokenKeyword "mu" -> cont 28;
	TokenKeyword "data" -> cont 29;
	TokenKeyword "rcrd" -> cont 30;
	TokenKeyword "case" -> cont 31;
	TokenKeyword "of" -> cont 32;
	TokenKeyword "int" -> cont 33;
	TokenKeyword "error" -> cont 34;
	TokenIdent happy_dollar_dollar -> cont 35;
	TokenDigits happy_dollar_dollar -> cont 36;
	TokenSymbol ":" -> cont 37;
	TokenSymbol "=" -> cont 38;
	TokenSymbol "." -> cont 39;
	TokenSymbol "[" -> cont 40;
	TokenSymbol "]" -> cont 41;
	TokenSymbol "->" -> cont 42;
	TokenSymbol "=>" -> cont 43;
	TokenSymbol "(" -> cont 44;
	TokenSymbol ")" -> cont 45;
	TokenSymbol "*" -> cont 46;
	TokenSymbol ";" -> cont 47;
	TokenSymbol "|" -> cont 48;
	TokenSymbol "&" -> cont 49;
	TokenSymbol "{" -> cont 50;
	TokenSymbol "}" -> cont 51;
	TokenSymbol "," -> cont 52;
	TokenSymbol "\\" -> cont 53;
	TokenSymbol "+" -> cont 54;
	_ -> happyError' (tk:tks)
	}

happyError_ 55 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => Either String a -> (a -> Either String b) -> Either String b
happyThen = (>>=)
happyReturn :: () => a -> Either String a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Either String a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> Either String a
happyError' = parseError

parser tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError _ = Left "Parse error!"

data Token
      = TokenDigits Int
      | TokenKeyword String
      | TokenSymbol String
      | TokenIdent String

lexer :: [String] -> [String] -> String -> [Token]
lexer symbols keywords = lexer'
  where lexer' [] = []
        lexer' s@(c:cs)
          | isSpace c = lexer' cs
          | isDigit c = lexNum s
          | isAlpha c = lexVar s
          | c == '\'' = lexVar s
          | otherwise = lexSym s symbols

        lexNum cs = TokenDigits (read num) : lexer' rest
          where (num, rest) = span isDigit cs

        lexVar cs = token : lexer' rest
          where (var, rest) = span (\x -> isAlpha x || x == '\'') cs
                token = if var `elem` keywords
                        then TokenKeyword var
                        else TokenIdent var

        lexSym cs (s:ss) = case stripPrefix s cs of
                            Just rest -> TokenSymbol s : lexer' rest
                            Nothing -> lexSym cs ss
        lexSym cs [] = error $ "Cannot tokenize " ++ cs

symbols = [".", "(", ")", ":", "\\", "*", "->", "=>", "[", "]", ";" , "=", "|", "&", "{", "}", ",", "+"]
keywords = ["fold", "unfold", "pi", "mu", "beta", "let", "letrec", "in", "data", "case", "of", "rcrd", "int", "error"]

parseExpr = parser . lexer symbols keywords
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 16 "<built-in>" #-}
{-# LINE 1 "/Users/jeremybi/.stack/programs/x86_64-osx/ghc-7.10.2/lib/ghc-7.10.2/include/ghcversion.h" #-}


















{-# LINE 17 "<built-in>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 


{-# LINE 13 "templates/GenericTemplate.hs" #-}


{-# LINE 46 "templates/GenericTemplate.hs" #-}









{-# LINE 67 "templates/GenericTemplate.hs" #-}


{-# LINE 77 "templates/GenericTemplate.hs" #-}










infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action


{-# LINE 155 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

