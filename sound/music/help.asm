S28Bit_ScrambledEgg_Header:
	smpsHeaderStartSong 1, 1
	smpsHeaderVoice     Snd___Voices
	smpsHeaderChan      $04, $00
	smpsHeaderTempo     $02, $00

	smpsHeaderDAC		S28Bit_ScrambledEgg_PSG4
	smpsHeaderFM		S28Bit_ScrambledEgg_PSG1,	$D3, $04
	smpsHeaderFM		S28Bit_ScrambledEgg_PSG2,	$D3, $07
	smpsHeaderFM		S28Bit_ScrambledEgg_PSG3,	$D3, $03


; PSG1 Data
S28Bit_ScrambledEgg_PSG1:
	smpsSetvoice        sTone_08

S28Bit_ScrambledEgg_Loop09:
	smpsCall            S28Bit_ScrambledEgg_Call05
	smpsLoop            $00, $03, S28Bit_ScrambledEgg_Loop09
	dc.b	nE6, $03, nEb6, nC6, nD6, nA5, nD6, nC6, nG5
	smpsLoop            $01, $04, S28Bit_ScrambledEgg_Loop09

S28Bit_ScrambledEgg_Jump01:
	smpsAlterVol     $05
	smpsSetvoice        sTone_0A

S28Bit_ScrambledEgg_Loop0A:
	dc.b	nC7, $03, nG6, nC7, nB6
	smpsAlterVol     $FF
	dc.b	nC7, nG6, nC7, nB6
	smpsAlterVol     $FF
	dc.b	nC7, nG6, nC7, nB6
	smpsAlterVol     $FF
	dc.b	nC7, nG6, nC7, nB6
	smpsAlterVol     $FF
	dc.b	nC7, nG6, nC7, nB6
	smpsAlterVol     $FF
	dc.b	nC7, nG6, nC7, nB6
	smpsAlterVol     $FF
	dc.b	nC7, nG6, nC7, nB6
	smpsAlterVol     $FF
	dc.b	nC7, nG6, nC7, nB6
	smpsAlterVol     $07
	dc.b	nC7, nG6, nE6, nB6
	smpsAlterVol     $FF
	dc.b	nC7, nFs6, nE6, nB6
	smpsAlterVol     $FF
	dc.b	nC7, nFs6, nE6, nB6
	smpsAlterVol     $FF
	dc.b	nC7, nFs6, nE6, nB6
	smpsAlterVol     $FF
	dc.b	nC7, nFs6, nE6, nB6
	smpsAlterVol     $FF
	dc.b	nC7, nFs6, nE6, nB6
	smpsAlterVol     $FF
	dc.b	nC7, nFs6, nE6, nB6
	smpsAlterVol     $FF
	dc.b	nC7, nFs6, nE6, nB6
	smpsAlterVol     $07
	smpsLoop            $00, $02, S28Bit_ScrambledEgg_Loop0A
	smpsSetvoice        sTone_08
	smpsAlterVol     $FB
	smpsModSet          $06, $01, $01, $04

S28Bit_ScrambledEgg_Loop0B:
	dc.b	nA6, $06, nG6, $02, nA6, nG6, nFs6, $03, nE6, nEb6, nFs6, nE6
	dc.b	nC6, nD6, nB5, nAb5, nB5, nA5, nE5, nA5, nB5, nC6, nD6, smpsNoAttack
	dc.b	$06, nC6, $03, nRst, nD6, nRst, nC6, nB5, nA5, nB5, nC6, nG5
	dc.b	nE5, nF5, nG5, nA5, nB5, nC6, nCs6, nD6, nC6, nD6, nEb6, nE6
	dc.b	nD6, nRst, nC6, nD6, nE6, $06, nF6, $03, nRst, nE6, nEb6, nD6
	dc.b	nC6, nD6, nC6, nB5, nAb5, nA5, nC6, nA5, $06
	smpsLoop            $00, $02, S28Bit_ScrambledEgg_Loop0B
	smpsModSet          $00, $00, $00, $00
	smpsSetvoice        sTone_15
	dc.b	nC5, $03, $03, nB4, nC5, nRst, nC5, nB4, nC5, nRst, nC5, nB4
	dc.b	nC5, nRst, nC5, nB4, nC5, nE5, $09, $03, nRst, $24, nF5, $03
	dc.b	$03, nE5, nF5, nRst, nF5, nE5, nF5, nRst, nF5, nE5, nF5, nRst
	dc.b	nF5, nE5, nF5, nB4, $09, $03, nRst, $0F, nA6, $03, nAb6, nF6
	dc.b	nD7, nB6, nAb6, nE7
	smpsSetvoice        sTone_08
	smpsChangeTransposition $0C
	smpsModSet          $06, $01, $01, $04

S28Bit_ScrambledEgg_Loop0C:
	smpsCall            S28Bit_ScrambledEgg_Call06
	smpsLoop            $00, $04, S28Bit_ScrambledEgg_Loop0C
	dc.b	nG5, $03, nE5, smpsNoAttack, $06, smpsNoAttack, $24
	smpsChangeTransposition $F4
	smpsModSet          $00, $00, $00, $00
	smpsAlterVol     $02
	smpsSetvoice        sTone_15
	dc.b	nRst, $03
	smpsCall            S28Bit_ScrambledEgg_Call02
	smpsCall            S28Bit_ScrambledEgg_Call02
	dc.b	nA3, $03, $03, $03, $03, nC4, nA3, nA3, nD4, nA3, nA3, nEb4
	dc.b	nA3, nA3, nA3, nE4
	smpsAlterVol     $FE
	smpsSetvoice        sTone_08

S28Bit_ScrambledEgg_Loop0D:
	smpsCall            S28Bit_ScrambledEgg_Call05
	smpsLoop            $00, $03, S28Bit_ScrambledEgg_Loop0D
	dc.b	nE6, $03, nEb6, nC6, nD6, nA5, nD6, nC6, nG5
	smpsLoop            $01, $02, S28Bit_ScrambledEgg_Loop0D
	smpsJump            S28Bit_ScrambledEgg_Jump01

S28Bit_ScrambledEgg_Call05:
	smpsAlterVol     $03
	dc.b	nA5, $03
	smpsAlterVol     $FD
	dc.b	nC6
	smpsAlterVol     $03
	dc.b	nA5
	smpsAlterVol     $FD
	dc.b	nD6
	smpsAlterVol     $03
	dc.b	nA5
	smpsAlterVol     $FD
	dc.b	nEb6
	smpsAlterVol     $03
	dc.b	nA5
	smpsAlterVol     $FD
	dc.b	nE6
	smpsReturn

S28Bit_ScrambledEgg_Call06:
	dc.b	nD6, $09, nC6, $03, nRst, $06, nD6, $09, nC6, $03, nRst, $06
	dc.b	nD6, $03, $03, nC6, nRst, nD6, $09, nC6, $03, nRst, $06, nD6
	dc.b	smpsNoAttack, $06, nE6, $03, $03, nD6, nD6, nC6, $06
	smpsReturn

; PSG3 Data
S28Bit_ScrambledEgg_PSG3:
	smpsSetvoice        sTone_15
	dc.b	nRst, $30, nRst, nRst, nA3, $03, nE4, nG4, nA4, nRst, nE4, nRst
	dc.b	nA4, nRst, nE4, nRst, nA4, nE4, nEb4, nD4, nC4

S28Bit_ScrambledEgg_Loop06:
	smpsCall            S28Bit_ScrambledEgg_Call02
	smpsLoop            $00, $14, S28Bit_ScrambledEgg_Loop06
	smpsCall            S28Bit_ScrambledEgg_Call03

S28Bit_ScrambledEgg_Loop07:
	smpsCall            S28Bit_ScrambledEgg_Call02
	smpsCall            S28Bit_ScrambledEgg_Call04
	smpsLoop            $00, $04, S28Bit_ScrambledEgg_Loop07

S28Bit_ScrambledEgg_Loop08:
	smpsCall            S28Bit_ScrambledEgg_Call02
	smpsLoop            $00, $04, S28Bit_ScrambledEgg_Loop08
	smpsJump            S28Bit_ScrambledEgg_Loop06

S28Bit_ScrambledEgg_Call02:
	dc.b	nA3, $03, $03, $03, $03, nC4, nA3, nA3, nD4, nA3, nA3, nEb4
	dc.b	nA3, nA3, nA3, nE4, nA3
	smpsReturn

S28Bit_ScrambledEgg_Call03:
	dc.b	nA3, $03, $03, nA3, nA3, nRst, nA3, nA3, nA3, nRst, nA3, nA3
	dc.b	nA3, nRst, nA3, nA3, nA3, nC4, $09, $03, nRst, $24, nD4, $03
	dc.b	$03, nC4, nD4, nRst, nD4, nC4, nD4, nRst, nD4, nC4, nD4, nRst
	dc.b	nD4, nC4, nD4, nE4, $09, $03, nRst, $0F, nA4, $03, nAb4, nD4
	dc.b	nE4, nAb4, nB3, nD4
	smpsReturn

S28Bit_ScrambledEgg_Call04:
	dc.b	nC4, $03, $03, $03, $03, nG4, nC4, nC4, nC4, nC4, nF4, nC4
	dc.b	nC4, nC4, nE4, nC4, nC4
	smpsReturn

; PSG2 Data
S28Bit_ScrambledEgg_PSG2:
	smpsSetvoice        sTone_08
	dc.b	nRst, $09

S28Bit_ScrambledEgg_Loop00:
	smpsCall            S28Bit_ScrambledEgg_Call00
	smpsLoop            $00, $03, S28Bit_ScrambledEgg_Loop00
	dc.b	nE6, $03, nEb6, nC6, nD6, nA5, nD6, nC6, nG5
	smpsLoop            $01, $03, S28Bit_ScrambledEgg_Loop00

S28Bit_ScrambledEgg_Loop01:
	smpsCall            S28Bit_ScrambledEgg_Call00
	smpsLoop            $00, $03, S28Bit_ScrambledEgg_Loop01
	dc.b	nE6, $03, nEb6, nC6, nD6, nA5

S28Bit_ScrambledEgg_Jump00:
	smpsSetvoice        sTone_0A
	smpsAlterVol     $02

S28Bit_ScrambledEgg_Loop02:
	dc.b	nA5, $03, nB5, nC6, nE6
	smpsAlterVol     $FF
	dc.b	nG6, nB5, nC6, nE6
	smpsAlterVol     $FF
	dc.b	nG6, nB5, nC6, nE6
	smpsAlterVol     $FF
	dc.b	nG6, nB5, nC6, nE6
	smpsAlterVol     $FF
	dc.b	nG6, nB5, nC6, nE6
	smpsAlterVol     $FF
	dc.b	nG6, nB5, nC6, nE6
	smpsAlterVol     $FF
	dc.b	nG6, nB5, nC6, nE6
	smpsAlterVol     $FF
	dc.b	nG6, nB5, nC6, nE6
	smpsAlterVol     $07
	dc.b	nFs5, nA5, nC6, nE6
	smpsAlterVol     $FF
	dc.b	nFs6, nA5, nC6, nE6
	smpsAlterVol     $FF
	dc.b	nFs6, nA5, nC6, nE6
	smpsAlterVol     $FF
	dc.b	nFs6, nA5, nC6, nE6
	smpsAlterVol     $FF
	dc.b	nFs6, nA5, nC6, nE6
	smpsAlterVol     $FF
	dc.b	nFs6, nA5, nC6, nE6
	smpsAlterVol     $FF
	dc.b	nFs6, nA5, nC6, nE6
	smpsAlterVol     $FF
	dc.b	nFs6, nA5, nC6, nE6, $03
	smpsAlterVol     $07
	smpsLoop            $00, $02, S28Bit_ScrambledEgg_Loop02
	smpsAlterVol     $FD
	smpsSetvoice        sTone_08
	dc.b	nRst, $03, nA6, $06, nG6, $02, nA6, nG6, nFs6, $03, nE6, nEb6
	dc.b	nFs6, nE6, nC6, nD6, nB5, nAb5, nB5, nA5, nE5, nA5, nB5, nC6
	dc.b	nD6, smpsNoAttack, $06, nC6, $03, nRst, nD6, nRst, nC6, nB5, nA5, nB5
	dc.b	nC6, nG5, nE5, nF5, nG5, nA5, nB5, nC6, nCs6, nD6, nC6, nD6
	dc.b	nEb6, nE6, nD6, nRst, nC6, nD6, nE6, $06, nF6, $03, nRst, nE6
	dc.b	nEb6, nD6, nC6, nD6, nC6, nB5, nAb5, nA5, nC6, nA5, $03
	smpsChangeTransposition $F4
	dc.b	nC7, $06, nB6, $02, nC7, nB6, nA6, $03, nG6, nFs6, nA6, nG6
	dc.b	nE6, nFs6, nD6, nB5, nD6, nC6, nAb5, nC6, nD6, nE6, nF6, smpsNoAttack
	dc.b	$06, nE6, $03, nRst, nF6, nRst, nE6, nD6, nC6, nD6, nE6, nB5
	dc.b	nAb5, nA5, nB5, nC6, nD6, nEb6, nE6, nF6, nE6, nF6, nFs6, nG6
	dc.b	nF6, nRst, nE6, nF6, nG6, $06, nA6, $03, nRst, nG6, nFs6, nF6
	dc.b	nEb6, nF6, nEb6, nD6, nB5, nC6, nEb6, nC6, $06
	smpsChangeTransposition $0C
	smpsSetvoice        sTone_15
	smpsAlterVol     $FE
	dc.b	nE5, $03, $03, nD5, nE5, nRst, nE5, nD5, nE5, nRst, nE5, nD5
	dc.b	nE5, nRst, nE5, nD5, nE5, nG5, $09, $03, nRst, $24, nA5, $03
	dc.b	$03, nAb5, nA5, nRst, nA5, nAb5, nA5, nRst, nA5, nAb5, nA5, nRst
	dc.b	nA5, nAb5, nA5, nD5, $09, $03, nRst, $0F, nF6, $03, nE6, nD6
	dc.b	nB6, nAb6, nF6, nB6
	smpsSetvoice        sTone_08
	smpsChangeTransposition $0C
	smpsAlterVol     $02
	smpsModSet          $06, $01, $01, $04

S28Bit_ScrambledEgg_Loop03:
	smpsCall            S28Bit_ScrambledEgg_Call01
	smpsLoop            $00, $04, S28Bit_ScrambledEgg_Loop03
	dc.b	nC6, $03, nA5, smpsNoAttack, $06, smpsNoAttack, $24
	smpsChangeTransposition $F4
	smpsAlterVol     $FE
	smpsAlterVol     $04
	smpsSetvoice        sTone_15
	dc.b	nRst, $06, nRst, $30
	smpsCall            S28Bit_ScrambledEgg_Call02
	dc.b	nA3, $03, $03, $03, $03, nC4, nA3, nA3, nD4, nA3, nA3, nEb4
	dc.b	nA3, nA3, nA3
	smpsAlterVol     $FF
	smpsSetvoice        sTone_08
	dc.b	nRst, $09

S28Bit_ScrambledEgg_Loop04:
	smpsCall            S28Bit_ScrambledEgg_Call00
	smpsLoop            $00, $03, S28Bit_ScrambledEgg_Loop04
	dc.b	nE6, $03, nEb6, nC6, nD6, nA5, nD6, nC6, nG5

S28Bit_ScrambledEgg_Loop05:
	smpsCall            S28Bit_ScrambledEgg_Call00
	smpsLoop            $00, $03, S28Bit_ScrambledEgg_Loop05
	dc.b	nE6, $03, nEb6, nC6, nD6, nA5
	smpsJump            S28Bit_ScrambledEgg_Jump00

S28Bit_ScrambledEgg_Call00:
	smpsAlterVol     $03
	dc.b	nA5, $03
	smpsAlterVol     $FD
	dc.b	nC6
	smpsAlterVol     $03
	dc.b	nA5
	smpsAlterVol     $FD
	dc.b	nD6
	smpsAlterVol     $03
	dc.b	nA5
	smpsAlterVol     $FD
	dc.b	nEb6
	smpsAlterVol     $03
	dc.b	nA5
	smpsAlterVol     $FD
	dc.b	nE6
	smpsReturn

S28Bit_ScrambledEgg_Call01:
	dc.b	nA5, $03, nA4, nC5, nG5, nA4, nC5, nA5, nA4, nC5, nG5, nA4
	dc.b	nC5, nA5, nA4, nG5, nA4, nA5, nC5, nE5, nG5, nC5, nE5, nA5
	dc.b	nC5, nA5, nC5, nC6, nC5, nA5, nC5, nG5, nC5
	smpsReturn

; PSG4 Data
S28Bit_ScrambledEgg_PSG4:
	dc.b	nRst, $30, nRst, nRst, dSnareS3, $03, dSnareS3, dSnareS3, dSnareS3, nRst, dSnareS3, nRst
	dc.b	dSnareS3, nRst, dSnareS3, nRst, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3

S28Bit_ScrambledEgg_Loop0E:
	smpsCall            S28Bit_ScrambledEgg_Call07
	smpsLoop            $00, $05, S28Bit_ScrambledEgg_Loop0E
	dc.b	dSnareS3, $03, dSnareS3, dSnareS3, dSnareS3, nRst, dSnareS3, dSnareS3, dSnareS3, nRst, dSnareS3, dSnareS3
	dc.b	dSnareS3, nRst, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dKickS3, dKickS3, dSnareS3, nRst, $06, dKickS3
	dc.b	$03, $03, dSnareS3, $03, $03, $03, $03, $03, dKickS3, $06, nRst, $03
	dc.b	dSnareS3, $03, dSnareS3, dSnareS3, dSnareS3, nRst, dSnareS3, dSnareS3, dSnareS3, nRst, dSnareS3, dSnareS3
	dc.b	dSnareS3, nRst, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dKickS3, dKickS3, dSnareS3, nRst, $06, nRst
	dc.b	$09, dSnareS3, $03, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3

S28Bit_ScrambledEgg_Loop0F:
	smpsCall            S28Bit_ScrambledEgg_Call07
	smpsLoop            $00, $02, S28Bit_ScrambledEgg_Loop0F
	smpsJump            S28Bit_ScrambledEgg_PSG4

S28Bit_ScrambledEgg_Call07:
	dc.b	dSnareS3, $03, dKickS3, dSnareS3, dKickS3, dSnareS3, dSnareS3, dSnareS3, dKickS3, dSnareS3, dSnareS3, dSnareS3
	dc.b	dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, $03, dKickS3, dSnareS3, dKickS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, dKickS3, dSnareS3, dSnareS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dSnareS3, dSnareS3, $03
	dc.b	dKickS3, dSnareS3, dKickS3, dSnareS3, dSnareS3, dSnareS3, dKickS3, dSnareS3, dSnareS3, dSnareS3, dKickS3, dSnareS3
	dc.b	dKickS3, dSnareS3, dKickS3, dSnareS3, $03, dKickS3, dSnareS3, dKickS3, dSnareS3, dSnareS3, dSnareS3, dKickS3
	dc.b	dSnareS3, dSnareS3, dSnareS3, dKickS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	smpsReturn


Snd___Voices:
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
	
