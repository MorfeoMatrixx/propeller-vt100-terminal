''
'' Font data (one bit/pixel, 9x16)
''
''        Author: Marko Lukat
'' Last modified: 2018/11/28
''       Version: 0.3
''        Layout: four scan lines per character (see below)
''
''
'' scanlines 4n..4n+3 (A, B, C, D)
''
''      word    %0000000_AAAAAAAAa  LSbit displayed first
''      word    %0000000_BBBBBBBBb
''      word    %0000000_CCCCCCCCc
''      word    %0000000_DDDDDDDDd
''
'' are packed as follows
''
''      long    %00_CCCCCCCCc_0_BBBBBBBBb_0_AAAAAAAAa_D
''      byte    %DDDDDDDd
''
CON
  height = 16

PUB addr

  return @font

DAT

font    long    $00000000, $0FC00000, $0FC00000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $1FE7F9FE, $00000000, $1FE7F9FE, $0F000000, $07800000, $1F800000, $1FC00000, $00000000
        long    $00600800, $0C020000, $03000000, $0CC00000, $1FC00000, $0C61F000, $00000000, $03000000
        long    $03000000, $03000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $00000000, $03000000, $0CC33000, $00000000, $07C0C030, $00000000, $03800000, $01806000
        long    $06000000, $01800000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $07800000, $03000000, $07C00000, $07C00000, $06000000, $0FE00000, $03800000, $0FE00000
        long    $07C00000, $07C00000, $00000000, $00000000, $00000000, $00000000, $00000000, $07C00000
        long    $00000000, $01000000, $07E00000, $07800000, $03E00000, $0FE00000, $0FE00000, $07800000
        long    $0C600000, $07800000, $0F000000, $0CE00000, $01E00000, $18600000, $0C600000, $07C00000
        long    $07E00000, $07C00000, $07E00000, $07C00000, $1FE00000, $0C600000, $18600000, $18600000
        long    $18600000, $18600000, $1FE00000, $07800000, $00000000, $07800000, $06C0E010, $00000000
        long    $03006018, $00000000, $00E00000, $00000000, $07000000, $00000000, $03800000, $00000000
        long    $00E00000, $03000000, $0C000000, $00E00000, $03800000, $00000000, $00000000, $00000000
        long    $00000000, $00000000, $00000000, $00000000, $01000000, $00000000, $00000000, $00000000
        long    $00000000, $00000000, $00000000, $0E000000, $03000000, $01C00000, $0DC00000, $00000000
        long    $07800000, $06600000, $03018000, $03804000, $06600000, $01803000, $06C0E000, $00000000
        long    $03804000, $0C600000, $01803000, $0CC00000, $0780C000, $01803000, $00031800, $0381B038
        long    $00C06030, $00000000, $0F800000, $03804000, $0C600000, $01803000, $03C06000, $01803000
        long    $0C600000, $00031800, $00031800, $0300C000, $06C0E000, $18600000, $0CC1F800, $1B038000
        long    $0180C000, $03018000, $0180C000, $0180C000, $0DC00000, $0001D8DC, $06C1E000, $06C0E000
        long    $01800000, $00000000, $00000000, $00601800, $00601800, $03000000, $00000000, $00000000
        long    $11011110, $1542A954, $17677176, $0300C030, $0300C030, $0300C030, $0D8360D8, $00000000
        long    $00000000, $0D8360D8, $0D8360D8, $00000000, $0D8360D8, $0D8360D8, $0300C030, $00000000
        long    $0300C030, $0300C030, $00000000, $0300C030, $00000000, $0300C030, $0300C030, $0D8360D8
        long    $0D8360D8, $00000000, $0D8360D8, $00000000, $0D8360D8, $00000000, $0D8360D8, $0300C030
        long    $0D8360D8, $00000000, $00000000, $0D8360D8, $0300C030, $00000000, $00000000, $0D8360D8
        long    $0300C030, $0300C030, $00000000, $3FEFFBFF, $00000000, $01E0781E, $3E0F83E1, $3FEFFBFF
        long    $00000000, $03C00000, $0FE00000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $00000000, $00000000, $03800000, $0F000000, $00000000, $00000000, $07000000, $00000000
        long    $00000000, $00000000, $00000000, $00000000, $0E000000, $0300C030, $00000000, $00000000
        long    $06C0E000, $00000000, $00000000, $06078000, $06C0D800, $03607000, $00000000, $00000000

        byte    $00, $81, $FF, $00, $00, $18, $18, $00, $FF, $00, $FF, $70, $66, $CC, $C6, $18
        byte    $07, $70, $3C, $66, $DB, $06, $00, $3C, $3C, $18, $00, $00, $00, $00, $00, $00
        byte    $00, $3C, $66, $36, $63, $00, $36, $0C, $18, $18, $00, $00, $00, $00, $00, $00
        byte    $66, $1C, $63, $63, $38, $03, $06, $63, $63, $63, $00, $00, $60, $00, $06, $63
        byte    $3E, $1C, $66, $66, $36, $66, $66, $66, $63, $18, $30, $66, $06, $E7, $67, $63
        byte    $66, $63, $66, $63, $DB, $63, $C3, $C3, $C3, $C3, $C3, $0C, $01, $30, $63, $00
        byte    $00, $00, $06, $00, $30, $00, $36, $00, $06, $18, $60, $06, $18, $00, $00, $00
        byte    $00, $00, $00, $00, $0C, $00, $00, $00, $00, $00, $00, $18, $18, $18, $3B, $00
        byte    $66, $00, $0C, $36, $00, $18, $1C, $00, $36, $00, $18, $00, $66, $18, $08, $00
        byte    $00, $00, $36, $36, $00, $18, $33, $18, $00, $3E, $63, $7E, $26, $66, $66, $18
        byte    $06, $0C, $06, $06, $3B, $63, $36, $36, $0C, $00, $00, $43, $43, $18, $00, $00
        byte    $22, $55, $EE, $18, $18, $18, $6C, $00, $00, $6C, $6C, $00, $6C, $6C, $18, $00
        byte    $18, $18, $00, $18, $00, $18, $18, $6C, $6C, $00, $6C, $00, $6C, $00, $6C, $18
        byte    $6C, $00, $00, $6C, $18, $00, $00, $6C, $18, $18, $00, $FF, $00, $0F, $F0, $FF
        byte    $00, $33, $63, $00, $7F, $00, $00, $00, $7E, $1C, $36, $0C, $00, $C0, $0C, $3E
        byte    $00, $00, $0C, $30, $D8, $18, $00, $00, $36, $00, $00, $30, $36, $0C, $00, $00

        long    $00000000, $1024094A, $1FE7F9B6, $0FE3F86C, $07C0E010, $1CE1E078, $1FE3F078, $03000000
        long    $1CE7F9FE, $0CC1E000, $132619FE, $03C260B0, $0CC330CC, $018061F8, $18C631FC, $0786D830
        long    $0FE0F81E, $0FE3E0F0, $0300C0FC, $0CC330CC, $1BC6D9B6, $0C61B038, $00000000, $0300C0FC
        long    $0300C0FC, $0300C030, $0600C000, $00C06000, $00600000, $0CC12000, $0380E010, $07C3F8FE
        long    $00000000, $0301E078, $00000048, $06C3F86C, $07C01886, $06031886, $0DC0E06C, $0000000C
        long    $01806018, $06018060, $07833000, $0300C000, $00000000, $00000000, $00000000, $06030080
        long    $1B661986, $0300C03C, $030180C0, $078300C0, $0661B078, $07E01806, $07E01806, $060300C0
        long    $07C318C6, $0FC318C6, $0000C030, $0000C030, $0180C060, $0003F000, $0600C018, $030180C6
        long    $0F6318C6, $0C63186C, $07C330CC, $00601886, $0CC330CC, $03C0B08C, $03C0B08C, $00601886
        long    $0FE318C6, $0300C030, $06018060, $03C1B0CC, $00C0300C, $1B67F9FE, $0F63F8DE, $0C6318C6
        long    $07C330CC, $0C6318C6, $07C330CC, $038030C6, $0300C132, $0C6318C6, $18661986, $18661986
        long    $0301E0CC, $07833186, $030180C2, $01806018, $01C03806, $06018060, $00000000, $00000000
        long    $00000000, $0600F000, $06C0F00C, $0C61F000, $06C1E060, $0C61F000, $01E0304C, $06637000
        long    $0DC1B00C, $0300E000, $0C038000, $06C3300C, $0300C030, $1FE33800, $0CC1D800, $0C61F000
        long    $0CC1D800, $06637000, $0DC1D800, $0C61F000, $0181F818, $06619800, $18661800, $18661800
        long    $0CC61800, $0C631800, $0663F800, $01C0C030, $0000C030, $0E00C030, $00000000, $06C0E010
        long    $00601886, $06619800, $0C61F000, $0600F000, $0600F000, $0600F000, $0600F000, $00C33078
        long    $0C61F000, $0C61F000, $0C61F000, $0300E000, $0300E000, $0300E000, $0C61B038, $0C61B038
        long    $00C330FE, $1B83B000, $0FE19866, $0C61F000, $0C61F000, $0C61F000, $06619800, $06619800
        long    $0C631800, $0C6318C6, $0C6318C6, $00601986, $00C0780C, $1FE0C078, $0CC2307C, $0FC0C030
        long    $0600F000, $0300E000, $0C61F000, $06619800, $0CC1D800, $0FE378CE, $0FC000F8, $07C00038
        long    $01806000, $0FE00000, $0FE00000, $030198C6, $030198C6, $0300C000, $06C36000, $06C0D800
        long    $11011110, $1542A954, $17677176, $0300C030, $0300C030, $0300F830, $0D8360D8, $00000000
        long    $0300F800, $0C0378D8, $0D8360D8, $0C03F800, $0C0378D8, $0D8360D8, $0300F830, $00000000
        long    $0300C031, $0300C031, $00000001, $0300C031, $00000001, $0300C031, $030FC031, $0D8360D9
        long    $018F60D9, $018FE001, $000F78D9, $000FF801, $018F60D9, $000FF801, $000F78D9, $000FF831
        long    $0D8360D9, $000FF801, $00000001, $0D8360D9, $030FC031, $030FC001, $00000001, $0D8360D9
        long    $030FF831, $0300C030, $00000001, $3FEFFBFF, $00000001, $01E0781E, $3E0F83E1, $3FEFFBFE
        long    $07637000, $03619866, $006018C6, $06C1B0FE, $018030C6, $0363F000, $0CC330CC, $0301D8DC
        long    $0CC1E030, $0C63186C, $0C6318C6, $0F818030, $1B63F000, $1B63F0C0, $07C0300C, $0C6318C6
        long    $000000FE, $0FC0C030, $0C018030, $00C06030, $0300C1B0, $0300C030, $0000C030, $07637000
        long    $00000038, $00000000, $00000000, $06018060, $06C1B06C, $03E0980C, $07C1F07C, $00000000

        byte    $00, $BD, $C3, $7F, $7F, $E7, $FF, $3C, $C3, $42, $BD, $33, $3C, $0C, $C6, $E7
        byte    $1F, $7C, $18, $66, $D8, $63, $00, $18, $18, $18, $7F, $7F, $03, $FF, $3E, $3E
        byte    $00, $18, $00, $36, $60, $18, $3B, $00, $0C, $30, $FF, $7E, $00, $7F, $00, $18
        byte    $DB, $18, $0C, $60, $7F, $60, $63, $18, $63, $60, $00, $00, $06, $00, $60, $18
        byte    $7B, $7F, $66, $03, $66, $16, $16, $7B, $63, $18, $30, $1E, $06, $C3, $73, $63
        byte    $06, $63, $36, $30, $18, $63, $C3, $DB, $18, $18, $0C, $0C, $1C, $30, $00, $00
        byte    $00, $3E, $66, $03, $33, $7F, $06, $33, $66, $18, $60, $1E, $18, $DB, $66, $63
        byte    $66, $33, $66, $06, $0C, $33, $C3, $C3, $3C, $63, $18, $18, $18, $18, $00, $63
        byte    $03, $33, $7F, $3E, $3E, $3E, $3E, $06, $7F, $7F, $7F, $18, $18, $18, $63, $63
        byte    $3E, $D8, $33, $63, $63, $63, $33, $33, $63, $63, $63, $03, $06, $18, $F6, $18
        byte    $3E, $18, $63, $33, $66, $7B, $00, $00, $06, $03, $60, $0C, $0C, $18, $1B, $6C
        byte    $22, $55, $EE, $18, $1F, $1F, $6F, $7F, $1F, $6F, $6C, $6F, $7F, $7F, $1F, $1F
        byte    $F8, $FF, $FF, $F8, $FF, $FF, $F8, $EC, $FC, $EC, $FF, $EF, $EC, $FF, $EF, $FF
        byte    $FF, $FF, $FF, $FC, $F8, $F8, $FC, $FF, $FF, $1F, $F8, $FF, $FF, $0F, $F0, $00
        byte    $1B, $33, $03, $36, $18, $1B, $66, $18, $66, $7F, $36, $66, $DB, $DB, $06, $63
        byte    $7F, $18, $30, $0C, $18, $18, $7E, $00, $00, $18, $00, $37, $00, $00, $3E, $00

        long    $00000000, $10240932, $1FE7F9CE, $0381F0FE, $0100E07C, $0300C1CE, $0300C0FC, $0000C078
        long    $1FE73986, $07833084, $1864C97A, $06619866, $0303F030, $01E07018, $1CE7318C, $0306D878
        long    $0060381E, $0C0380F0, $0301E0FC, $0CC000CC, $1B06C1B0, $0600E06C, $0FE3F8FE, $0301E0FC
        long    $0300C030, $0783F030, $0000C060, $0000600C, $0003F806, $000120CC, $0FE3F87C, $0100E038
        long    $00000000, $03000030, $00000000, $06C3F86C, $0C6308C0, $0C603018, $06619866, $00000000
        long    $03006018, $03018060, $00033078, $0000C030, $0300C000, $00000000, $03000000, $00603018
        long    $0CC61986, $0300C030, $0C60180C, $0C6300C0, $06018060, $0C6300C0, $0C6318C6, $01806018
        long    $0C6318C6, $060300C0, $0300C000, $0300C000, $0600C018, $000000FC, $0180C060, $03000030
        long    $0061D8F6, $0C6318C6, $0CC330CC, $0CC21806, $06C330CC, $0CC2300C, $00C0300C, $0CC318C6
        long    $0C6318C6, $0300C030, $06619866, $0CC3306C, $0CC2300C, $18661986, $0C6318C6, $0C6318C6
        long    $00C0300C, $0F6358C6, $0CC330CC, $0C6318C0, $0300C030, $0C6318C6, $07833186, $0CC7F9B6
        long    $18633078, $0300C030, $1864180C, $01806018, $0C038070, $06018060, $00000000, $00000000
        long    $00000000, $06619866, $0CC330CC, $0C601806, $06619866, $0C601806, $00C0300C, $06619866
        long    $0CC330CC, $0300C030, $0C0300C0, $0CC1B03C, $0300C030, $1B66D9B6, $0CC330CC, $0C6318C6
        long    $0CC330CC, $06619866, $00C0300C, $0C618038, $0D806018, $06619866, $07833186, $1FE6D9B6
        long    $0CC1E030, $0C6318C6, $0C603018, $0300C030, $0300C030, $0300C030, $00000000, $0FE318C6
        long    $07833086, $06619866, $0C601806, $06619866, $06619866, $06619866, $06619866, $0601E0CC
        long    $0C601806, $0C601806, $0C601806, $0300C030, $0300C030, $0300C030, $0C6318FE, $0C6318FE
        long    $0CC0300C, $0760D8FC, $06619866, $0C6318C6, $0C6318C6, $0C6318C6, $06619866, $06619866
        long    $0C6318C6, $0C6318C6, $0C6318C6, $0303F186, $0CE0300C, $0300C1FE, $0CC330CC, $0300C030
        long    $06619866, $0300C030, $0C6318C6, $06619866, $0CC330CC, $0C6318E6, $00000000, $00000000
        long    $0C631806, $00601806, $0C0300C0, $1B23980C, $0D2398CC, $0781E078, $0003606C, $0000D86C
        long    $11011110, $1542A954, $17677176, $0300C030, $0300C030, $0300C030, $0D8360D8, $0D8360D8
        long    $0300C030, $0D8360D8, $0D8360D8, $0D8360D8, $00000000, $00000000, $00000000, $0300C030
        long    $00000000, $00000000, $0300C030, $0300C030, $00000000, $0300C030, $0300C030, $0D8360D8
        long    $00000000, $0D8360D8, $00000000, $0D8360D8, $0D8360D8, $00000000, $0D8360D8, $00000000
        long    $00000000, $0300C030, $0D8360D8, $00000000, $00000000, $0300C030, $0D8360D8, $0D8360D8
        long    $0300C030, $00000000, $0300C030, $3FEFFBFF, $3FEFFBFF, $01E0781E, $3E0F83E1, $00000000
        long    $0760D836, $0C6318C6, $00601806, $06C1B06C, $0C603018, $0360D836, $00C1F0CC, $0300C030
        long    $0301E0CC, $06C318C6, $06C1B06C, $0CC330CC, $0003F1B6, $00C3F19E, $0180300C, $0C6318C6
        long    $0FE00000, $00000030, $00006030, $00018030, $0300C030, $0360D836, $0300C000, $0001D8DC
        long    $00000000, $00000030, $00000030, $0781B06C, $00000000, $00000000, $07C1F07C, $00000000

        byte    $00, $7E, $7E, $08, $00, $3C, $3C, $00, $FF, $00, $FF, $1E, $18, $07, $67, $18
        byte    $01, $40, $00, $66, $D8, $63, $7F, $7E, $18, $18, $00, $00, $00, $00, $00, $00
        byte    $00, $18, $00, $36, $3E, $61, $6E, $00, $30, $0C, $00, $00, $18, $00, $18, $01
        byte    $3C, $7E, $7F, $3E, $78, $3E, $3E, $0C, $3E, $1E, $00, $0C, $60, $00, $06, $18
        byte    $3E, $63, $3F, $3C, $1F, $7F, $0F, $5C, $63, $3C, $1E, $67, $7F, $C3, $63, $3E
        byte    $0F, $3E, $67, $3E, $3C, $3E, $18, $66, $C3, $3C, $FF, $3C, $40, $3C, $00, $00
        byte    $00, $6E, $3E, $3E, $6E, $3E, $0F, $3E, $67, $3C, $60, $67, $3C, $DB, $66, $3E
        byte    $3E, $3E, $0F, $3E, $38, $6E, $18, $66, $C3, $7E, $7F, $70, $18, $0E, $00, $00
        byte    $30, $6E, $3E, $6E, $6E, $6E, $6E, $60, $3E, $3E, $3E, $3C, $3C, $3C, $63, $63
        byte    $7F, $EE, $73, $3E, $3E, $3E, $6E, $6E, $7E, $3E, $3E, $18, $3F, $18, $CF, $18
        byte    $6E, $3C, $3E, $6E, $66, $63, $00, $00, $3E, $00, $00, $60, $7C, $18, $00, $00
        byte    $22, $55, $EE, $18, $18, $18, $6C, $6C, $18, $6C, $6C, $6C, $00, $00, $00, $18
        byte    $00, $00, $18, $18, $00, $18, $18, $6C, $00, $6C, $00, $6C, $6C, $00, $6C, $00
        byte    $00, $18, $6C, $00, $00, $18, $6C, $6C, $18, $00, $18, $FF, $FF, $0F, $F0, $00
        byte    $6E, $33, $03, $36, $7F, $0E, $06, $18, $7E, $1C, $77, $3C, $00, $03, $38, $63
        byte    $00, $FF, $7E, $7E, $18, $0E, $00, $00, $00, $00, $00, $38, $00, $00, $00, $00

        long    $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $1FE7F9FE, $00000000, $1FE7F9FE, $00000000, $00000000, $00000000, $00000006, $00000000
        long    $00000000, $00000000, $00000000, $00000000, $00000000, $0000007C, $00000000, $00000000
        long    $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $00000000, $00000000, $00000000, $00000000, $0000C030, $00000000, $00000000, $00000000
        long    $00000000, $00000000, $00000000, $00000000, $00000018, $00000000, $00000000, $00000000
        long    $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $00000000, $00038060, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $0007F800
        long    $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $03C19860
        long    $00000000, $00000000, $078330CC, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $01E0300C, $0F018060, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $00000000, $03E180C0, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $0001F0C0, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000078
        long    $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $03C180C0, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00007036
        long    $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $00000000, $00000000, $00000000, $0007C060, $000300C0, $00000000, $00000000, $00000000
        long    $11011110, $1542A954, $17677176, $0300C030, $0300C030, $0300C030, $0D8360D8, $0D8360D8
        long    $0300C030, $0D8360D8, $0D8360D8, $0D8360D8, $00000000, $00000000, $00000000, $0300C030
        long    $00000000, $00000000, $0300C030, $0300C030, $00000000, $0300C030, $0300C030, $0D8360D8
        long    $00000000, $0D8360D8, $00000000, $0D8360D8, $0D8360D8, $00000000, $0D8360D8, $00000000
        long    $00000000, $0300C030, $0D8360D8, $00000000, $00000000, $0300C030, $0D8360D8, $0D8360D8
        long    $0300C030, $00000000, $0300C030, $3FEFFBFF, $3FEFFBFF, $01E0781E, $3E0F83E1, $00000000
        long    $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000006, $00000000
        long    $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000
        long    $00000000, $00000000, $00000000, $00000000, $0300C030, $00000000, $00000000, $00000000
        long    $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000, $00000000

        byte    $00, $00, $00, $00, $00, $00, $00, $00, $FF, $00, $FF, $00, $00, $00, $00, $00
        byte    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
        byte    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
        byte    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
        byte    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
        byte    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
        byte    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
        byte    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
        byte    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
        byte    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
        byte    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
        byte    $22, $55, $EE, $18, $18, $18, $6C, $6C, $18, $6C, $6C, $6C, $00, $00, $00, $18
        byte    $00, $00, $18, $18, $00, $18, $18, $6C, $00, $6C, $00, $6C, $6C, $00, $6C, $00
        byte    $00, $18, $6C, $00, $00, $18, $6C, $6C, $18, $00, $18, $FF, $FF, $0F, $F0, $00
        byte    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
        byte    $00, $00, $00, $00, $18, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

DAT
{{

 TERMS OF USE: MIT License

 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
 associated documentation files (the "Software"), to deal in the Software without restriction, including
 without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the
 following conditions:

 The above copyright notice and this permission notice shall be included in all copies or substantial
 portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
 LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

}}
DAT
