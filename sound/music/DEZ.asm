DEZ_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     DEZ_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $60

	smpsHeaderDAC       DEZ_DAC
	smpsHeaderFM        DEZ_FM1,	$00, $16
	smpsHeaderFM        DEZ_FM2,	$00, $08
	smpsHeaderFM        DEZ_FM3,	$00, $10
	smpsHeaderFM        DEZ_FM4,	$00, $10
	smpsHeaderFM        DEZ_FM5,	$00, $06
	smpsHeaderPSG       DEZ_PSG1,	$E8, $06, $00, $00
	smpsHeaderPSG       DEZ_PSG2,	$E8, $06, $00, $00
	smpsHeaderPSG       DEZ_PSG3,	$00, $02, $00, fTone_01

; FM1 Data
DEZ_FM1:
	smpsSetvoice        $00

DEZ_Jump01:
	dc.b	nA5, $04, nG5, nBb5, nFs5, nA5, nF5, nAb5, nFs5, nB5, nF5, nA5
	dc.b	nG5, nBb5, nFs5, nAb5, nF5, nA5, nG5, nB5, nF5, nBb5, nFs5, nC6
	dc.b	nF5, nBb5, nG5, nB5, nFs5, nA5, nF5, nAb5, nFs5, nBb5, nE5, nG5
	dc.b	nEb5, nA5, nF5, nBb5, nFs5, nB5, nG5, nA5, nF5, nAb5, nFs5, nBb5
	dc.b	nG5, nB5, nAb5, nC6, nA5, nCs6, nG5, nC6, nF5, nB5, nFs5, nBb5
	dc.b	nG5, nA5, nF5, nAb5, nE5, nG5, nEb5, nA5, nF5, nBb5, nFs5, nB5
	dc.b	nG5, nC6, nAb5, nEb6, nG5, nD6, nF5, nC6, nG5, nB5, nFs5, nBb5
	dc.b	nG5, nA5, nF5, nAb5, nFs5, nB5, nF5, nA5, nG5, nBb5, nFs5, nC6
	dc.b	nF5, nBb5, nFs5, nB5, nF5, nA5, nE5, nAb5, nEb5, nA5, nE5, nBb5
	dc.b	nF5, nB5, nFs5, nC6, nG5, nD6, nF5, nBb5, nFs5, nA5, nG5, nB5
	dc.b	nFs5, nBb5, nF5, nB5, nE5, nA5, nF5, nBb5, nG5, nB5, nFs5, nA5
	dc.b	nF5, nBb5, nFs5, nC6, nE5, nD6, nEb5, nCs6, nF5, nC6, nFs5, nB5
	dc.b	nF5, nBb5, nG5, nA5, nFs5, nAb5, nF5, nA5, nFs5, nBb5, nG5, nB5
	dc.b	nAb5, nC6, nF5, nA5, nFs5, nBb5, nF5, nB5, nE5, nC6, nF5, nB5
	dc.b	nFs5, nA5, nG5, nBb5, nFs5, nAb5, nF5, nA5, nG5, nBb5, nFs5, nB5
	dc.b	nF5, nC6, nE5, nBb5, nF5, nA5, nFs5, nB5, nG5, nAb5, nF5, nA5
	dc.b	nFs5, nBb5, nF5, nB5, nE5, nC6, nEb5, nCs6, nE5, nBb5, nF5, nA5
	dc.b	nFs5, nAb5, nG5, nB5, nF5, nA5, nFs5, nBb5, nG5, nAb5, nF5, nB5
	dc.b	nE5, nC6, nEb5, nBb5, nF5, nA5, nFs5, nB5, nG5, nBb5, nF5, nA5
	dc.b	nFs5, nAb5, nG5, nB5, nF5, nBb5, nFs5, nC6, nD5, nB5, nF5, nA5
	dc.b	nFs5, nBb5, nG5, nAb5, nFs5, nA5, nF5, nBb5, nE5, nB5, nEb5, nC6
	dc.b	nF5, nCs6, nFs5, nB5, nG5, nBb5, nFs5, nA5, nF5, nAb5, nEb5, nG5
	dc.b	nF5, nA5, nFs5, nBb5, nG5, nB5, nAb5, nC6, nG5, nBb5, nFs5, nA5
	dc.b	nG5, nB5, nF5, nBb5, nFs5, nA5, nG5, nB5, nF5, nBb5, nFs5, nA5
	dc.b	nF5
	smpsJump            DEZ_Jump01

; FM3 Data
DEZ_FM3:
	smpsSetvoice        $02
	smpsModSet          $08, $01, $05, $04

DEZ_Loop06:
	dc.b	nRst, $30

DEZ_Loop05:
	dc.b	nRst, $08, nEb6, $02, nCs6, nA5, nRst, nEb6, nCs6, nA5, nRst
	smpsLoop            $01, $02, DEZ_Loop05
	smpsLoop            $00, $02, DEZ_Loop06
	smpsCall            DEZ_Call00
	dc.b	nA4, $10, nB4, $08, nCs5, $10, nA4, $08, nE5, $0C, nFs5, $04
	dc.b	nE5, $08, nCs5, $10, nA4, $08, nA5, $10, nFs5, $04, nA5, nFs5
	dc.b	$10, nE5, $04, nFs5, nE5, $18, nFs5, $10, nCs5, $08, nA4, $10
	dc.b	nB4, $08, nCs5, $10, nA4, $08, nE5, $0C, nFs5, $04, nE5, $08
	dc.b	nCs5, $10, nA4, $08, nA5, $60

DEZ_Loop07:
	dc.b	nE6, $04, nD6, nCs6, $10
	smpsLoop            $00, $03, DEZ_Loop07
	dc.b	nE6, $04, nD6, nCs6, $08, nA5, nCs6, $30, nRst
	smpsJump            DEZ_FM3

DEZ_Call00:
	smpsSetvoice        $03
	dc.b	nA4, $10, nB4, $08, nCs5, $10, nA4, $08, nE5, $0C, nFs5, $04
	dc.b	nE5, $08, nCs5, $10, nA4, $08, nA5, $18, nFs5, nE5, nCs5, nA4
	dc.b	$10, nB4, $08, nCs5, $10, nA4, $08, nE5, $0C, nFs5, $04, nE5
	dc.b	$08, nCs5, $10, nA4, $08, nA5, $20, nFs5, $08, nAb5, nA5, $30
	smpsReturn

; FM4 Data
DEZ_FM4:
	smpsSetvoice        $02
	smpsModSet          $08, $01, $05, $04

DEZ_Loop03:
	smpsAlterNote       $02
	dc.b	nRst, $30

DEZ_Loop02:
	dc.b	nRst, $08, nEb6, $02, nCs6, nA5, nRst, nEb6, nCs6, nA5, nRst
	smpsLoop            $01, $02, DEZ_Loop02
	smpsLoop            $00, $02, DEZ_Loop03
	smpsCall            DEZ_Call00
	dc.b	nCs5, $10, nD5, $08, nE5, $10, nCs5, $08, nAb5, $0C, nA5, $04
	dc.b	nAb5, $08, nE5, $10, nCs5, $08, nCs6, $10, nA5, $04, nCs6, nA5
	dc.b	$10, nAb5, $04, nA5, nAb5, $18, nA5, $10, nE5, $08, nCs5, $10
	dc.b	nD5, $08, nE5, $10, nCs5, $08, nAb5, $0C, nA5, $04, nAb5, $08
	dc.b	nE5, $10, nCs5, $08, nCs6, $60

DEZ_Loop04:
	dc.b	nCs6, $04, nB5, nA5, $10
	smpsLoop            $00, $03, DEZ_Loop04
	dc.b	nCs6, $04, nB5, nA5, $08, nFs5, nA5, $30, nRst
	smpsJump            DEZ_Loop03

; FM5 Data
DEZ_FM5:
	smpsSetvoice        $05
	smpsNoteFill        $00
	smpsAlterVol        $0C
	dc.b	nA2, $30
	smpsModSet          $10, $01, $FF, $FF
	dc.b	smpsNoAttack, $30, smpsNoAttack
	smpsModSet          $00, $01, $10, $FF
	dc.b	nG2, $08
	smpsModOff
	dc.b	nC3, $40
	smpsModSet          $10, $01, $FE, $FF
	dc.b	smpsNoAttack, $18
	smpsAlterVol        $F4
	smpsSetvoice        $04
	smpsNoteFill        $09

DEZ_Loop00:
	dc.b	nA2, $04, nRst, $28, nAb2, $04, nA2, nA2, $02, nRst, $2A, nA2
	dc.b	$04, nRst, $28, nAb2, $04, nA2, nA2, nRst, $18, nA4, $04, nB4
	dc.b	nC5, nCs5
	smpsLoop            $00, $04, DEZ_Loop00

DEZ_Loop01:
	dc.b	nA2, $04, nRst, nA4, nA4, nFs4, nA4
	smpsLoop            $00, $04, DEZ_Loop01
	dc.b	nA2, $04, nRst, $28, nAb2, $04, nA2, nA2, nA4, nB4, nC5, nCs5
	dc.b	nRst, $08, nA4, $04, nB4, nC5, nCs5
	smpsJump            DEZ_FM5

; FM2 Data
DEZ_FM2:
	smpsSetvoice        $01
	smpsNoteFill        $0A

DEZ_Jump00:
	dc.b	nA1, $04, nA2, nA2, nA1, nG2, nA1, nFs2, nA1, nF2, nF2, nA1
	dc.b	nE2, nA1, $02, nRst, $2E, nA1, $04, nA2, nA2, nA1, nG2, nA1
	dc.b	nFs2, nA1, nC3, nC3, nA1, nC3, nA1, $02, nRst, $2E
	smpsJump            DEZ_Jump00

; PSG2 Data
DEZ_PSG2:
	smpsAlterNote       $FE

; PSG1 Data
DEZ_PSG1:
	dc.b	nRst, $18
	smpsLoop            $00, $18, DEZ_PSG1

DEZ_Loop09:
	smpsModSet          $06, $02, $FE, $FF
	dc.b	nG2, $18
	smpsModOff
	dc.b	nA2, $30
	smpsModSet          $06, $01, $01, $FF
	dc.b	smpsNoAttack, $18
	smpsModSet          $00, $01, $FA, $FF
	dc.b	nG2, $08
	smpsModOff
	dc.b	nC3, $40
	smpsModSet          $00, $01, $01, $FF
	dc.b	smpsNoAttack, $18
	smpsLoop            $00, $02, DEZ_Loop09

DEZ_Loop0A:
	smpsModSet          $00, $01, $FD, $FF
	dc.b	nG2, $08
	smpsModOff
	dc.b	nA2, $10
	smpsModSet          $00, $01, $FC, $FF
	dc.b	$08
	smpsModOff
	dc.b	nC3, $10
	smpsLoop            $00, $02, DEZ_Loop0A
	smpsModSet          $00, $01, $FD, $FF
	dc.b	nG2, $08
	smpsModOff
	dc.b	nA2, $40
	smpsModSet          $06, $01, $01, $FF
	dc.b	smpsNoAttack, $18
	smpsJump            DEZ_PSG1

; DAC Data
DEZ_DAC:
	dc.b	nRst, $30, dSnare, $04, dKick, dKick, $10, dSnare, $04, dKick, dKick, $10
	dc.b	nRst, $30, dSnare, $04, dKick, nRst, dKick, nRst, dKick, dKick, dKick, dSnare
	dc.b	$08, dSnare, dKick, $08, dSnare, $04, $04, $08, dKick, dSnare, dSnare, dKick
	dc.b	dSnare, $0C, $04, dKick, $08, dSnare, dSnare, dKick, dSnare, $04, $08, $04
	dc.b	dKick, $08, dSnare, dSnare, dKick, dSnare, $04, $08, $04, dKick, $08, dSnare
	dc.b	$04, $04, $08, dKick, dSnare, dSnare, dKick, dSnare, $04, $08, $04, dKick
	dc.b	$08, dSnare, dSnare, dKick, $08, dSnare, $04, $04, $08, dKick, dSnare, dSnare
	dc.b	dKick, dSnare, $04, $08, $04, dKick, $08, dSnare, dSnare, dKick, dSnare, $04
	dc.b	dSnare, dKick, dSnare, dKick, $08, dSnare, dSnare, dKick, dSnare, $04, $08, $04
	dc.b	dKick, $08, dSnare, dSnare, dKick, $08, dSnare, $04, $04, $08, dKick, dSnare
	dc.b	dSnare, dKick, dSnare, $04, $08, $04, dKick, $08, dSnare, dSnare, dKick, $04
	dc.b	dKick, dSnare, dKick, dSnare, dKick, dKick, $08, dSnare, dSnare, dKick, dSnare, $04
	dc.b	$08, $04, dKick, $08, dSnare, dSnare, dKick, dSnare, $04, $04, $08, dKick
	dc.b	dSnare, dSnare, dKick, dSnare, $04, $08, $04, dKick, $08, dSnare, dSnare, dSnare
	dc.b	$04, dKick, $08, $04, dSnare, dKick, dKick, $08, dSnare, dSnare, dKick, $08
	dc.b	dSnare, $04, dSnare, dSnare, dSnare, dKick, $08, dSnare, dSnare, dKick, $08, dSnare
	dc.b	$04, dSnare, dSnare, dSnare, dKick, $08, dSnare, dSnare, dKick, $08, dSnare, $04
	dc.b	$08, $04, dSnare, $04, dKick, $08, $04, dSnare, dKick, dSnare, $04, dKick
	dc.b	$08, $04, dSnare, dKick
	smpsJump            DEZ_DAC

; PSG3 Data
DEZ_PSG3:
	smpsPSGform         $E7

DEZ_Jump02:
	dc.b	nRst, $08, nMaxPSG, nMaxPSG, nRst, $08, nMaxPSG, nMaxPSG, nRst, $30, nRst, $08
	dc.b	nMaxPSG, nMaxPSG, nRst, $08, nMaxPSG, nMaxPSG, nRst, $30

DEZ_Loop08:
	dc.b	nRst, $18
	smpsLoop            $00, $28, DEZ_Loop08
	smpsJump            DEZ_Jump02

DEZ_Voices:
;	Voice $00
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $2D, $24

;	Voice $01
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

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
