// Cryptographic processor
pub const CRYP = struct {
    // control register
    CR: packed struct(u32) {
        // Reserved
        _reserved_0: u2,
        // Algorithm direction
        ALGODIR: u1,
        // Algorithm mode
        ALGOMODE0: u3,
        // Data type selection
        DATATYPE: u2,
        // Key size selection (AES mode only)
        KEYSIZE: u2,
        // Reserved
        _reserved_10: u4,
        // FIFO flush
        FFLUSH: u1,
        // Cryptographic processor enable
        CRYPEN: u1,
        // GCM_CCMPH
        GCM_CCMPH: u2,
        // Reserved
        _reserved_18: u1,
        // ALGOMODE
        ALGOMODE3: u1,
        // Reserved
        _reserved_20: u12,
    },
    // status register
    SR: packed struct(u32) {
        // Input FIFO empty
        IFEM: u1,
        // Input FIFO not full
        IFNF: u1,
        // Output FIFO not empty
        OFNE: u1,
        // Output FIFO full
        OFFU: u1,
        // Busy bit
        BUSY: u1,
        // Reserved
        _reserved_5: u27,
    },
    // data input register
    DIN: packed struct(u32) {
        // Data input
        DATAIN: u32,
    },
    // data output register
    DOUT: packed struct(u32) {
        // Data output
        DATAOUT: u32,
    },
    // DMA control register
    DMACR: packed struct(u32) {
        // DMA input enable
        DIEN: u1,
        // DMA output enable
        DOEN: u1,
        // Reserved
        _reserved_2: u30,
    },
    // interrupt mask set/clear register
    IMSCR: packed struct(u32) {
        // Input FIFO service interrupt mask
        INIM: u1,
        // Output FIFO service interrupt mask
        OUTIM: u1,
        // Reserved
        _reserved_2: u30,
    },
    // raw interrupt status register
    RISR: packed struct(u32) {
        // Input FIFO service raw interrupt status
        INRIS: u1,
        // Output FIFO service raw interrupt status
        OUTRIS: u1,
        // Reserved
        _reserved_2: u30,
    },
    // masked interrupt status register
    MISR: packed struct(u32) {
        // Input FIFO service masked interrupt status
        INMIS: u1,
        // Output FIFO service masked interrupt status
        OUTMIS: u1,
        // Reserved
        _reserved_2: u30,
    },
    // key registers
    K0LR: packed struct(u32) {
        // K224
        K224: u1,
        // K225
        K225: u1,
        // K226
        K226: u1,
        // K227
        K227: u1,
        // K228
        K228: u1,
        // K229
        K229: u1,
        // K230
        K230: u1,
        // K231
        K231: u1,
        // K232
        K232: u1,
        // K233
        K233: u1,
        // K234
        K234: u1,
        // K235
        K235: u1,
        // K236
        K236: u1,
        // K237
        K237: u1,
        // K238
        K238: u1,
        // K239
        K239: u1,
        // K240
        K240: u1,
        // K241
        K241: u1,
        // K242
        K242: u1,
        // K243
        K243: u1,
        // K244
        K244: u1,
        // K245
        K245: u1,
        // K246
        K246: u1,
        // K247
        K247: u1,
        // K248
        K248: u1,
        // K249
        K249: u1,
        // K250
        K250: u1,
        // K251
        K251: u1,
        // K252
        K252: u1,
        // K253
        K253: u1,
        // K254
        K254: u1,
        // K255
        K255: u1,
    },
    // key registers
    K0RR: packed struct(u32) {
        // K192
        K192: u1,
        // K193
        K193: u1,
        // K194
        K194: u1,
        // K195
        K195: u1,
        // K196
        K196: u1,
        // K197
        K197: u1,
        // K198
        K198: u1,
        // K199
        K199: u1,
        // K200
        K200: u1,
        // K201
        K201: u1,
        // K202
        K202: u1,
        // K203
        K203: u1,
        // K204
        K204: u1,
        // K205
        K205: u1,
        // K206
        K206: u1,
        // K207
        K207: u1,
        // K208
        K208: u1,
        // K209
        K209: u1,
        // K210
        K210: u1,
        // K211
        K211: u1,
        // K212
        K212: u1,
        // K213
        K213: u1,
        // K214
        K214: u1,
        // K215
        K215: u1,
        // K216
        K216: u1,
        // K217
        K217: u1,
        // K218
        K218: u1,
        // K219
        K219: u1,
        // K220
        K220: u1,
        // K221
        K221: u1,
        // K222
        K222: u1,
        // K223
        K223: u1,
    },
    // key registers
    K1LR: packed struct(u32) {
        // K160
        K160: u1,
        // K161
        K161: u1,
        // K162
        K162: u1,
        // K163
        K163: u1,
        // K164
        K164: u1,
        // K165
        K165: u1,
        // K166
        K166: u1,
        // K167
        K167: u1,
        // K168
        K168: u1,
        // K169
        K169: u1,
        // K170
        K170: u1,
        // K171
        K171: u1,
        // K172
        K172: u1,
        // K173
        K173: u1,
        // K174
        K174: u1,
        // K175
        K175: u1,
        // K176
        K176: u1,
        // K177
        K177: u1,
        // K178
        K178: u1,
        // K179
        K179: u1,
        // K180
        K180: u1,
        // K181
        K181: u1,
        // K182
        K182: u1,
        // K183
        K183: u1,
        // K184
        K184: u1,
        // K185
        K185: u1,
        // K186
        K186: u1,
        // K187
        K187: u1,
        // K188
        K188: u1,
        // K189
        K189: u1,
        // K190
        K190: u1,
        // K191
        K191: u1,
    },
    // key registers
    K1RR: packed struct(u32) {
        // K128
        K128: u1,
        // K129
        K129: u1,
        // K130
        K130: u1,
        // K131
        K131: u1,
        // K132
        K132: u1,
        // K133
        K133: u1,
        // K134
        K134: u1,
        // K135
        K135: u1,
        // K136
        K136: u1,
        // K137
        K137: u1,
        // K138
        K138: u1,
        // K139
        K139: u1,
        // K140
        K140: u1,
        // K141
        K141: u1,
        // K142
        K142: u1,
        // K143
        K143: u1,
        // K144
        K144: u1,
        // K145
        K145: u1,
        // K146
        K146: u1,
        // K147
        K147: u1,
        // K148
        K148: u1,
        // K149
        K149: u1,
        // K150
        K150: u1,
        // K151
        K151: u1,
        // K152
        K152: u1,
        // K153
        K153: u1,
        // K154
        K154: u1,
        // K155
        K155: u1,
        // K156
        K156: u1,
        // K157
        K157: u1,
        // K158
        K158: u1,
        // K159
        K159: u1,
    },
    // key registers
    K2LR: packed struct(u32) {
        // K96
        K96: u1,
        // K97
        K97: u1,
        // K98
        K98: u1,
        // K99
        K99: u1,
        // K100
        K100: u1,
        // K101
        K101: u1,
        // K102
        K102: u1,
        // K103
        K103: u1,
        // K104
        K104: u1,
        // K105
        K105: u1,
        // K106
        K106: u1,
        // K107
        K107: u1,
        // K108
        K108: u1,
        // K109
        K109: u1,
        // K110
        K110: u1,
        // K111
        K111: u1,
        // K112
        K112: u1,
        // K113
        K113: u1,
        // K114
        K114: u1,
        // K115
        K115: u1,
        // K116
        K116: u1,
        // K117
        K117: u1,
        // K118
        K118: u1,
        // K119
        K119: u1,
        // K120
        K120: u1,
        // K121
        K121: u1,
        // K122
        K122: u1,
        // K123
        K123: u1,
        // K124
        K124: u1,
        // K125
        K125: u1,
        // K126
        K126: u1,
        // K127
        K127: u1,
    },
    // key registers
    K2RR: packed struct(u32) {
        // K64
        K64: u1,
        // K65
        K65: u1,
        // K66
        K66: u1,
        // K67
        K67: u1,
        // K68
        K68: u1,
        // K69
        K69: u1,
        // K70
        K70: u1,
        // K71
        K71: u1,
        // K72
        K72: u1,
        // K73
        K73: u1,
        // K74
        K74: u1,
        // K75
        K75: u1,
        // K76
        K76: u1,
        // K77
        K77: u1,
        // K78
        K78: u1,
        // K79
        K79: u1,
        // K80
        K80: u1,
        // K81
        K81: u1,
        // K82
        K82: u1,
        // K83
        K83: u1,
        // K84
        K84: u1,
        // K85
        K85: u1,
        // K86
        K86: u1,
        // K87
        K87: u1,
        // K88
        K88: u1,
        // K89
        K89: u1,
        // K90
        K90: u1,
        // K91
        K91: u1,
        // K92
        K92: u1,
        // K93
        K93: u1,
        // K94
        K94: u1,
        // K95
        K95: u1,
    },
    // key registers
    K3LR: packed struct(u32) {
        // K32
        K32: u1,
        // K33
        K33: u1,
        // K34
        K34: u1,
        // K35
        K35: u1,
        // K36
        K36: u1,
        // K37
        K37: u1,
        // K38
        K38: u1,
        // K39
        K39: u1,
        // K40
        K40: u1,
        // K41
        K41: u1,
        // K42
        K42: u1,
        // K43
        K43: u1,
        // K44
        K44: u1,
        // K45
        K45: u1,
        // K46
        K46: u1,
        // K47
        K47: u1,
        // K48
        K48: u1,
        // K49
        K49: u1,
        // K50
        K50: u1,
        // K51
        K51: u1,
        // K52
        K52: u1,
        // K53
        K53: u1,
        // K54
        K54: u1,
        // K55
        K55: u1,
        // K56
        K56: u1,
        // K57
        K57: u1,
        // K58
        K58: u1,
        // K59
        K59: u1,
        // K60
        K60: u1,
        // K61
        K61: u1,
        // K62
        K62: u1,
        // K63
        K63: u1,
    },
    // key registers
    K3RR: packed struct(u32) {
        // K0
        K0: u1,
        // K1
        K1: u1,
        // K2
        K2: u1,
        // K3
        K3: u1,
        // K4
        K4: u1,
        // K5
        K5: u1,
        // K6
        K6: u1,
        // K7
        K7: u1,
        // K8
        K8: u1,
        // K9
        K9: u1,
        // K10
        K10: u1,
        // K11
        K11: u1,
        // K12
        K12: u1,
        // K13
        K13: u1,
        // K14
        K14: u1,
        // K15
        K15: u1,
        // K16
        K16: u1,
        // K17
        K17: u1,
        // K18
        K18: u1,
        // K19
        K19: u1,
        // K20
        K20: u1,
        // K21
        K21: u1,
        // K22
        K22: u1,
        // K23
        K23: u1,
        // K24
        K24: u1,
        // K25
        K25: u1,
        // K26
        K26: u1,
        // K27
        K27: u1,
        // K28
        K28: u1,
        // K29
        K29: u1,
        // K30
        K30: u1,
        // K31
        K31: u1,
    },
    // initialization vector registers
    IV0LR: packed struct(u32) {
        // IV31
        IV31: u1,
        // IV30
        IV30: u1,
        // IV29
        IV29: u1,
        // IV28
        IV28: u1,
        // IV27
        IV27: u1,
        // IV26
        IV26: u1,
        // IV25
        IV25: u1,
        // IV24
        IV24: u1,
        // IV23
        IV23: u1,
        // IV22
        IV22: u1,
        // IV21
        IV21: u1,
        // IV20
        IV20: u1,
        // IV19
        IV19: u1,
        // IV18
        IV18: u1,
        // IV17
        IV17: u1,
        // IV16
        IV16: u1,
        // IV15
        IV15: u1,
        // IV14
        IV14: u1,
        // IV13
        IV13: u1,
        // IV12
        IV12: u1,
        // IV11
        IV11: u1,
        // IV10
        IV10: u1,
        // IV9
        IV9: u1,
        // IV8
        IV8: u1,
        // IV7
        IV7: u1,
        // IV6
        IV6: u1,
        // IV5
        IV5: u1,
        // IV4
        IV4: u1,
        // IV3
        IV3: u1,
        // IV2
        IV2: u1,
        // IV1
        IV1: u1,
        // IV0
        IV0: u1,
    },
    // initialization vector registers
    IV0RR: packed struct(u32) {
        // IV63
        IV63: u1,
        // IV62
        IV62: u1,
        // IV61
        IV61: u1,
        // IV60
        IV60: u1,
        // IV59
        IV59: u1,
        // IV58
        IV58: u1,
        // IV57
        IV57: u1,
        // IV56
        IV56: u1,
        // IV55
        IV55: u1,
        // IV54
        IV54: u1,
        // IV53
        IV53: u1,
        // IV52
        IV52: u1,
        // IV51
        IV51: u1,
        // IV50
        IV50: u1,
        // IV49
        IV49: u1,
        // IV48
        IV48: u1,
        // IV47
        IV47: u1,
        // IV46
        IV46: u1,
        // IV45
        IV45: u1,
        // IV44
        IV44: u1,
        // IV43
        IV43: u1,
        // IV42
        IV42: u1,
        // IV41
        IV41: u1,
        // IV40
        IV40: u1,
        // IV39
        IV39: u1,
        // IV38
        IV38: u1,
        // IV37
        IV37: u1,
        // IV36
        IV36: u1,
        // IV35
        IV35: u1,
        // IV34
        IV34: u1,
        // IV33
        IV33: u1,
        // IV32
        IV32: u1,
    },
    // initialization vector registers
    IV1LR: packed struct(u32) {
        // IV95
        IV95: u1,
        // IV94
        IV94: u1,
        // IV93
        IV93: u1,
        // IV92
        IV92: u1,
        // IV91
        IV91: u1,
        // IV90
        IV90: u1,
        // IV89
        IV89: u1,
        // IV88
        IV88: u1,
        // IV87
        IV87: u1,
        // IV86
        IV86: u1,
        // IV85
        IV85: u1,
        // IV84
        IV84: u1,
        // IV83
        IV83: u1,
        // IV82
        IV82: u1,
        // IV81
        IV81: u1,
        // IV80
        IV80: u1,
        // IV79
        IV79: u1,
        // IV78
        IV78: u1,
        // IV77
        IV77: u1,
        // IV76
        IV76: u1,
        // IV75
        IV75: u1,
        // IV74
        IV74: u1,
        // IV73
        IV73: u1,
        // IV72
        IV72: u1,
        // IV71
        IV71: u1,
        // IV70
        IV70: u1,
        // IV69
        IV69: u1,
        // IV68
        IV68: u1,
        // IV67
        IV67: u1,
        // IV66
        IV66: u1,
        // IV65
        IV65: u1,
        // IV64
        IV64: u1,
    },
    // initialization vector registers
    IV1RR: packed struct(u32) {
        // IV127
        IV127: u1,
        // IV126
        IV126: u1,
        // IV125
        IV125: u1,
        // IV124
        IV124: u1,
        // IV123
        IV123: u1,
        // IV122
        IV122: u1,
        // IV121
        IV121: u1,
        // IV120
        IV120: u1,
        // IV119
        IV119: u1,
        // IV118
        IV118: u1,
        // IV117
        IV117: u1,
        // IV116
        IV116: u1,
        // IV115
        IV115: u1,
        // IV114
        IV114: u1,
        // IV113
        IV113: u1,
        // IV112
        IV112: u1,
        // IV111
        IV111: u1,
        // IV110
        IV110: u1,
        // IV109
        IV109: u1,
        // IV108
        IV108: u1,
        // IV107
        IV107: u1,
        // IV106
        IV106: u1,
        // IV105
        IV105: u1,
        // IV104
        IV104: u1,
        // IV103
        IV103: u1,
        // IV102
        IV102: u1,
        // IV101
        IV101: u1,
        // IV100
        IV100: u1,
        // IV99
        IV99: u1,
        // IV98
        IV98: u1,
        // IV97
        IV97: u1,
        // IV96
        IV96: u1,
    },
    // context swap register
    CSGCMCCM0R: packed struct(u32) {
        // CSGCMCCM0
        CSGCMCCM0: u32,
    },
    // context swap register
    CSGCMCCM1R: packed struct(u32) {
        // CSGCMCCM1
        CSGCMCCM1: u32,
    },
    // context swap register
    CSGCMCCM2R: packed struct(u32) {
        // CSGCMCCM2
        CSGCMCCM2: u32,
    },
    // context swap register
    CSGCMCCM3R: packed struct(u32) {
        // CSGCMCCM3
        CSGCMCCM3: u32,
    },
    // context swap register
    CSGCMCCM4R: packed struct(u32) {
        // CSGCMCCM4
        CSGCMCCM4: u32,
    },
    // context swap register
    CSGCMCCM5R: packed struct(u32) {
        // CSGCMCCM5
        CSGCMCCM5: u32,
    },
    // context swap register
    CSGCMCCM6R: packed struct(u32) {
        // CSGCMCCM6
        CSGCMCCM6: u32,
    },
    // context swap register
    CSGCMCCM7R: packed struct(u32) {
        // CSGCMCCM7
        CSGCMCCM7: u32,
    },
    // context swap register
    CSGCM0R: packed struct(u32) {
        // CSGCM0
        CSGCM0: u32,
    },
    // context swap register
    CSGCM1R: packed struct(u32) {
        // CSGCM1
        CSGCM1: u32,
    },
    // context swap register
    CSGCM2R: packed struct(u32) {
        // CSGCM2
        CSGCM2: u32,
    },
    // context swap register
    CSGCM3R: packed struct(u32) {
        // CSGCM3
        CSGCM3: u32,
    },
    // context swap register
    CSGCM4R: packed struct(u32) {
        // CSGCM4
        CSGCM4: u32,
    },
    // context swap register
    CSGCM5R: packed struct(u32) {
        // CSGCM5
        CSGCM5: u32,
    },
    // context swap register
    CSGCM6R: packed struct(u32) {
        // CSGCM6
        CSGCM6: u32,
    },
    // context swap register
    CSGCM7R: packed struct(u32) {
        // CSGCM7
        CSGCM7: u32,
    },
};

pub const CRYP_BASE_ADDRESS: usize = 0x48021000;
pub const CRYP_REGISTERS: *volatile CRYP = @ptrFromInt(CRYP_BASE_ADDRESS);
