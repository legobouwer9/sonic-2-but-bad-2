EHZ_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     EHZ_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $FF

	smpsHeaderDAC       EHZ_DAC
	smpsHeaderFM        EHZ_FM1,	$00, $0E
	smpsHeaderFM        EHZ_FM2,	$00, $16
	smpsHeaderFM        EHZ_FM3,	$00, $16
	smpsHeaderFM        EHZ_FM4,	$00, $20
	smpsHeaderFM        EHZ_FM5,	$00, $25
	smpsHeaderPSG       EHZ_PSG1,	$DC, $04, $00, fTone_03
	smpsHeaderPSG       EHZ_PSG2,	$DC, $04, $00, fTone_01
	smpsHeaderPSG       EHZ_PSG3,	$00, $02, $00, fTone_02

; FM5 Data
EHZ_FM5:
	dc.b	nRst, $20
	smpsSetvoice        $00
	smpsAlterVol        $F8
	dc.b	nB6, $04, nG6, nE6, nC6, nG6, nE6, nC6, nA5, nG6, nE6, nC6
	dc.b	nA5, nG6, nE6, nC6, nA5, nA6, nF6, nD6, nBb5, nA6, nF6, nD6
	dc.b	nBb5
	smpsAlterVol        $08

EHZ_Jump03:
	smpsAlterVol        $F8
	smpsPan             panCenter, $00
	smpsModSet          $30, $01, $04, $04
	smpsSetvoice        $01

EHZ_Loop06:
	dc.b	nG5, $20, smpsNoAttack, $20, nA5, smpsNoAttack, $20, nF5, smpsNoAttack, $20, nE5, smpsNoAttack
	dc.b	$20
	smpsLoop            $00, $04, EHZ_Loop06
	smpsSetvoice        $02
	smpsAlterVol        $FC
	smpsPan             panLeft, $00
	dc.b	nE5, $10, nE5, nE5, nE5, nD5, nD5, nD5, nD5, nD5, nD5, nD5
	dc.b	nD5, nE5, nE5, nE5, nE5, nE5, nE5, nE5, nE5, nD5, nD5, nD5
	dc.b	nD5
	smpsAlterVol        $06
	smpsSetvoice        $03
	dc.b	nG4, $04, nRst, $08, nA4, $20, smpsNoAttack, $14, smpsNoAttack, $20, smpsNoAttack, $0C
	dc.b	nRst, $14
	smpsAlterVol        $06
	smpsJump            EHZ_Jump03

; FM2 Data
EHZ_FM2:
	smpsSetvoice        $03
	dc.b	nD5, $08, nRst, $04, nE5, $20, smpsNoAttack, $14, nC5, $20, nD5

EHZ_Jump02:
	smpsSetvoice        $03
	dc.b	nRst, $08, nG5, $04, nRst, nA5, nRst, nG5, nRst, nC6, nRst, nC6
	dc.b	nRst, nD6, nE6, nRst, $08, nRst, nD6, $10, nA5, $04, nRst, nC6
	dc.b	nC6, nRst, nD6, $08, nRst, $0C, nRst, $14, nBb5, $04, nC6, nBb5
	dc.b	nD6, nRst, nC6, nRst, nBb5, nC6, nRst, nA5, smpsNoAttack, nA5, $20, smpsNoAttack
	dc.b	$10, nRst, $10, nRst, $08, nG5, $04, nRst, nA5, nRst, nG5, nRst
	dc.b	nC6, nRst, nC6, nRst, nD6, nE6, nRst, $08, nRst, nD6, $10, nA5
	dc.b	$08, nC6, nRst, $04, nD6, $08, nRst, $0C, nRst, $14, nBb5, $04
	dc.b	nC6, nBb5, nD6, nRst, nC6, nRst, nBb5, nC6, nRst, nA5, smpsNoAttack, nA5
	dc.b	$20, smpsNoAttack, $10, nRst, $10
	smpsSetvoice        $04
	smpsAlterVol        $FD
	smpsModSet          $12, $01, $0C, $04
	dc.b	nRst, $08, nG4, $04, nRst, nG4, $08, nA4, $04, nRst, nC5, nRst
	dc.b	nC5, $08, nD5, nC5, nE5, nD5, $10, nA4, $20, smpsNoAttack, $08, nRst
	dc.b	$08, nBb4, $04, nRst, nBb4, $08, nC5, nD5, nC5, nBb4, $04, nC5
	dc.b	$0C, nA4, $20, smpsNoAttack, $20, nRst, $08, nG4, $10, nA4, $08, nC5
	dc.b	$04, nRst, nC5, $08, nD5, nC5, nE5, nD5, $10, nA4, $20, smpsNoAttack
	dc.b	$08, nRst, $08, nBb4, $04, nRst, nBb4, $08, nC5, nD5, nC5, nBb4
	dc.b	$04, nC5, $08, nA4, $04, smpsNoAttack, $20, smpsNoAttack, $20
	smpsAlterVol        $03
	smpsModOff
	smpsSetvoice        $05
	smpsAlterPitch      $F4
	dc.b	nRst, $10, nF5, nG5, nA5, nB5, nC6, nD6, nB5, nRst, nB5, nC6
	dc.b	nD6, nC6, nD6, nE6, nC6, nRst, nF5, nG5, nA5, nB5, nC6, nD6
	dc.b	nB5
	smpsAlterPitch      $0C
	smpsAlterVol        $FD
	smpsSetvoice        $06
	dc.b	nD6, $04, nD6, nRst, nE6, $20, smpsNoAttack, $14
	smpsSetvoice        $00
	smpsAlterPitch      $0C
	smpsAlterVol        $09
	dc.b	nA6, $04, nE6, nC6, nA5, nE6, nC6, nA5, nE5, nC6, nA5, nE5
	dc.b	nC5, nA5, nE5, nC5, nA4
	smpsAlterPitch      $F4
	smpsAlterVol        $FA
	smpsJump            EHZ_Jump02

; FM3 Data
EHZ_FM3:
	smpsSetvoice        $03
	smpsAlterNote       $01
	dc.b	nF5, $08, nRst, $04, nG5, $20, smpsNoAttack, $14, nE5, $20, nF5

EHZ_Jump01:
	smpsAlterNote       $03
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	dc.b	nRst, $08, nG4, $04, nRst, nA4, nRst, nG4, nRst, nC5, nRst, nC5
	dc.b	nRst, nD5, nE5, nRst, $08, nRst, nD5, $10, nA4, $04, nRst, nC5
	dc.b	nC5, nRst, nD5, $08, nRst, $0C, nRst, $14, nBb4, $04, nC5, nBb4
	dc.b	nD5, nRst, nC5, nRst, nBb4, nC5, nRst, nA4, smpsNoAttack, nA4, $20, smpsNoAttack
	dc.b	$10, nRst, $10, nRst, $08, nG4, $04, nRst, nA4, nRst, nG4, nRst
	dc.b	nC5, nRst, nC5, nRst, nD5, nE5, nRst, $08, nRst, nD5, $10, nA4
	dc.b	$08, nC5, nRst, $04, nD5, $08, nRst, $0C, nRst, $14, nBb4, $04
	dc.b	nC5, nBb4, nD5, nRst, nC5, nRst, nBb4, nC5, nRst, nA4, smpsNoAttack, nA4
	dc.b	$20, smpsNoAttack, $10, nRst, $10
	smpsSetvoice        $04
	smpsAlterVol        $07
	smpsPan             panLeft, $00
	dc.b	nRst, $14, nG4, $04, nRst, nG4, $08, nA4, $04, nRst, nC5, nRst
	dc.b	nC5, $08, nD5, nC5, nE5, nD5, $10, nA4, $20, smpsNoAttack, $08, nRst
	dc.b	$08, nBb4, $04, nRst, nBb4, $08, nC5, nD5, nC5, nBb4, $04, nC5
	dc.b	$0C, nA4, $14
	smpsSetvoice        $06
	smpsAlterNote       $00
	smpsAlterVol        $F9
	dc.b	nA5, $04, nE6, $02, nRst, $02, nRst, $04, nE6, $02, nRst, $02
	dc.b	nD6, $08, nC6
	smpsSetvoice        $04
	smpsAlterNote       $01
	smpsAlterVol        $07
	dc.b	nRst, $10, nG4, nA4, $08, nC5, $04, nRst, nC5, $08, nD5, nC5
	dc.b	nE5, nD5, $10, nA4, $20, smpsNoAttack, $08, nRst, $08, nBb4, $04, nRst
	dc.b	nBb4, $08, nC5, nD5, nC5, nBb4, $04, nC5, $08, nA4, $04
	smpsSetvoice        $06
	smpsAlterVol        $F9
	smpsAlterNote       $00
	dc.b	nA5, $08, nC6, $04, nRst, nA5, nRst, nD6, $0C, nC6, $04, nRst
	dc.b	$10
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	smpsAlterNote       $01
	dc.b	nC6, $18, nA5, $08, nRst, $14, nA5, $04, nC6, $08, nB5, $04
	dc.b	nRst, nC6, nB5, $04, nRst, $10
	smpsSetvoice        $00
	smpsAlterNote       $00
	smpsAlterVol        $FE
	smpsAlterPitch      $0C
	smpsPan             panRight, $00
	dc.b	nB5, $02, nRst, $06, nC6, $04, nB5, $14
	smpsAlterPitch      $F4
	smpsAlterVol        $02
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	smpsAlterNote       $01
	dc.b	nRst, $10, nB5, $08, nC6, nD6, nC6, nB5, nD6, nC6, $04, nRst
	dc.b	nC6, $10, nA5, $08, nRst, $20, nC6, $18, nA5, $08, nRst, $14
	dc.b	nA5, $04, nC6, $08, nB5, $04, nRst, nC6, nB5, $04, nRst, $10
	smpsSetvoice        $00
	smpsAlterNote       $00
	smpsAlterVol        $FE
	smpsAlterPitch      $0C
	smpsPan             panRight, $00
	dc.b	nB5, $02, nRst, $06, nC6, $04, nB5, $14
	smpsAlterVol        $02
	smpsAlterPitch      $F4
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	smpsAlterNote       $01
	dc.b	nD6, $04, nC6, nRst, nA5, $20, smpsNoAttack, $14, smpsNoAttack, $20, smpsNoAttack, $0C
	dc.b	nRst, $14
	smpsJump            EHZ_Jump01

; FM4 Data
EHZ_FM4:
	smpsSetvoice        $03
	smpsAlterVol        $F8
	dc.b	nF4, $08, nRst, $04, nG4, $20, smpsNoAttack, $14, nE4, $20, nF4
	smpsAlterVol        $04

EHZ_Jump00:
	smpsPan             panCenter, $00
	smpsSetvoice        $08
	smpsModSet          $02, $01, $FE, $04
	smpsAlterPitch      $0C

EHZ_Loop05:
	dc.b	nE5, $20, smpsNoAttack, $20, nFs5, smpsNoAttack, $20, nD5, smpsNoAttack, $20, nC5, smpsNoAttack
	dc.b	$20
	smpsLoop            $00, $04, EHZ_Loop05
	smpsAlterPitch      $F4
	smpsModOff
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nC5, $10, nC5, nC5, nC5, nB4, nB4, nB4, nB4, nB4, nB4, nB4
	dc.b	nB4, nC5, nC5, nC5, nC5, nC5, nC5, nC5, nC5, nB4, nB4, nB4
	dc.b	nB4
	smpsSetvoice        $03
	smpsAlterVol        $04
	dc.b	nD4, $04, nRst, $08, nE4, $20, smpsNoAttack, $14, smpsNoAttack, $20, smpsNoAttack, $0C
	dc.b	nRst, $14
	smpsAlterVol        $FC
	smpsJump            EHZ_Jump00

; FM1 Data
EHZ_FM1:
	smpsSetvoice        $07
	dc.b	nBb2, $0C, nC3, $20, smpsNoAttack, $08, nG3, $04, nE3, nC3, nA2, $08
	dc.b	nA3, $04, nA3, nA2, $08, nA3, $04, nA3, nBb2, $08, nBb3, $04
	dc.b	nBb3, nBb2, $08, nBb3, $04, nBb3

EHZ_Loop04:
	dc.b	nC3, $08, nC4, $04, nRst, nC4, $08, nG3, nD4, $0C, nC4, $08
	dc.b	nG3, $04, nA3, nC4, nD3, $08, nD4, $04, nRst, nD4, $08, nA3
	dc.b	nE4, $0C, nD4, $04, nRst, nA3, nB3, nD4, nBb2, $08, nBb3, $04
	dc.b	nRst, nBb3, $08, nF3, nC4, $0C, nBb3, $08, nF3, $04, nG3, nBb3
	dc.b	nA2, $08, nA3, $04, nA2, nB2, $08, nB3, $04, nB2, nC3, $08
	dc.b	nC4, $04, nC3, nA2, $08, nA3, $04, nA2
	smpsLoop            $00, $04, EHZ_Loop04
	dc.b	nF3, $08, nF4, nC3, nC4, nF3, nF4, nC3, nC4, nE3, nE4, nB2
	dc.b	nB3, nE3, nE4, nB2, nB3, nE3, nE4, nB2, nB3, nAb2, nAb3, nE2
	dc.b	nE3, nA2, nA3, nB2, nB3, nC3, nC4, nA2, nA3, nF3, nF4, nC3
	dc.b	nC4, nF3, nF4, nC3, nC4, nE3, nE4, nB2, nB3, nE3, nE4, nB2
	dc.b	nB3, nG2, $04, nG2, nRst, nA2, $20, smpsNoAttack, $14, $04, $08, $04
	dc.b	nB2, $08, nC3, nD3, nC3, nB2, $04, nA2, $0C
	smpsJump            EHZ_Loop04

; PSG1 Data
EHZ_PSG1:
	dc.b	nRst, $20, nRst, nRst, nRst

EHZ_Jump05:
	smpsAlterPitch      $0C
	smpsPSGvoice        fTone_0B
	smpsPSGAlterVol     $02

EHZ_Loop0B:
	dc.b	nG5, $20, smpsNoAttack, $20, nA5, smpsNoAttack, $20, nF5, smpsNoAttack, $20, nE5, smpsNoAttack
	dc.b	$20
	smpsLoop            $00, $04, EHZ_Loop0B
	dc.b	nRst, $20, nRst
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FF
	dc.b	nRst, nB5, $02, nRst, $06, nC6, $04, nB5, $08
	smpsPSGAlterVol     $FF
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $03
	dc.b	nB5, $04, nRst, $04
	smpsPSGAlterVol     $03
	dc.b	nB5, $02, nRst, $02
	smpsPSGAlterVol     $FA
	smpsPSGvoice        fTone_08
	smpsAlterPitch      $F4
	dc.b	nRst, $20, nRst, nC6, $04, nRst, nC6, $10, nA5, $08, nRst, $20
	dc.b	nRst, nRst
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $01
	dc.b	nRst, nB5, $02, nRst, $06, nC6, $04, nB5, $08
	smpsPSGAlterVol     $FF
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $03
	dc.b	nB5, $04, nRst, $04
	smpsPSGAlterVol     $03
	dc.b	nB5, $02, nRst, $02
	smpsPSGAlterVol     $FA
	smpsAlterPitch      $F4
	dc.b	nRst, $20, nRst, nRst, nRst
	smpsJump            EHZ_Jump05

; PSG2 Data
EHZ_PSG2:
	dc.b	nRst, $20, nRst, nRst, nRst

EHZ_Jump04:
	smpsPSGAlterVol     $03
	smpsPSGvoice        fTone_0B
	smpsAlterNote       $00

EHZ_Loop0A:
	dc.b	nE5, $20, smpsNoAttack, $20, nFs5, smpsNoAttack, $20, nD5, smpsNoAttack, $20, nC5, smpsNoAttack
	dc.b	$20
	smpsLoop            $00, $04, EHZ_Loop0A
	smpsModOff
	smpsPSGAlterVol     $FD
	dc.b	nRst, $20, nRst
	smpsPSGvoice        $00
	smpsAlterNote       $01
	smpsPSGAlterVol     $01
	dc.b	nRst, nB5, $02, nRst, $06, nC6, $04, nB5, $08
	smpsPSGAlterVol     $FF
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $03
	dc.b	nB5, $04, nRst, $04
	smpsPSGAlterVol     $03
	dc.b	nB5, $02, nRst, $02
	smpsPSGAlterVol     $FA
	smpsPSGvoice        $00
	dc.b	nRst, $20, nRst, nRst, nRst, nRst, nRst
	smpsPSGAlterVol     $01
	dc.b	nRst, nB5, $02, nRst, $06, nC6, $04, nB5, $08
	smpsPSGAlterVol     $FF
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $03
	dc.b	nB5, $04, nRst, $04
	smpsPSGAlterVol     $03
	dc.b	nB5, $02, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nRst, $20, nRst, nRst, nRst
	smpsJump            EHZ_Jump04

; PSG3 Data
EHZ_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        fTone_02
	dc.b	nRst, $08, nMaxPSG, $10, nMaxPSG, nMaxPSG, nMaxPSG, $08, nRst, $20, nRst

EHZ_Loop07:
	dc.b	nMaxPSG, $08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG
	dc.b	nMaxPSG, $08, $04, nMaxPSG
	smpsLoop            $00, $07, EHZ_Loop07
	dc.b	nMaxPSG, $08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG
	dc.b	nMaxPSG, $08
	smpsPSGvoice        fTone_03
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02

EHZ_Loop08:
	dc.b	nMaxPSG, $08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG
	dc.b	nMaxPSG, $08, $04, nMaxPSG
	smpsLoop            $00, $07, EHZ_Loop08
	dc.b	nMaxPSG, $08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG
	smpsPSGvoice        fTone_03
	dc.b	nMaxPSG, $08
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG

EHZ_Loop09:
	dc.b	nMaxPSG, $08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG
	dc.b	nMaxPSG, $08, nMaxPSG, $04, nMaxPSG
	smpsLoop            $00, $03, EHZ_Loop09
	dc.b	nMaxPSG, $08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG
	smpsPSGvoice        fTone_03
	dc.b	nMaxPSG, $08
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG, nMaxPSG
	dc.b	$08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG, nMaxPSG
	dc.b	$08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG
	smpsPSGvoice        fTone_03
	dc.b	nMaxPSG, $08
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG, nMaxPSG, $08, $04, nMaxPSG, nMaxPSG
	dc.b	$08, $04, nMaxPSG
	smpsPSGvoice        fTone_03
	dc.b	nMaxPSG, $08
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $04, nMaxPSG
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $10, nMaxPSG, nMaxPSG, nMaxPSG
	smpsPSGvoice        fTone_02
	smpsJump            EHZ_Loop07

; DAC Data
EHZ_DAC:
	dc.b	dKick, $0C, $20, smpsNoAttack, $14, $04, dMidTom, $08, dFloorTom, $04, dMidTom, $08
	dc.b	dMidTom, dMidTom, dKick, dFloorTom, $04, dMidTom, dFloorTom, $08

EHZ_Loop00:
	dc.b	dKick, $10, dSnare, dKick, dSnare
	smpsLoop            $00, $07, EHZ_Loop00
	dc.b	dKick, $10, dSnare, dKick, $08, dSnare, $10, $04, dSnare

EHZ_Loop01:
	dc.b	dKick, $10, dSnare, dKick, dSnare
	smpsLoop            $00, $03, EHZ_Loop01
	dc.b	dKick, $10, dSnare, dKick, $08, dSnare, $10, $08

EHZ_Loop02:
	dc.b	dKick, $10, dSnare, dKick, dSnare
	smpsLoop            $00, $03, EHZ_Loop02
	dc.b	dKick, $10, dSnare, dKick, dSnare, $08, $04, dSnare, dKick, $10, dSnare, dKick
	dc.b	dSnare, dKick, dSnare, dKick, $08, dSnare, dSnare, $10

EHZ_Loop03:
	dc.b	dKick, $10, dSnare, dKick, dSnare
	smpsLoop            $00, $03, EHZ_Loop03
	dc.b	dKick, $10, dSnare, dKick, $08, dSnare, dSnare, $10, dKick, $0C, dSnare, $20
	dc.b	nRst, $04, dSnare, $10, dKick, $04, dMidTom, $08, $04, dSnare, $08, dMidTom
	dc.b	dKick, dFloorTom, dFloorTom, dFloorTom, $04, dFloorTom
	smpsJump            EHZ_Loop00

EHZ_Voices:
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
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $02
;	$36
;	$0F, $01, $01, $01, 	$1F, $1F, $1F, $1F, 	$12, $11, $0E, $00
;	$00, $0A, $07, $09, 	$FF, $0F, $1F, $0F, 	$18, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0E, $11, $12
	smpsVcDecayRate2    $09, $07, $0A, $00
	smpsVcDecayLevel    $00, $01, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $18

;	Voice $03
;	$3D
;	$01, $02, $02, $02, 	$14, $0E, $8C, $0E, 	$08, $05, $02, $05
;	$00, $0D, $0D, $0D, 	$1F, $1F, $1F, $1F, 	$1A, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $00, $02, $00, $00
	smpsVcAttackRate    $0E, $0C, $0E, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $02, $05, $08
	smpsVcDecayRate2    $0D, $0D, $0D, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $1A

;	Voice $04
;	$2C
;	$72, $78, $34, $34, 	$1F, $12, $1F, $12, 	$00, $0A, $00, $0A
;	$00, $00, $00, $00, 	$0F, $1F, $0F, $1F, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $08, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $00, $0A, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $00, $16

;	Voice $05
;	$2C
;	$74, $74, $34, $34, 	$1F, $12, $1F, $1F, 	$00, $00, $00, $00
;	$00, $01, $00, $01, 	$0F, $3F, $0F, $3F, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $01, $00, $01, $00
	smpsVcDecayLevel    $03, $00, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $00, $16

;	Voice $06
;	$04
;	$72, $42, $32, $32, 	$12, $12, $12, $12, 	$00, $08, $00, $08
;	$00, $08, $00, $08, 	$0F, $1F, $0F, $1F, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $04, $07
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $00, $08, $00
	smpsVcDecayRate2    $08, $00, $08, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $07
;	$3D
;	$01, $02, $02, $02, 	$10, $50, $50, $50, 	$07, $08, $08, $08
;	$01, $00, $00, $00, 	$20, $17, $17, $17, 	$1C, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $10, $10, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $07
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $07, $07, $07, $00
	smpsVcTotalLevel    $00, $00, $00, $1C

;	Voice $08
;	$2C
;	$74, $74, $34, $34, 	$1F, $12, $1F, $1F, 	$00, $07, $00, $07
;	$00, $07, $00, $07, 	$00, $38, $00, $38, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $00, $07, $00
	smpsVcDecayRate2    $07, $00, $07, $00
	smpsVcDecayLevel    $03, $00, $03, $00
	smpsVcReleaseRate   $08, $00, $08, $00
	smpsVcTotalLevel    $00, $17, $00, $16

