MCZ_2p_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     MCZ_2p_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $EC

	smpsHeaderDAC       MCZ_2p_DAC
	smpsHeaderFM        MCZ_2p_FM1,	$00, $10
	smpsHeaderFM        MCZ_2p_FM2,	$18, $0D
	smpsHeaderFM        MCZ_2p_FM3,	$00, $12
	smpsHeaderFM        MCZ_2p_FM4,	$00, $18
	smpsHeaderFM        MCZ_2p_FM5,	$00, $18
	smpsHeaderPSG       MCZ_2p_PSG1,	$DC, $05, $00, fTone_0C
	smpsHeaderPSG       MCZ_2p_PSG2,	$E8, $04, $00, fTone_04
	smpsHeaderPSG       MCZ_2p_PSG3,	$DC, $04, $00, fTone_0C

MCZ_2p_Call01:
	dc.b	nG4, $08, nA4, nB4
	smpsReturn

MCZ_2p_Call02:
	dc.b	nF4, $30, smpsNoAttack, $30, smpsNoAttack, nF4, nRst, $18, nG4, $08, nA4, nB4
	dc.b	nF4, $30, smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $24
	smpsReturn

MCZ_2p_Call00:
	dc.b	nRst, $30, nRst, nB4, $06, nC5, nB4, nG4, nA4, nF4, $0C, nG4
	dc.b	nD4, nD4, $06, nF4, $0C, nG4
	smpsReturn

MCZ_2p_Call03:
	dc.b	nB4, $30, smpsNoAttack, $30, nC5, $30, smpsNoAttack, $24, nB4, $06, nC5, nD5
	dc.b	$30, smpsNoAttack, $30, nB4, $30, smpsNoAttack, $30, nB4, $30, smpsNoAttack, $30, nC5
	dc.b	$30, smpsNoAttack, $24, nB4, $06, nC5, nD5, $30, smpsNoAttack, $30, nF5, $30
	dc.b	smpsNoAttack, $30, nG5, $24, nF5, nE5, $18, nF5, $24, nE5, nC5, $18
	smpsReturn

; FM2 Data
MCZ_2p_FM2:
	dc.b	nRst, $18
	smpsSetvoice        $00

MCZ_2p_Jump05:
	dc.b	nG1, $0C, nD1, nF1, nD1, $06, nG1, $05, nG1, $07, $06, nD1
	dc.b	$0C, nF1, nD1
	smpsJump            MCZ_2p_Jump05

; FM1 Data
MCZ_2p_FM1:
	smpsSetvoice        $02
	smpsAlterVol        $12
	smpsCall            MCZ_2p_Call01

MCZ_2p_Jump04:
	smpsCall            MCZ_2p_Call02
	smpsModSet          $24, $01, $03, $04
	dc.b	nRst, $0C
	smpsAlterVol        $E6
	smpsSetvoice        $03
	smpsCall            MCZ_2p_Call03
	dc.b	$24, nB4, nD5, $18, smpsNoAttack, $30, smpsNoAttack, $30, nB5, $24, nA5, nG5
	dc.b	$18, nA5, $24, nG5, nE5, $18, nE5, nF5, $0C, nD5, $30, smpsNoAttack
	dc.b	$0C, smpsNoAttack, $30, smpsNoAttack, $24, nRst, $0C, nRst, $30, nRst, nRst, nRst
	dc.b	nC5, $24, nE5, nG5, $18, nF5, $24, nD5, nB4, $18, nB4, nC5
	dc.b	$0C, nB4, $30, smpsNoAttack, $0C, smpsNoAttack, $30, smpsNoAttack, $18, nRst, $18, nC5
	dc.b	$24, nE5, nG5, $18, nF5, $24, nD5, nB4, $18, nB5, $30, smpsNoAttack
	dc.b	$30, smpsNoAttack, $30, smpsNoAttack, $0C, nRst, $0C
	smpsModOff
	smpsAlterVol        $1A
	smpsSetvoice        $02
	dc.b	nE4, $08, nF4, nG4
	smpsJump            MCZ_2p_Jump04

; PSG1 Data
MCZ_2p_PSG1:
	smpsAlterNote       $02
	dc.b	nRst, $1B

MCZ_2p_Jump08:
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsCall            MCZ_2p_Call03
	dc.b	$24, nB4, nD5, $18, smpsNoAttack, $30, smpsNoAttack, $30, nB5, $24, nA5, nG5
	dc.b	$18, nA5, $24, nG5, nE5, $18, nE5, nF5, $0C, nD5, $30, smpsNoAttack
	dc.b	$0C, smpsNoAttack, $30, smpsNoAttack, $24, nRst, $0C, nRst, $30, nRst, nRst, nRst
	dc.b	nC5, $24, nE5, nG5, $18, nF5, $24, nD5, nB4, $18, nB4, nC5
	dc.b	$0C, nB4, $30, smpsNoAttack, $0C, smpsNoAttack, $30, smpsNoAttack, $18, nRst, $18, nC5
	dc.b	$24, nE5, nG5, $18, nF5, $24, nD5, nB4, $18, nB5, $30, smpsNoAttack
	dc.b	$30, smpsNoAttack, $30, smpsNoAttack, $0C, nRst, $24
	smpsJump            MCZ_2p_Jump08

; PSG3 Data
MCZ_2p_PSG3:
	dc.b	nRst, $18

MCZ_2p_Jump07:
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsCall            MCZ_2p_Call03
	dc.b	$24, nB4, nD5, $18, smpsNoAttack, $30, smpsNoAttack, $30
	;smpsAlterVol        $FE
	smpsPSGAlterVol     $FE
	dc.b	nG5, $24, nF5, nE5, $18, nF5, $24, nE5, nC5, $18, nC5, nD5
	dc.b	$0C, nB4, $30, smpsNoAttack, $0C, smpsNoAttack, $30, smpsNoAttack, $24, nRst, $0C, nRst
	dc.b	$30, nRst, nRst, nRst, nA4, $24, nC5, nE5, $18, nD5, $24, nB4
	dc.b	nG4, $18, nF4, nD4, $0C, nG4, $30, smpsNoAttack, $0C, smpsNoAttack, $30, smpsNoAttack
	dc.b	$18, nRst, $18, nA4, $24, nC5, nE5, $18, nD5, $24, nB4, nG4
	dc.b	$18, nG5, $30, smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $0C, nRst, $24
	;smpsAlterVol        $02
	smpsPSGAlterVol     $02
	smpsJump            MCZ_2p_Jump07

; FM4 Data
MCZ_2p_FM4:
	smpsSetvoice        $02
	smpsAlterNote       $02
	smpsPan             panLeft, $00
	smpsCall            MCZ_2p_Call01

MCZ_2p_Jump03:
	smpsCall            MCZ_2p_Call02
	smpsAlterNote       $00
	smpsSetvoice        $01
	smpsAlterVol        $F2
	smpsAlterPitch      $F4
	dc.b	nA3, $0C, nB3, $06, nRst, $30, nRst, $2A, nRst, $30, nRst, $24
	dc.b	nC4, $0C, nB3, $06, nRst, $30, nRst, $2A, nRst, $30, nRst, $24
	dc.b	nA3, $0C, nB3, $06, nRst, $30, nRst, $2A, nRst, $30, nRst, $24
	dc.b	nC4, $0C, nB3, $06, nRst, $30, nRst, $2A, nRst, $30, nRst, nRst
	dc.b	nRst, nG4, $24, nF4, nE4, $18, nF4, $24, nE4, nC4, $18, $24
	dc.b	nB3, nD4, $18, smpsNoAttack, $30, smpsNoAttack, $30, nB4, $24, nA4, nG4, $18
	dc.b	nA4, $24, nG4, nE4, $18, nE4, nF4, $0C, nD4, $24
	smpsAlterVol        $0E
	smpsAlterPitch      $0C
	smpsSetvoice        $02
	smpsCall            MCZ_2p_Call01
	dc.b	nF4, $30, smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $18, nRst, $18
	smpsAlterVol        $F2
	smpsAlterPitch      $F4
	smpsSetvoice        $01
	dc.b	nRst, $30, nRst, nRst, nRst, $24, nG4, $06, nF4, nG4, $0C, nG4
	dc.b	nF4, $06, nG4, $0C, $06, nRst, $24, nRst, $06, nF4, nG4, $0C
	dc.b	nG4, nF4, $06, nG4, $0C, $06, nRst, $30, nRst, $30, nRst, nRst
	dc.b	nRst, $24, nRst, $06, nF4, nG4, $0C, nG4, nF4, $06, nG4, $0C
	dc.b	$06, nRst, $24, nRst, $06, nF4, nG4, $0C, nG4, nF4, $06, nG4
	dc.b	$0C, $06, nRst, $18
	smpsAlterVol        $0E
	smpsAlterPitch      $0C
	smpsSetvoice        $02
	smpsCall            MCZ_2p_Call01
	smpsJump            MCZ_2p_Jump03

; FM5 Data
MCZ_2p_FM5:
	dc.b	nRst, $01
	smpsSetvoice        $02
	smpsAlterNote       $FE
	smpsPan             panRight, $00
	smpsCall            MCZ_2p_Call01

MCZ_2p_Jump02:
	smpsCall            MCZ_2p_Call02
	smpsAlterNote       $FA
	smpsAlterVol        $F2
	smpsAlterPitch      $F4
	smpsSetvoice        $01
	dc.b	nF3, $0B, nG3, $06, nRst, $30, nRst, $2A, nRst, $30, nRst, $24
	dc.b	nA3, $0C, nG3, $06, nRst, $30, nRst, $2A, nRst, $30, nRst, $24
	dc.b	nF3, $0C, nG3, $06, nRst, $30, nRst, $2A, nRst, $30, nRst, $24
	dc.b	nA3, $0C, nG3, $06, nRst, $30, nRst, $2A, nRst, $30, nRst, nRst
	dc.b	nRst, nG4, $24, nF4, nE4, $18, nF4, $24, nE4, nC4, $18, $24
	dc.b	nB3, nD4, $18, smpsNoAttack, $30, smpsNoAttack, $30, nG4, $24, nF4, nE4, $18
	dc.b	nF4, $24, nE4, nC4, $18, nC4, nD4, $0C, nB3, $24
	smpsAlterVol        $0E
	smpsAlterPitch      $0C
	smpsSetvoice        $02
	smpsCall            MCZ_2p_Call01
	dc.b	nF4, $30, smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $18, nRst, $18
	smpsAlterVol        $F2
	smpsAlterPitch      $F4
	smpsSetvoice        $01
	dc.b	nRst, $30, nRst, $30, nRst, $30, nRst, $24, nD4, $06, nC4, nD4
	dc.b	$0C, nD4, nC4, $06, nD4, $0C, $06, nRst, $24, nRst, $06, nC4
	dc.b	nD4, $0C, nD4, nC4, $06, nD4, $0C, $06, nRst, $30, nRst, $30
	dc.b	nRst, nRst, nRst, $24, nRst, $06, nC4, nD4, $0C, nD4, nC4, $06
	dc.b	nD4, $0C, $06, nRst, $24, nRst, $06, nC4, nD4, $0C, nD4, nD4
	dc.b	$06, nC4, $0C, $06, nRst, $19
	smpsAlterVol        $0E
	smpsAlterPitch      $0C
	smpsSetvoice        $02
	smpsCall            MCZ_2p_Call01
	smpsJump            MCZ_2p_Jump02

; FM3 Data
MCZ_2p_FM3:
	smpsSetvoice        $04
	dc.b	nRst, $18

MCZ_2p_Jump01:
	smpsAlterVol        $FC
	smpsCall            MCZ_2p_Call00
	smpsCall            MCZ_2p_Call00
	smpsAlterVol        $04

MCZ_2p_Loop00:
	dc.b	nB4, $0C, nB4, nB4, $06, nRst, $12, nA4, $0C, nA4, nB4, $06
	dc.b	nRst, $12, nRst, $0C, nRst, $06, nB4, $0C, nB4, nB4, $06, nA4
	dc.b	$0C, nC5, nB4, $06, nRst, $12
	smpsLoop            $00, $09, MCZ_2p_Loop00

MCZ_2p_Loop01:
	dc.b	nA4, $0C, nA4, nA4, $06, nRst, $12, nG4, $0C, nG4, nA4, $06
	dc.b	nRst, $12, nG4, $0C, $06, nG4, $0C, nG4, nG4, $06, nG4, $0C
	dc.b	nE4, nG4, $06, nRst, $12, nB4, $0C, nB4, nB4, $06, nRst, $12
	dc.b	nA4, $0C, nA4, nB4, $06, nRst, $12, nRst, $0C, nRst, $06, nB4
	dc.b	$0C, nB4, nB4, $06, nA4, $0C, nC5, nB4, $06, nRst, $12
	smpsLoop            $00, $02, MCZ_2p_Loop01
	smpsJump            MCZ_2p_Jump01

; PSG2 Data
MCZ_2p_PSG2:
	smpsNoteFill        $08
	dc.b	nRst, $18

MCZ_2p_Jump06:
	smpsCall            MCZ_2p_Call00
	smpsCall            MCZ_2p_Call00

MCZ_2p_Loop02:
	dc.b	nG4, $0C, nG4, nG4, $06, nRst, $12, nF4, $0C, nF4, nG4, $06
	dc.b	nRst, $12, nRst, $0C, nRst, $06, nG4, $0C, nG4, nG4, $06, nF4
	dc.b	$0C, nA4, nG4, $06, nRst, $12
	smpsLoop            $00, $09, MCZ_2p_Loop02

MCZ_2p_Loop03:
	dc.b	nF4, $0C, nF4, nF4, $06, nRst, $12, nE4, $0C, nE4, nF4, $06
	dc.b	nRst, $12, nE4, $0C, $06, nE4, $0C, nE4, nE4, $06, nE4, $0C
	dc.b	nC4, nE4, $06, nRst, $12, nG4, $0C, nG4, nG4, $06, nRst, $12
	dc.b	nF4, $0C, nF4, nG4, $06, nRst, $12, nRst, $0C, nRst, $06, nG4
	dc.b	$0C, nG4, nG4, $06, nF4, $0C, nA4, nG4, $06, nRst, $12
	smpsLoop            $00, $02, MCZ_2p_Loop03
	smpsJump            MCZ_2p_Jump06

; DAC Data
MCZ_2p_DAC:
	dc.b	nRst, $18

MCZ_2p_Jump00:
	dc.b	dKick, $0C, dHiClap, $06, dMidClap, dSnare, $0C, dMidClap, $06, dLowClap, dKick, $0C
	dc.b	dHiClap, $06, dLowClap, dSnare, $0C, dHiClap, $06, dLowClap
	smpsJump            MCZ_2p_Jump00

MCZ_2p_Voices:
;	Voice $00
;	$3B
;	$01, $02, $13, $02, 	$5D, $5D, $5D, $4A, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$05, $05, $04, $0A, 	$1E, $1E, $28, $09
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $00
	smpsVcCoarseFreq    $02, $03, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $0A, $1D, $1D, $1D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0A, $04, $05, $05
	smpsVcTotalLevel    $09, $28, $1E, $1E

;	Voice $01
;	$3A
;	$22, $68, $71, $32, 	$12, $16, $14, $0C, 	$0A, $06, $0A, $04
;	$00, $00, $00, $00, 	$16, $26, $56, $06, 	$1F, $22, $1C, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $06, $02
	smpsVcCoarseFreq    $02, $01, $08, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0C, $14, $16, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $0A, $06, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $05, $02, $01
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $00, $1C, $22, $1F

;	Voice $02
;	$3B
;	$32, $32, $32, $72, 	$4F, $18, $1A, $11, 	$0E, $16, $0B, $00
;	$04, $00, $00, $00, 	$50, $10, $00, $0A, 	$1B, $1F, $1E, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $03, $03
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $11, $1A, $18, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0B, $16, $0E
	smpsVcDecayRate2    $00, $00, $00, $04
	smpsVcDecayLevel    $00, $00, $01, $05
	smpsVcReleaseRate   $0A, $00, $00, $00
	smpsVcTotalLevel    $00, $1E, $1F, $1B

;	Voice $03
;	$38
;	$32, $52, $32, $72, 	$17, $18, $1A, $11, 	$17, $16, $0B, $00
;	$00, $00, $00, $00, 	$10, $10, $00, $0A, 	$20, $11, $21, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $05, $03
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $11, $1A, $18, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0B, $16, $17
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $01, $01
	smpsVcReleaseRate   $0A, $00, $00, $00
	smpsVcTotalLevel    $00, $21, $11, $20

;	Voice $04
;	$2C
;	$71, $71, $31, $31, 	$1F, $16, $1F, $16, 	$00, $0F, $00, $0F
;	$00, $0F, $00, $0F, 	$00, $FA, $00, $FA, 	$15, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $16, $1F, $16, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $00, $0F, $00
	smpsVcDecayRate2    $0F, $00, $0F, $00
	smpsVcDecayLevel    $0F, $00, $0F, $00
	smpsVcReleaseRate   $0A, $00, $0A, $00
	smpsVcTotalLevel    $00, $14, $00, $15

