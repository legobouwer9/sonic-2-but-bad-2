OOZ_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     OOZ_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $D0

	smpsHeaderDAC       OOZ_DAC
	smpsHeaderFM        OOZ_FM1,	$F4, $0C
	smpsHeaderFM        OOZ_FM2,	$F4, $09
	smpsHeaderFM        OOZ_FM3,	$C4, $09
	smpsHeaderFM        OOZ_FM4,	$F4, $10
	smpsHeaderFM        OOZ_FM5,	$F4, $10
	smpsHeaderPSG       OOZ_PSG1,	$D0, $04, $04, $00
	smpsHeaderPSG       OOZ_PSG2,	$D0, $05, $04, $00
	smpsHeaderPSG       OOZ_PSG3,	$FE, $07, $00, fTone_01

; FM1 Data
OOZ_FM1:
	smpsSetvoice        $04
	smpsModSet          $02, $03, $01, $03
	smpsCall            OOZ_Call02

OOZ_Jump00:
	smpsSetvoice        $02
	smpsAlterVol        $FB
	smpsAlterPitch      $DC
	smpsCall            OOZ_Call03
	smpsAlterVol        $05
	smpsAlterPitch      $24
	smpsSetvoice        $04
	smpsCall            OOZ_Call04
	smpsSetvoice        $02
	smpsAlterVol        $FC
	smpsAlterPitch      $DC
	smpsCall            OOZ_Call05
	smpsAlterVol        $04
	smpsAlterPitch      $24
	smpsAlterPitch      $E8
	smpsSetvoice        $05
	smpsAlterVol        $07
	smpsCall            OOZ_Call06
	smpsAlterVol        $F9
	smpsAlterPitch      $18
	smpsJump            OOZ_Jump00

OOZ_Call02:
	dc.b	nG5, $03, $03, $06, nAb5, nB5, nC6, nD6, $12, $03, $03, $06
	dc.b	nEb6, nF6, nEb6, nD6, nEb6, nD6, nC6, nB5, $03, nC6, nB5, nAb5
	dc.b	nG5, $24
	smpsReturn

OOZ_Call03:
	dc.b	nRst, $18, nRst, $03, nRst, $01, nC6, $01, nD6, $02, nEb6, $02
	dc.b	nFs6, $25
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F8
	dc.b	nAb6, $01, nG6, $0B, nEb6, $01, nD6, $30, smpsNoAttack, $2D
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F8
	smpsReturn

OOZ_Call04:
	smpsCall            OOZ_Call08
	dc.b	nD6, $1E, nEb6, $06, nD6, nC6, nB5, $12, nC6, $06, nB5, $0C
	dc.b	nAb5
	smpsCall            OOZ_Call08
	dc.b	nF6, $0C, nG6, $06, nF6, nEb6, nD6, nEb6, nD6, nC6, nB5, $0C
	dc.b	nAb5, $06, nG5, $18

OOZ_Loop09:
	dc.b	nG5, $03, nAb5, nB5, $06, nC6, nB5, nAb5, nG5, $0C, $03, nAb5
	dc.b	nB5, $06, nC6, nB5, nAb5, nG5, $18
	smpsLoop            $01, $02, OOZ_Loop09
	smpsReturn

OOZ_Call05:
	smpsCall            OOZ_Call07
	dc.b	nG6, $01, nFs6, $0B, nEb6, $01, nD6, $1D
	smpsCall            OOZ_Call07
	dc.b	nFs6, $01, nF6, $0B, nBb6, $01, nA6, $1D
	smpsReturn

OOZ_Call07:
	dc.b	nRst, $0C, nCs6, $01, nC6, $05, nEb6, $01, nD6, $05, nE6, $01
	dc.b	nEb6, $05, nCs6, $01, nC6, $05, nAb6, $01, nG6, $0B, nAb6, $01
	dc.b	nG6, $05
	smpsReturn

OOZ_Call06:
	dc.b	nA7, $03, nG7, nFs7, nEb7, nFs7, nEb7, nD7, nCs7, nD7, $18
	smpsReturn

OOZ_Call08:
	dc.b	nG5, $1E, nAb5, $06, nB5, nC6, nD6, $1E, nEb6, $06, nF6, nEb6
	smpsReturn

; FM2 Data
OOZ_FM2:
	smpsSetvoice        $00
	dc.b	nRst, $06, nRst, $30, nRst, nRst, $2A, nF4, $03, nG4

OOZ_Loop07:
	smpsCall            OOZ_Call01
	dc.b	nRst, $12
	smpsCall            OOZ_Call01
	dc.b	nRst, $06, nF4, $03, nRst, nF4, nG4
	smpsLoop            $00, $04, OOZ_Loop07
	dc.b	nC4, $02, nRst, $01, nC4, $03, nG3, $06, nBb3, nG3, nC4, $02
	dc.b	nRst, $01, nC4, $03, nG3, $06, nBb3, nC4, nD4, $02, nRst, $01
	dc.b	nD4, $03, nA3, $06, nC4, nA3, nD4, $02, nRst, $01, nD4, $03
	dc.b	nA3, $06, nC4, nD4, nEb4, $02, nRst, $01, nEb4, $03, nBb3, $06
	dc.b	nC4, nBb3, nEb4, $02, nRst, $01, nEb4, $03, nBb3, $06, nC4, nEb4
	dc.b	nF4, $03, nRst, nF4, nRst, nF4, nRst, nF4, nRst, nFs4, nRst, nFs4
	dc.b	nRst, nFs4, nRst, nFs4, nRst, nRst, $0C, nD4, $24
	smpsJump            OOZ_Loop07

OOZ_Call01:
	dc.b	nG3, $03, nG3, nD3, $06, nF3, nFs3, nG3, nRst, $12, nG3, $03
	dc.b	$03, nBb3, $06, nA3, nAb3, nG3
	smpsReturn

; FM4 Data
OOZ_FM4:
	smpsSetvoice        $02
	smpsPan             panRight, $00
	smpsAlterPitch      $DC
	smpsAlterVol        $F9
	smpsCall            OOZ_Call00
	smpsAlterVol        $07
	dc.b	nG4, $30
	smpsAlterPitch      $24
	smpsSetvoice        $01
	smpsPan             panCenter, $00

OOZ_Loop04:
	dc.b	nRst, $06, nD5, $03, nRst, nD5, nRst, nD5, nRst, nCs5, $09, nD5
	dc.b	$03, nRst, $0C, nRst, $30
	smpsLoop            $00, $08, OOZ_Loop04

OOZ_Loop05:
	dc.b	nRst, $06, nBb5, $03, nBb5, nRst, nBb5, nRst, $06, nBb5, $09, nBb5
	dc.b	$03, nRst, $0C
	smpsAlterPitch      $02
	smpsLoop            $00, $03, OOZ_Loop05
	smpsAlterPitch      $FA

OOZ_Loop06:
	dc.b	nA5, $03, nRst
	smpsLoop            $00, $08, OOZ_Loop06
	dc.b	nRst, $30
	smpsJump            OOZ_Loop04

OOZ_Call00:
	dc.b	nRst, $06, nRst, nD5, nC5, nB4, nC5, nB4, nAb4, nG4, $0C, nD5
	dc.b	$06, nC5, nB4, nG4, $12, nF4, $06
	smpsReturn

; FM5 Data
OOZ_FM5:
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	smpsAlterPitch      $E8
	dc.b	nRst, $01
	smpsAlterVol        $F9
	smpsCall            OOZ_Call00
	smpsAlterVol        $07
	dc.b	nG4, $2F
	smpsAlterPitch      $18
	smpsSetvoice        $01
	smpsPan             panCenter, $00

OOZ_Loop02:
	dc.b	nRst, $06, nBb4, $03, nRst, nBb4, nRst, nBb4, nRst, nA4, $09, nBb4
	dc.b	$03, nRst, $0C, nRst, $30
	smpsLoop            $00, $08, OOZ_Loop02

OOZ_Loop03:
	dc.b	nRst, $06, nG5, $03, nG5, nRst, nG5, nRst, $06, nG5, $09, nG5
	dc.b	$03, nRst, $0C
	smpsAlterPitch      $02
	smpsLoop            $00, $02, OOZ_Loop03
	smpsAlterPitch      $FC
	dc.b	nRst, $06, nBb5, $03, nBb5, nRst, nBb5, nRst, $06, nBb5, $09, nBb5
	dc.b	$03, nRst, $0C, nF5, $03, nRst, nF5, nRst, nF5, nRst, nF5, nRst
	dc.b	nFs5, nRst, nFs5, nRst, nFs5, nRst, nFs5, nRst, nRst, $30
	smpsJump            OOZ_Loop02

; FM3 Data
OOZ_FM3:
	smpsSetvoice        $03
	dc.b	nC7, $03, nC7, nC7, $06, nD7, nD7, nC7, nD7, $03, $03, nC7
	dc.b	$06, $06, nD7, $03, $03, nC7, $06, $06, $06, nD7, $03, $03
	dc.b	$03, $03, nC7, $06, $06, nD7, nC7, $03, nD7, nD7, nD7, nD7
	dc.b	$06, nC7, nC7, nD7, $03, $03, nC7, $0C

OOZ_Loop01:
	dc.b	nRst, $1E, nD7, $03, $03, nC7, $06, nD7, nRst, $1E, nC7, $03
	dc.b	$03, nD7, $06, nC7
	smpsLoop            $00, $09, OOZ_Loop01
	dc.b	nRst, $1E, nD7, $03, $03, nC7, $06, nD7, nRst, $30, nC7, $03
	dc.b	nD7, nD7, nC7, nD7, nD7, nC7, nD7, nD7, nC7, nD7, nD7, nC7
	dc.b	$06, nD7
	smpsJump            OOZ_Loop01

; PSG1 Data
OOZ_PSG1:
	smpsAlterNote       $01
	dc.b	nRst, $02, nRst, $01
	smpsCall            OOZ_Call02

OOZ_Jump02:
	smpsPSGAlterVol     $03
	dc.b	nRst, $60, nRst, $60
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FD
	smpsCall            OOZ_Call04
	smpsCall            OOZ_Call05
	smpsAlterPitch      $F4
	smpsCall            OOZ_Call06
	smpsAlterPitch      $0C
	smpsJump            OOZ_Jump02

; PSG2 Data
OOZ_PSG2:
	dc.b	nRst, $01
	smpsCall            OOZ_Call02

OOZ_Jump01:
	smpsPSGAlterVol     $03
	dc.b	nRst, $18, nRst, $03, nRst, $01
	smpsPSGvoice        fTone_0C
	;smpsAlterVol        $FE
	smpsPSGAlterVol     $FE
	dc.b	nC6, $01, nD6, $02, nEb6, $02, nFs6, $2D, nAb6, $01, nG6, $0B
	dc.b	nEb6, $01, nD6, $30, smpsNoAttack, $30, smpsNoAttack, $05
	;smpsAlterVol        $02
	smpsPSGAlterVol     $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FD
	smpsCall            OOZ_Call04
	smpsCall            OOZ_Call05
	smpsAlterPitch      $F4
	smpsCall            OOZ_Call06
	smpsAlterPitch      $0C
	smpsJump            OOZ_Jump01

; PSG3 Data
OOZ_PSG3:
	dc.b	nRst, $06, nRst, $30, nE5, $03, nRst, nE5, $03, nRst, $0F, nE5
	dc.b	$03, nRst, $09, nE5, $03, nRst, nRst, $06, nE5, $03, nRst, nE5
	dc.b	$03, nRst, $0F, nE5, $03, nRst, nE5, $03, nRst, nE5, $03, $03
	dc.b	nRst, $06, nE5, $03, nRst, nE5, $03, nRst, $03, nRst, $18, nRst
	dc.b	$0C

OOZ_Loop08:
	dc.b	nE5, $03, nE5, nE5, nRst, nE5, nRst, nE5, nE5, nE5, nE5, nE5
	dc.b	nRst, nE5, nRst, nE5, nRst, nE5, nE5, nE5, nRst, nE5, nRst, nE5
	dc.b	nE5, nE5, nE5, nE5, nRst, nE5, nRst, nE5, nE5
	smpsLoop            $00, $0A, OOZ_Loop08
	dc.b	nRst, $30
	smpsJump            OOZ_Loop08

; DAC Data
OOZ_DAC:
	dc.b	nRst, $06, nRst, $30, nRst, nRst, $2A, dSnare, $06

OOZ_Loop00:
	dc.b	dKick, $03, dKick, dKick, nRst, dSnare, $09, $06, dKick, $03, dKick, nRst
	dc.b	dSnare, $06, dKick, $03, nRst, dKick, dKick, dKick, nRst, dSnare, $09, $06
	dc.b	dKick, $03, dKick, nRst, dSnare, $06, $03, $03
	smpsLoop            $00, $0A, OOZ_Loop00
	dc.b	nRst, $24, dSnare, $03, $03, dKick, $06
	smpsJump            OOZ_Loop00

OOZ_Voices:
;	Voice $01
;	$04
;	$37, $72, $77, $49, 	$1F, $1F, $1F, $1F, 	$07, $0A, $07, $0D
;	$00, $0B, $00, $0B, 	$1F, $0F, $1F, $0F, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $07, $03
	smpsVcCoarseFreq    $09, $07, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $07, $0A, $07
	smpsVcDecayRate2    $0B, $00, $0B, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $01
;	$04
;	$37, $72, $77, $49, 	$1F, $1F, $1F, $1F, 	$07, $0A, $07, $0D
;	$00, $0B, $00, $0B, 	$1F, $0F, $1F, $0F, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $07, $03
	smpsVcCoarseFreq    $09, $07, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $07, $0A, $07
	smpsVcDecayRate2    $0B, $00, $0B, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $01
;	$04
;	$37, $72, $77, $49, 	$1F, $1F, $1F, $1F, 	$07, $0A, $07, $0D
;	$00, $0B, $00, $0B, 	$1F, $0F, $1F, $0F, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $07, $03
	smpsVcCoarseFreq    $09, $07, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $07, $0A, $07
	smpsVcDecayRate2    $0B, $00, $0B, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $01
;	$04
;	$37, $72, $77, $49, 	$1F, $1F, $1F, $1F, 	$07, $0A, $07, $0D
;	$00, $0B, $00, $0B, 	$1F, $0F, $1F, $0F, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $07, $03
	smpsVcCoarseFreq    $09, $07, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $07, $0A, $07
	smpsVcDecayRate2    $0B, $00, $0B, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $01
;	$04
;	$37, $72, $77, $49, 	$1F, $1F, $1F, $1F, 	$07, $0A, $07, $0D
;	$00, $0B, $00, $0B, 	$1F, $0F, $1F, $0F, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $07, $03
	smpsVcCoarseFreq    $09, $07, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $07, $0A, $07
	smpsVcDecayRate2    $0B, $00, $0B, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $01
;	$04
;	$37, $72, $77, $49, 	$1F, $1F, $1F, $1F, 	$07, $0A, $07, $0D
;	$00, $0B, $00, $0B, 	$1F, $0F, $1F, $0F, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $07, $03
	smpsVcCoarseFreq    $09, $07, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $07, $0A, $07
	smpsVcDecayRate2    $0B, $00, $0B, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23
