SpinningBalls_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SpinningBalls_Voices
	smpsHeaderChan      $07, $00
	smpsHeaderTempo     $02, $00

	smpsHeaderDAC       SpinningBalls_DAC
	smpsHeaderFM        SpinningBalls_FM1,	$00, $08
	smpsHeaderFM        SpinningBalls_FM2,	$00, $08
	smpsHeaderFM        SpinningBalls_FM3,	$00, $08
	smpsHeaderFM        SpinningBalls_FM4,	$00, $08
	smpsHeaderFM        SpinningBalls_FM5,	$00, $00
	smpsHeaderFM        SpinningBalls_FM6,	$00, $08

; FM1 Data
SpinningBalls_FM1:
	smpsSetvoice        $00

SpinningBalls_Loop18:
	dc.b	nC2, $03, nRst, nC2, nRst, nC2, nRst, $02, nC2, $03, nRst, nC2
	dc.b	nRst, nC2, $05, nRst, $07, nEb2, $0A

SpinningBalls_Loop0D:
	dc.b	nRst, $03, nEb2
	smpsLoop            $00, $05, SpinningBalls_Loop0D
	dc.b	nRst, $09, nG2, $08, nRst, $04

SpinningBalls_Loop0E:
	dc.b	nG2, $03, nRst
	smpsLoop            $00, $04, SpinningBalls_Loop0E
	dc.b	nG2, $04, nRst, $07, nC2, $09, nRst, $04, nC2, nRst, $02, nC2
	dc.b	$03, nRst, nC2, nRst, nC2, $02, nRst, $03, nC2, $04, nRst, $09
	dc.b	nC2, nRst, $03, nC2, nRst, nC2, nRst, $02, nC2, $03, nRst, nC2
	dc.b	nRst, nC2, $05, nRst, $07, nEb2, $0A, nRst, $03, nEb2, nRst, nEb2
	dc.b	nRst, $02, nEb2, $04, nRst, $02, nEb2, $03, nRst, $04, nEb2, $03
	dc.b	nRst, $09, nG2, nRst, $04, nG2, $03, nRst, $02, nG2, $04, nRst
	dc.b	$02, nG2, $03, nRst, nG2, $04, nRst, $02, nG2, $05, nRst, $07
	dc.b	nC2, $0A, nRst, $02, nC2, $03, nRst, nC2, nRst, nC2, $02, nRst
	dc.b	$04, nC2, $03, nRst, nC2, nRst, $09

SpinningBalls_Loop0F:
	dc.b	nC2, nRst, $03
	smpsLoop            $00, $05, SpinningBalls_Loop0F
	dc.b	nC2, nRst, $09, nEb2, nRst, $03, nEb2, nRst, nEb2, $04, nRst, $02
	dc.b	nEb2, $03, nRst, nEb2, nRst, nEb2, $04, nRst, $08, nG2, $0A, nRst
	dc.b	$03, nG2, nRst, nG2, nRst, $02, nG2, $03, nRst, nG2, $04, nRst
	dc.b	$02, nG2, $04, nRst, $08, nC2, $09

SpinningBalls_Loop10:
	dc.b	nRst, $03, nC2
	smpsLoop            $00, $04, SpinningBalls_Loop10
	dc.b	nRst, nC2, $05, nRst, $08, nC2, $09, nRst, $02, nC2, $03, nRst
	dc.b	nC2, $02, nRst, $03, nC2, nRst, nC2, nRst, nC2, $04, nRst, $09
	dc.b	nEb2, $0A, nRst, $02, nEb2, $04, nRst, $02, nEb2, $03, nRst, nEb2
	dc.b	nRst, nEb2, nRst, nEb2, nRst, $09, nG2, $0A, nRst, $02, nG2, $04
	dc.b	nRst, $02, nG2, $04, nRst, $02, nG2, $03, nRst, nG2, nRst, nG2
	dc.b	$05, nRst, $07, nC2, $09, nRst, $03, nC2, nRst, nC2, $04, nRst
	dc.b	$02, nC2, $03, nRst, nC2, nRst, nC2, $05, nRst, $07, nF2, $08
	dc.b	nRst, $04, nF2, $02, nRst, $04, nF2, $02, nRst, $03, nF2, $04
	dc.b	nRst, $03, nE2

SpinningBalls_Loop11:
	dc.b	nRst, $02, nE2, $04
	smpsLoop            $00, $03, SpinningBalls_Loop11
	dc.b	nRst, $03, nEb2, $04, nRst, $02, nEb2, $04, nRst, $02, nEb2, $03
	dc.b	nRst, nEb2, nRst, nE2, nRst, nE2, nRst, nE2, nRst, nE2, $04, nRst
	dc.b	$02, nF2, $03, nRst, nF2, $02, nRst, $03, nF2, nRst, nF2, $04
	dc.b	nRst, $02, nE2, $03, nRst, nE2, $04, nRst, $03, nE2, nRst, nE2
	dc.b	nRst, nEb2, nRst, nEb2, nRst, nEb2, $04, nRst, $03, nD2, $0A, nRst
	dc.b	$01, nD2, $04, nRst, $02, nD2, $03, nRst, nF2, $09, nRst, $03
	dc.b	nF2, nRst, nF2, $02, nRst, $03, nF2, $04

SpinningBalls_Loop12:
	dc.b	nRst, $03, nE2
	smpsLoop            $00, $04, SpinningBalls_Loop12
	dc.b	nRst, nEb2, nRst, nEb2, nRst, nEb2, $02, nRst, $04, nEb2, $03, nRst
	dc.b	nE2, nRst, nE2, nRst, nE2, $04, nRst, $03, nF2, $08, nRst, $04
	dc.b	nF2, $02, nRst, $03, nF2, nRst, nF2

SpinningBalls_Loop13:
	dc.b	nRst, nE2
	smpsLoop            $00, $04, SpinningBalls_Loop13
	dc.b	nRst, nF2, nRst, nE2, nRst, nF2, nRst, nFs2, $09, nRst, $03, nFs2
	dc.b	nRst, nFs2, $02, nRst, $03, nFs2, nRst, $04, nG2, $03, nRst, nBb2
	dc.b	$02, nRst, $04, nBb2, $02, nRst, $04, nBb2, $03, nRst, nBb2, nRst
	dc.b	nBb2, $05, nRst, $07, nF2, $04, nRst, $08

SpinningBalls_Loop14:
	dc.b	nF2, $03, nRst
	smpsLoop            $00, $04, SpinningBalls_Loop14
	dc.b	nF2, $04, nRst, $08, nC2, $05, nRst, $07, nC2, $03, nRst, nC2
	dc.b	nRst, nC2, nRst, nC2, $04, nRst, $02, nC2, $04, nRst, $08, nC2
	dc.b	$04, nRst, $08

SpinningBalls_Loop15:
	dc.b	nC2, $03, nRst
	smpsLoop            $00, $04, SpinningBalls_Loop15
	dc.b	nC2, nRst, $09, nBb2, $05, nRst, $07, nBb2, $03, nRst, nBb2, nRst
	dc.b	nBb2, nRst, nBb2, $04, nRst, $02, nBb2, $05, nRst, $07, nF2, $05
	dc.b	nRst, $07

SpinningBalls_Loop16:
	dc.b	nF2, $03, nRst
	smpsLoop            $00, $04, SpinningBalls_Loop16
	dc.b	nF2, $04, nRst, $08, nC2, $05, nRst, $07

SpinningBalls_Loop17:
	dc.b	nC2, $03, nRst
	smpsLoop            $00, $07, SpinningBalls_Loop17
	dc.b	nC2, $09, nRst, $27
	smpsLoop            $01, $02, SpinningBalls_Loop18
	smpsJump            SpinningBalls_FM1

; FM2 Data
SpinningBalls_FM2:
	smpsSetvoice        $01

SpinningBalls_Loop0C:
	dc.b	nC4, $06, $06, nFs4, nRst, nF4, nRst, $0C, nAb4, nAb4, $06, nA4
	dc.b	nRst, nEb4, nRst, $0C, nG4, $06, nRst, nG4, nG4, nRst, nG4, nRst
	dc.b	$0C, nC4, $06, nRst, nC4, nC4, nRst, nC4, nRst, $0C, nC4, $06
	dc.b	nRst, nC4, nC4, nRst, nF4, nRst, $0C, nEb4, nAb4, $06, nA4, nRst
	dc.b	nEb4, nRst, $0C, nG4, nG4, $06, $06, nRst, nG4, nRst, $0C, nF4
	dc.b	$06, nRst, nC4, nC4, nRst, nC4, nRst, $0C, nG4, $06, nRst, nC4
	dc.b	nFs4, nRst, nC4, nRst, $0C, nAb4, $06, nRst, nAb4, nA4, nRst, nEb4
	dc.b	nRst, $0C, nG4, nG4, $06, $06, nRst, nG4, nRst, $0C, nC4, $06
	dc.b	nRst, nC4, nC4, nRst, nG4, nRst, $0C, nC4, nC4, $06, $06, nRst
	dc.b	nC4, nRst, $0C, nAb4, $06, nRst, nAb4, nA4, nRst, nBb4, nRst, $0C
	dc.b	nG4, $06, nRst, nG4, nG4, nRst, nC5, nRst, $0C, nC4, $06, nRst
	dc.b	nF4, nC4, nRst, nC4, nRst, $7F, $7F, $7F, $1B, nBb3, $03, nRst
	dc.b	nEb4, $07, nRst, $05, nF4, $0B, nRst, $07, nF3, $03, nRst, nF3
	dc.b	nRst, nBb3, $08, nRst, $04, nF3, $0F, nRst, $15, nC4, $02, nRst
	dc.b	$04, nC4, $0A, nRst, $02, nG4, $08, nRst, $04, nC4, $03, nRst
	dc.b	nF4, $02, nRst, $04, nF4, $02, nRst, $04, nF4, $09, nRst, $03
	dc.b	nG4, $15, nRst, $0F, nBb3, $03, nRst, nEb4, $08, nRst, $04, nF4
	dc.b	$08

SpinningBalls_Loop0B:
	dc.b	nRst, $04, nBb3, $02
	smpsLoop            $00, $03, SpinningBalls_Loop0B
	dc.b	nRst, $04, nBb3, $08, nRst, $04, nF3, $0E, nRst, $04, nC4, $03
	dc.b	nRst, nC4, $04, nRst, $08, nC4, $03, nRst, nC4, $08, nRst, $04
	dc.b	nG4, $09, nRst, $03, nC4, $02, nRst, $04, nF4, $01, nRst, $05
	dc.b	nC4, $02, nRst, $04, nF4, $09, nRst, $03, nC4, $0D, nRst, $05
	dc.b	nC4, $03, nRst, nC4, $04, nRst, $02
	smpsLoop            $01, $02, SpinningBalls_Loop0C
	smpsJump            SpinningBalls_FM2

; FM3 Data
SpinningBalls_FM3:
	smpsSetvoice        $02

SpinningBalls_Loop0A:
	dc.b	nA5, $06, nRst

SpinningBalls_Loop06:
	dc.b	nAb5, nA5, nA5, nRst

SpinningBalls_Loop08:
	dc.b	nAb5, nA5, nRst, nA5
	smpsLoop            $00, $03, SpinningBalls_Loop06

SpinningBalls_Loop07:
	dc.b	nAb5, nA5, nA5, nRst
	smpsLoop            $00, $03, SpinningBalls_Loop07
	smpsLoop            $01, $07, SpinningBalls_Loop08

SpinningBalls_Loop09:
	dc.b	nAb5, nA5, nRst, nA5, nAb5, nA5, nA5, nRst
	smpsLoop            $00, $02, SpinningBalls_Loop09
	dc.b	nAb5, nA5, nAb5, $0E, nRst, $22
	smpsLoop            $02, $02, SpinningBalls_Loop0A
	smpsJump            SpinningBalls_FM3

; FM4 Data
SpinningBalls_FM4:
	smpsSetvoice        $03

SpinningBalls_Loop05:
	dc.b	nC2, $06, $06, nRst, nC2, nC2

SpinningBalls_Loop03:
	dc.b	$0C, nRst, $06, nEb2, nRst, nEb2, nRst, nEb2, nEb2, $0C, nRst, $06
	dc.b	nG2, nRst, nG2, nRst, nG2, nG2

SpinningBalls_Loop02:
	dc.b	$0C, nRst, $06, nC2, nRst, nC2, nRst, nC2
	smpsLoop            $00, $02, SpinningBalls_Loop02
	smpsLoop            $01, $03, SpinningBalls_Loop03
	dc.b	nC2, $0C, nRst, $06, nEb2, nRst, nEb2, nRst, nEb2, nEb2, $0C, nRst
	dc.b	$06, nG2, nRst, nG2, nRst, nG2, nG2, $0C, nRst, $06, nC2, nRst
	dc.b	nC2, nRst, nC2, nC2, $0C, nRst, $06, nF2, nRst

SpinningBalls_Loop04:
	dc.b	$60
	smpsLoop            $00, $08, SpinningBalls_Loop04
	smpsLoop            $02, $02, SpinningBalls_Loop05
	smpsJump            SpinningBalls_FM4

; FM6 Data
SpinningBalls_FM6:
	dc.b	nRst

SpinningBalls_Loop00:
	dc.b	$60
	smpsLoop            $00, $08, SpinningBalls_Loop00
	smpsSetvoice        $07
	dc.b	nAb4, $15, nRst, $03, nG4, $15, nRst, $03, nFs4, $12, nRst, $02
	dc.b	nE4, $15, nRst, $03, nAb4, $19, nRst, $03, nG4, $14, nRst, $04
	dc.b	nFs4, $11, nRst, $02, nF4, $15, nRst, $02, nAb4, $1C, nRst, $02
	dc.b	nG4, $15, nRst, $03, nFs4, $16, nRst, $02, nG4, $10, nRst, $03
	dc.b	nAb4, $1A, nRst, $03, nG4, $14, nRst, $04, nAb4, $10, nRst, $02
	dc.b	nA4, $1A, nRst

SpinningBalls_Loop01:
	dc.b	$44
	smpsLoop            $00, $11, SpinningBalls_Loop01
	dc.b	nAb4, $15, nRst, $03, nG4, $15, nRst, $03, nFs4, $12, nRst, $02
	dc.b	nE4, $15, nRst, $03, nAb4, $19, nRst, $03, nG4, $14, nRst, $04
	dc.b	nFs4, $11, nRst, $02, nF4, $15, nRst, $02, nAb4, $1C, nRst, $02
	dc.b	nG4, $15, nRst, $03, nFs4, $16, nRst, $02, nG4, $10, nRst, $03
	dc.b	nAb4, $1A, nRst, $03, nG4, $14, nRst, $04, nAb4, $10, nRst, $02
	dc.b	nA4, $1A, nRst, $7F, $7F, $7F, $07
	smpsJump            SpinningBalls_FM6

; DAC Data
SpinningBalls_DAC:
; FM5 Data
SpinningBalls_FM5:
	smpsStop

SpinningBalls_Voices:
;	Voice $04
;	$04
;	$10, $50, $7D, $31, 	$1F, $1F, $1F, $1F, 	$0D, $05, $11, $06
;	$05, $01, $05, $01, 	$FF, $FF, $FF, $FF, 	$00, $82, $0B, $83
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $05, $01
	smpsVcCoarseFreq    $01, $0D, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $11, $05, $0D	
	smpsVcDecayRate2    $01, $05, $01, $05
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $83, $0B, $82, $00

;	Voice $04
;	$04
;	$10, $50, $7D, $31, 	$1F, $1F, $1F, $1F, 	$0D, $05, $11, $06
;	$05, $01, $05, $01, 	$FF, $FF, $FF, $FF, 	$00, $82, $0B, $83
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $05, $01
	smpsVcCoarseFreq    $01, $0D, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $11, $05, $0D	
	smpsVcDecayRate2    $01, $05, $01, $05
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $83, $0B, $82, $00
	
;	Voice $04
;	$04
;	$10, $50, $7D, $31, 	$1F, $1F, $1F, $1F, 	$0D, $05, $11, $06
;	$05, $01, $05, $01, 	$FF, $FF, $FF, $FF, 	$00, $82, $0B, $83
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $05, $01
	smpsVcCoarseFreq    $01, $0D, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $11, $05, $0D	
	smpsVcDecayRate2    $01, $05, $01, $05
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $83, $0B, $82, $00
	
;	Voice $04
;	$04
;	$10, $50, $7D, $31, 	$1F, $1F, $1F, $1F, 	$0D, $05, $11, $06
;	$05, $01, $05, $01, 	$FF, $FF, $FF, $FF, 	$00, $82, $0B, $83
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $05, $01
	smpsVcCoarseFreq    $01, $0D, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $11, $05, $0D	
	smpsVcDecayRate2    $01, $05, $01, $05
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $83, $0B, $82, $00
	
;	Voice $04
;	$04
;	$10, $50, $7D, $31, 	$1F, $1F, $1F, $1F, 	$0D, $05, $11, $06
;	$05, $01, $05, $01, 	$FF, $FF, $FF, $FF, 	$00, $82, $0B, $83
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $05, $01
	smpsVcCoarseFreq    $01, $0D, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $11, $05, $0D	
	smpsVcDecayRate2    $01, $05, $01, $05
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $83, $0B, $82, $00
	
;	Voice $04
;	$04
;	$10, $50, $7D, $31, 	$1F, $1F, $1F, $1F, 	$0D, $05, $11, $06
;	$05, $01, $05, $01, 	$FF, $FF, $FF, $FF, 	$00, $82, $0B, $83
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $05, $01
	smpsVcCoarseFreq    $01, $0D, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $11, $05, $0D	
	smpsVcDecayRate2    $01, $05, $01, $05
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $83, $0B, $82, $00
	
;	Voice $04
;	$04
;	$10, $50, $7D, $31, 	$1F, $1F, $1F, $1F, 	$0D, $05, $11, $06
;	$05, $01, $05, $01, 	$FF, $FF, $FF, $FF, 	$00, $82, $0B, $83
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $05, $01
	smpsVcCoarseFreq    $01, $0D, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $11, $05, $0D	
	smpsVcDecayRate2    $01, $05, $01, $05
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $83, $0B, $82, $00
	
;	Voice $04
;	$04
;	$10, $50, $7D, $31, 	$1F, $1F, $1F, $1F, 	$0D, $05, $11, $06
;	$05, $01, $05, $01, 	$FF, $FF, $FF, $FF, 	$00, $82, $0B, $83
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $05, $01
	smpsVcCoarseFreq    $01, $0D, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $11, $05, $0D	
	smpsVcDecayRate2    $01, $05, $01, $05
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $83, $0B, $82, $00