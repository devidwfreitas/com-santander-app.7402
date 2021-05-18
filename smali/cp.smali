.class public abstract Lcp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcl;


# static fields
.field static final i:[J

.field private static final j:I = 0x80


# instance fields
.field protected a:J

.field protected b:J

.field protected c:J

.field protected d:J

.field protected e:J

.field protected f:J

.field protected g:J

.field protected h:J

.field private k:[B

.field private l:I

.field private m:J

.field private n:J

.field private o:[J

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 353
    const/16 v0, 0x50

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcp;->i:[J

    .line 8
    return-void

    .line 353
    :array_0
    .array-data 8
        0x428a2f98d728ae22L    # 3.5989662528217666E12
        0x7137449123ef65cdL    # 2.367405559035152E237
        -0x4a3f043013b2c4d1L    # -9.0786554787018E-50
        -0x164a245a7e762444L
        0x3956c25bf348b538L
        0x59f111f1b605d019L    # 1.8054860536953294E125
        -0x6dc07d5b50e6b065L    # -8.717181310573585E-221
        -0x54e3a12a25927ee8L
        -0x27f855675cfcfdbeL    # -1.1656291332323638E116
        0x12835b0145706fbeL
        0x243185be4ee4b28cL    # 2.410773468256423E-134
        0x550c7dc3d5ffb4e2L    # 4.985403983718413E101
        0x72be5d74f27b896fL    # 5.183352230240388E244
        -0x7f214e01c4e9694fL
        -0x6423f958da38edcbL
        -0x3e640e8b3096d96cL    # -1.1720222785268623E8
        -0x1b64963e610eb52eL    # -4.339261227288659E176
        -0x1041b879c7b0da1dL    # -1.836300920646737E230
        0xfc19dc68b8cd5b5L    # 8.864787397362889E-233
        0x240ca1cc77ac9c65L    # 4.924067956729057E-135
        0x2de92c6f592b0275L    # 1.5818166760957606E-87
        0x4a7484aa6ea6e483L    # 4.79798724707082E50
        0x5cb0a9dcbd41fbd4L    # 3.100593885146353E138
        0x76f988da831153b5L    # 1.2864857866870779E265
        -0x67c1aead11992055L
        -0x57ce3992d24bcdf0L    # -4.511217866312199E-115
        -0x4ffcd8376704dec1L    # -2.0678662886600765E-77
        -0x40a680384110f11cL    # -0.0015563440936014411
        -0x391ff40cc257703eL    # -2.603722742751637E33
        -0x2a586eb86cf558dbL    # -4.222814448133811E104
        0x6ca6351e003826fL
        0x142929670a0e6e70L
        0x27b70a8546d22ffcL
        0x2e1b21385c26c926L    # 1.3637893953385892E-86
        0x4d2c6dfc5ac42aedL    # 5.84763610164635E63
        0x53380d139d95b3dfL    # 7.838866619197482E92
        0x650a73548baf63deL    # 5.35921865865203E178
        0x766a0abb3c77b2a8L    # 2.5625906234442426E262
        -0x7e3d36d1b812511aL    # -3.506432391784029E-300
        -0x6d8dd37aeb7dcac5L    # -8.044358981173315E-220
        -0x5d40175eb30efc9cL
        -0x57e599b443bdcfffL
        -0x3db4748f2f07686fL    # -2.366070870891841E11
        -0x3893ae5cf9ab41d0L    # -1.17632082693375E36
        -0x2e6d17e62910ade8L    # -9.182337425192181E84
        -0x2966f9dbaa9a56f0L    # -1.4692477645833556E109
        -0xbf1ca7aa88edfd6L
        0x106aa07032bbd1b8L
        0x19a4c116b8d2d0c8L
        0x1e376c085141ab53L    # 4.067301537801791E-163
        0x2748774cdf8eeb99L    # 1.894937972556452E-119
        0x34b0bcb5e19b48a8L    # 6.82593759724882E-55
        0x391c0cb3c5c95a63L    # 1.3505399862746614E-33
        0x4ed8aa4ae3418acbL    # 6.809319594147137E71
        0x5b9cca4f7763e373L    # 2.0435436325319052E133
        0x682e6ff3d6b2b8a3L    # 6.943421982965376E193
        0x748f82ee5defb2fcL    # 2.887850816088868E253
        0x78a5636f43172f60L    # 1.4463210820003646E273
        -0x7b3787eb5e0f548eL
        -0x7338fdf7e59bc614L
        -0x6f410005dc9ce1d8L    # -5.111680914909667E-228
        -0x5baf9314217d4217L    # -9.03940504491957E-134
        -0x41065c084d3986ebL    # -2.445268471406536E-5
        -0x398e870d1c8dacd5L    # -2.2148969568888243E31
        -0x35d8c13115d99e64L    # -1.6986554718624063E49
        -0x2e794738de3f3df9L    # -5.517613964471652E84
        -0x15258229321f14e2L    # -5.315750124715331E206
        -0xa82b08011912e88L    # -8.801976642581914E257
        0x6f067aa72176fbaL
        0xa637dc5a2c898a6L
        0x113f9804bef90daeL
        0x1b710b35131c471bL
        0x28db77f523047d84L    # 7.138679721560702E-112
        0x32caab7b40c72493L    # 5.064907242937011E-64
        0x3c9ebe0a15c9bebcL    # 1.0665892261952011E-16
        0x431d67c49c100d4cL    # 2.069217113539411E15
        0x4cc5d4becb3e42b6L    # 7.016224550123326E61
        0x597f299cfc657e2aL    # 1.2875119238090917E123
        0x5fcb6fab3ad6faecL    # 2.873901462601813E153
        0x6c44198c4a475817L    # 3.3832852265175575E213
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Lcp;->o:[J

    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcp;->k:[B

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcp;->l:I

    .line 32
    invoke-virtual {p0}, Lcp;->c()V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lcp;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Lcp;->o:[J

    .line 42
    iget-object v0, p1, Lcp;->k:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcp;->k:[B

    .line 43
    iget-object v0, p1, Lcp;->k:[B

    iget-object v1, p0, Lcp;->k:[B

    iget-object v2, p1, Lcp;->k:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget v0, p1, Lcp;->l:I

    iput v0, p0, Lcp;->l:I

    .line 46
    iget-wide v0, p1, Lcp;->m:J

    iput-wide v0, p0, Lcp;->m:J

    .line 47
    iget-wide v0, p1, Lcp;->n:J

    iput-wide v0, p0, Lcp;->n:J

    .line 49
    iget-wide v0, p1, Lcp;->a:J

    iput-wide v0, p0, Lcp;->a:J

    .line 50
    iget-wide v0, p1, Lcp;->b:J

    iput-wide v0, p0, Lcp;->b:J

    .line 51
    iget-wide v0, p1, Lcp;->c:J

    iput-wide v0, p0, Lcp;->c:J

    .line 52
    iget-wide v0, p1, Lcp;->d:J

    iput-wide v0, p0, Lcp;->d:J

    .line 53
    iget-wide v0, p1, Lcp;->e:J

    iput-wide v0, p0, Lcp;->e:J

    .line 54
    iget-wide v0, p1, Lcp;->f:J

    iput-wide v0, p0, Lcp;->f:J

    .line 55
    iget-wide v0, p1, Lcp;->g:J

    iput-wide v0, p0, Lcp;->g:J

    .line 56
    iget-wide v0, p1, Lcp;->h:J

    iput-wide v0, p0, Lcp;->h:J

    .line 58
    iget-object v0, p1, Lcp;->o:[J

    iget-object v1, p0, Lcp;->o:[J

    iget-object v2, p1, Lcp;->o:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget v0, p1, Lcp;->p:I

    iput v0, p0, Lcp;->p:I

    .line 60
    return-void
.end method

.method private a(J)J
    .locals 7

    .prologue
    .line 328
    const/16 v0, 0x24

    shl-long v0, p1, v0

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x1e

    shl-long v2, p1, v2

    const/16 v4, 0x22

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x19

    shl-long v2, p1, v2

    const/16 v4, 0x27

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private a(JJJ)J
    .locals 5

    .prologue
    .line 314
    and-long v0, p1, p3

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    and-long/2addr v2, p5

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private b(J)J
    .locals 7

    .prologue
    .line 334
    const/16 v0, 0x32

    shl-long v0, p1, v0

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x2e

    shl-long v2, p1, v2

    const/16 v4, 0x12

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x17

    shl-long v2, p1, v2

    const/16 v4, 0x29

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private b(JJJ)J
    .locals 5

    .prologue
    .line 322
    and-long v0, p1, p3

    and-long v2, p1, p5

    xor-long/2addr v0, v2

    and-long v2, p3, p5

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private c(J)J
    .locals 7

    .prologue
    .line 340
    const/16 v0, 0x3f

    shl-long v0, p1, v0

    const/4 v2, 0x1

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, p1, v2

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private d(J)J
    .locals 7

    .prologue
    .line 346
    const/16 v0, 0x2d

    shl-long v0, p1, v0

    const/16 v2, 0x13

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/4 v2, 0x3

    shl-long v2, p1, v2

    const/16 v4, 0x3d

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x6

    ushr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private g()V
    .locals 8

    .prologue
    const-wide v6, 0x1fffffffffffffffL

    .line 201
    iget-wide v0, p0, Lcp;->m:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 203
    iget-wide v0, p0, Lcp;->n:J

    iget-wide v2, p0, Lcp;->m:J

    const/16 v4, 0x3d

    ushr-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcp;->n:J

    .line 204
    iget-wide v0, p0, Lcp;->m:J

    and-long/2addr v0, v6

    iput-wide v0, p0, Lcp;->m:J

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public a(B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lcp;->k:[B

    iget v1, p0, Lcp;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcp;->l:I

    aput-byte p1, v0, v1

    .line 67
    iget v0, p0, Lcp;->l:I

    iget-object v1, p0, Lcp;->k:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcp;->k:[B

    invoke-virtual {p0, v0, v3}, Lcp;->a([BI)V

    .line 70
    iput v3, p0, Lcp;->l:I

    .line 73
    :cond_0
    iget-wide v0, p0, Lcp;->m:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcp;->m:J

    .line 74
    return-void
.end method

.method protected a(JJ)V
    .locals 3

    .prologue
    const/16 v1, 0xe

    .line 212
    iget v0, p0, Lcp;->p:I

    if-le v0, v1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcp;->f()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcp;->o:[J

    aput-wide p3, v0, v1

    .line 218
    iget-object v0, p0, Lcp;->o:[J

    const/16 v1, 0xf

    aput-wide p1, v0, v1

    .line 219
    return-void
.end method

.method protected a(J[BI)V
    .locals 5

    .prologue
    .line 185
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, p4

    .line 186
    add-int/lit8 v0, p4, 0x1

    const/16 v1, 0x30

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 187
    add-int/lit8 v0, p4, 0x2

    const/16 v1, 0x28

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 188
    add-int/lit8 v0, p4, 0x3

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 189
    add-int/lit8 v0, p4, 0x4

    const/16 v1, 0x18

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 190
    add-int/lit8 v0, p4, 0x5

    const/16 v1, 0x10

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 191
    add-int/lit8 v0, p4, 0x6

    const/16 v1, 0x8

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 192
    add-int/lit8 v0, p4, 0x7

    long-to-int v1, p1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 193
    return-void
.end method

.method protected a([BI)V
    .locals 8

    .prologue
    const/16 v7, 0x10

    .line 165
    iget-object v0, p0, Lcp;->o:[J

    iget v1, p0, Lcp;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcp;->p:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    .line 166
    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 167
    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 168
    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 169
    add-int/lit8 v4, p2, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 170
    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    .line 171
    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 172
    add-int/lit8 v4, p2, 0x7

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 165
    aput-wide v2, v0, v1

    .line 174
    iget v0, p0, Lcp;->p:I

    if-ne v0, v7, :cond_0

    .line 176
    invoke-virtual {p0}, Lcp;->f()V

    .line 178
    :cond_0
    return-void
.end method

.method public a([BII)V
    .locals 4

    .prologue
    .line 84
    :goto_0
    iget v0, p0, Lcp;->l:I

    if-eqz v0, :cond_0

    if-gtz p3, :cond_1

    .line 95
    :cond_0
    :goto_1
    iget-object v0, p0, Lcp;->k:[B

    array-length v0, v0

    if-gt p3, v0, :cond_2

    .line 107
    :goto_2
    if-gtz p3, :cond_3

    .line 114
    return-void

    .line 86
    :cond_1
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcp;->a(B)V

    .line 88
    add-int/lit8 p2, p2, 0x1

    .line 89
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcp;->a([BI)V

    .line 99
    iget-object v0, p0, Lcp;->k:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 100
    iget-object v0, p0, Lcp;->k:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 101
    iget-wide v0, p0, Lcp;->m:J

    iget-object v2, p0, Lcp;->k:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcp;->m:J

    goto :goto_1

    .line 109
    :cond_3
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcp;->a(B)V

    .line 111
    add-int/lit8 p2, p2, 0x1

    .line 112
    add-int/lit8 p3, p3, -0x1

    goto :goto_2
.end method

.method public c()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 140
    iput-wide v4, p0, Lcp;->m:J

    .line 141
    iput-wide v4, p0, Lcp;->n:J

    .line 143
    iput v1, p0, Lcp;->l:I

    move v0, v1

    .line 144
    :goto_0
    iget-object v2, p0, Lcp;->k:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 149
    iput v1, p0, Lcp;->p:I

    .line 150
    :goto_1
    iget-object v0, p0, Lcp;->o:[J

    array-length v0, v0

    if-ne v1, v0, :cond_1

    .line 154
    return-void

    .line 146
    :cond_0
    iget-object v2, p0, Lcp;->k:[B

    aput-byte v1, v2, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcp;->o:[J

    aput-wide v4, v0, v1

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public d()V
    .locals 5

    .prologue
    .line 118
    invoke-direct {p0}, Lcp;->g()V

    .line 120
    iget-wide v0, p0, Lcp;->m:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    .line 121
    iget-wide v2, p0, Lcp;->n:J

    .line 126
    const/16 v4, -0x80

    invoke-virtual {p0, v4}, Lcp;->a(B)V

    .line 128
    :goto_0
    iget v4, p0, Lcp;->l:I

    if-nez v4, :cond_0

    .line 133
    invoke-virtual {p0, v0, v1, v2, v3}, Lcp;->a(JJ)V

    .line 135
    invoke-virtual {p0}, Lcp;->f()V

    .line 136
    return-void

    .line 130
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcp;->a(B)V

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 158
    const/16 v0, 0x80

    return v0
.end method

.method protected f()V
    .locals 32

    .prologue
    .line 223
    invoke-direct/range {p0 .. p0}, Lcp;->g()V

    .line 228
    const/16 v4, 0x10

    :goto_0
    const/16 v5, 0x4f

    if-le v4, v5, :cond_0

    .line 236
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcp;->a:J

    .line 237
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcp;->b:J

    move-wide/from16 v16, v0

    .line 238
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcp;->c:J

    move-wide/from16 v18, v0

    .line 239
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcp;->d:J

    move-wide/from16 v22, v0

    .line 240
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcp;->e:J

    .line 241
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcp;->f:J

    .line 242
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcp;->g:J

    .line 243
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcp;->h:J

    .line 245
    const/4 v5, 0x0

    .line 246
    const/4 v4, 0x0

    move-wide/from16 v20, v14

    move-wide v14, v12

    move v12, v5

    :goto_1
    const/16 v5, 0xa

    if-lt v4, v5, :cond_1

    .line 289
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcp;->a:J

    add-long/2addr v4, v14

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcp;->a:J

    .line 290
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcp;->b:J

    add-long v4, v4, v16

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcp;->b:J

    .line 291
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcp;->c:J

    add-long v4, v4, v18

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcp;->c:J

    .line 292
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcp;->d:J

    add-long v4, v4, v22

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcp;->d:J

    .line 293
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcp;->e:J

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcp;->e:J

    .line 294
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcp;->f:J

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcp;->f:J

    .line 295
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcp;->g:J

    add-long/2addr v4, v10

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcp;->g:J

    .line 296
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcp;->h:J

    add-long v4, v4, v20

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcp;->h:J

    .line 301
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcp;->p:I

    .line 302
    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    .line 306
    return-void

    .line 230
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcp;->o:[J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcp;->o:[J

    add-int/lit8 v7, v4, -0x2

    aget-wide v6, v6, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcp;->d(J)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcp;->o:[J

    add-int/lit8 v9, v4, -0x7

    aget-wide v8, v8, v9

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcp;->o:[J

    add-int/lit8 v9, v4, -0xf

    aget-wide v8, v8, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcp;->c(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcp;->o:[J

    add-int/lit8 v9, v4, -0x10

    aget-wide v8, v8, v9

    add-long/2addr v6, v8

    aput-wide v6, v5, v4

    .line 228
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 249
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcp;->b(J)J

    move-result-wide v24

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcp;->a(JJJ)J

    move-result-wide v26

    add-long v24, v24, v26

    sget-object v5, Lcp;->i:[J

    aget-wide v26, v5, v12

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcp;->o:[J

    add-int/lit8 v28, v12, 0x1

    aget-wide v12, v5, v12

    add-long v12, v12, v24

    add-long v20, v20, v12

    .line 250
    add-long v22, v22, v20

    .line 251
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcp;->a(J)J

    move-result-wide v24

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v19}, Lcp;->b(JJJ)J

    move-result-wide v12

    add-long v12, v12, v24

    add-long v12, v12, v20

    .line 254
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcp;->b(J)J

    move-result-wide v30

    move-object/from16 v21, p0

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    invoke-direct/range {v21 .. v27}, Lcp;->a(JJJ)J

    move-result-wide v20

    add-long v20, v20, v30

    sget-object v5, Lcp;->i:[J

    aget-wide v24, v5, v28

    add-long v20, v20, v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcp;->o:[J

    add-int/lit8 v26, v28, 0x1

    aget-wide v24, v5, v28

    add-long v20, v20, v24

    add-long v24, v10, v20

    .line 255
    add-long v20, v18, v24

    .line 256
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcp;->a(J)J

    move-result-wide v18

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcp;->b(JJJ)J

    move-result-wide v10

    add-long v10, v10, v18

    add-long v10, v10, v24

    .line 259
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcp;->b(J)J

    move-result-wide v28

    move-object/from16 v19, p0

    move-wide/from16 v24, v6

    invoke-direct/range {v19 .. v25}, Lcp;->a(JJJ)J

    move-result-wide v18

    add-long v18, v18, v28

    sget-object v5, Lcp;->i:[J

    aget-wide v24, v5, v26

    add-long v18, v18, v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcp;->o:[J

    add-int/lit8 v24, v26, 0x1

    aget-wide v26, v5, v26

    add-long v18, v18, v26

    add-long v26, v8, v18

    .line 260
    add-long v18, v16, v26

    .line 261
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcp;->a(J)J

    move-result-wide v16

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lcp;->b(JJJ)J

    move-result-wide v8

    add-long v8, v8, v16

    add-long v8, v8, v26

    .line 264
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcp;->b(J)J

    move-result-wide v26

    move-object/from16 v17, p0

    invoke-direct/range {v17 .. v23}, Lcp;->a(JJJ)J

    move-result-wide v16

    add-long v16, v16, v26

    sget-object v5, Lcp;->i:[J

    aget-wide v26, v5, v24

    add-long v16, v16, v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcp;->o:[J

    add-int/lit8 v25, v24, 0x1

    aget-wide v26, v5, v24

    add-long v16, v16, v26

    add-long v26, v6, v16

    .line 265
    add-long v16, v14, v26

    .line 266
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcp;->a(J)J

    move-result-wide v14

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcp;->b(JJJ)J

    move-result-wide v6

    add-long/2addr v6, v14

    add-long v6, v6, v26

    .line 269
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcp;->b(J)J

    move-result-wide v26

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v21}, Lcp;->a(JJJ)J

    move-result-wide v14

    add-long v14, v14, v26

    sget-object v5, Lcp;->i:[J

    aget-wide v26, v5, v25

    add-long v14, v14, v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcp;->o:[J

    add-int/lit8 v24, v25, 0x1

    aget-wide v26, v5, v25

    add-long v14, v14, v26

    add-long v22, v22, v14

    .line 270
    add-long v14, v12, v22

    .line 271
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcp;->a(J)J

    move-result-wide v12

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcp;->b(JJJ)J

    move-result-wide v26

    add-long v12, v12, v26

    add-long v22, v22, v12

    .line 274
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcp;->b(J)J

    move-result-wide v26

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v19}, Lcp;->a(JJJ)J

    move-result-wide v12

    add-long v12, v12, v26

    sget-object v5, Lcp;->i:[J

    aget-wide v26, v5, v24

    add-long v12, v12, v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcp;->o:[J

    add-int/lit8 v28, v24, 0x1

    aget-wide v24, v5, v24

    add-long v12, v12, v24

    add-long v30, v20, v12

    .line 275
    add-long v12, v10, v30

    .line 276
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcp;->a(J)J

    move-result-wide v10

    move-object/from16 v21, p0

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    invoke-direct/range {v21 .. v27}, Lcp;->b(JJJ)J

    move-result-wide v20

    add-long v10, v10, v20

    add-long v20, v30, v10

    .line 279
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcp;->b(J)J

    move-result-wide v24

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcp;->a(JJJ)J

    move-result-wide v10

    add-long v10, v10, v24

    sget-object v5, Lcp;->i:[J

    aget-wide v24, v5, v28

    add-long v10, v10, v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcp;->o:[J

    add-int/lit8 v26, v28, 0x1

    aget-wide v24, v5, v28

    add-long v10, v10, v24

    add-long v28, v18, v10

    .line 280
    add-long v10, v8, v28

    .line 281
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcp;->a(J)J

    move-result-wide v8

    move-object/from16 v19, p0

    move-wide/from16 v24, v6

    invoke-direct/range {v19 .. v25}, Lcp;->b(JJJ)J

    move-result-wide v18

    add-long v8, v8, v18

    add-long v18, v28, v8

    .line 284
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcp;->b(J)J

    move-result-wide v24

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lcp;->a(JJJ)J

    move-result-wide v8

    add-long v8, v8, v24

    sget-object v5, Lcp;->i:[J

    aget-wide v24, v5, v26

    add-long v8, v8, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcp;->o:[J

    move-object/from16 v24, v0

    add-int/lit8 v5, v26, 0x1

    aget-wide v24, v24, v26

    add-long v8, v8, v24

    add-long v8, v8, v16

    .line 285
    add-long/2addr v6, v8

    .line 286
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcp;->a(J)J

    move-result-wide v24

    move-object/from16 v17, p0

    invoke-direct/range {v17 .. v23}, Lcp;->b(JJJ)J

    move-result-wide v16

    add-long v16, v16, v24

    add-long v8, v8, v16

    .line 246
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v16, v18

    move-wide/from16 v18, v20

    move-wide/from16 v20, v14

    move-wide v14, v8

    move-wide v8, v10

    move-wide v10, v12

    move v12, v5

    goto/16 :goto_1

    .line 304
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcp;->o:[J

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v4

    .line 302
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2
.end method
