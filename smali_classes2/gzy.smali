.class public Lgzy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lgkw;

.field private b:Lmip;


# direct methods
.method public constructor <init>(Lgkw;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lgzy;->a:Lgkw;

    .line 39
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lgzy;->b:Lmip;

    .line 40
    return-void
.end method

.method static synthetic a(Lgzy;)Lgkw;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lgzy;->a:Lgkw;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 209
    new-instance v0, Lnay;

    invoke-direct {v0}, Lnay;-><init>()V

    .line 210
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnay;->setConnUuid(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnay;->setTokenSessao(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnay;->setTokenTransacao(Ljava/lang/String;)V

    .line 214
    new-instance v1, Lneo;

    new-instance v2, Lhaa;

    invoke-direct {v2, p0}, Lhaa;-><init>(Lgzy;)V

    invoke-direct {v1, v2}, Lneo;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lnay;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 219
    invoke-virtual {v1, v2}, Lneo;->c([Ljava/lang/Object;)Lgne;

    .line 220
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lgzv;

    invoke-direct {v0}, Lgzv;-><init>()V

    .line 44
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzv;->setConnUuid(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzv;->setTokenSessao(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzv;->setTokenTransacao(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, p1}, Lgzv;->a(Ljava/lang/String;)V

    .line 48
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->b(Ljava/lang/String;)V

    .line 49
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->c(Ljava/lang/String;)V

    .line 50
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->d(Ljava/lang/String;)V

    .line 51
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->e(Ljava/lang/String;)V

    .line 53
    new-instance v1, Lhap;

    new-instance v2, Lgzz;

    invoke-direct {v2, p0}, Lgzz;-><init>(Lgzy;)V

    invoke-direct {v1, v2}, Lhap;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lgzv;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 58
    invoke-virtual {v1, v2}, Lhap;->c([Ljava/lang/Object;)Lgne;

    .line 59
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 134
    new-instance v1, Lgzv;

    invoke-direct {v1}, Lgzv;-><init>()V

    .line 135
    iget-object v0, p0, Lgzy;->b:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgzv;->setConnUuid(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lgzy;->b:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgzv;->setTokenSessao(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lgzy;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgzv;->setTokenTransacao(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1, p1}, Lgzv;->a(Ljava/lang/String;)V

    .line 140
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 142
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgzv;->b(Ljava/lang/String;)V

    .line 143
    const-string v2, "UTF-8"

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgzv;->c(Ljava/lang/String;)V

    .line 144
    const-string v2, "UTF-8"

    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgzv;->d(Ljava/lang/String;)V

    .line 145
    const-string v2, "UTF-8"

    invoke-virtual {p5, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgzv;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    new-instance v0, Lhal;

    new-instance v2, Lhaf;

    invoke-direct {v2, p0}, Lhaf;-><init>(Lgzy;)V

    invoke-direct {v0, v2}, Lhal;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lgzv;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 155
    invoke-virtual {v0, v2}, Lhal;->c([Ljava/lang/Object;)Lgne;

    .line 156
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v2, "ERRO_CRYPTO"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lgzv;

    invoke-direct {v0}, Lgzv;-><init>()V

    .line 63
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzv;->setConnUuid(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzv;->setTokenSessao(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzv;->setTokenTransacao(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, p1}, Lgzv;->a(Ljava/lang/String;)V

    .line 67
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->b(Ljava/lang/String;)V

    .line 68
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->c(Ljava/lang/String;)V

    .line 69
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->d(Ljava/lang/String;)V

    .line 70
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->e(Ljava/lang/String;)V

    .line 72
    new-instance v1, Lhaq;

    new-instance v2, Lhab;

    invoke-direct {v2, p0}, Lhab;-><init>(Lgzy;)V

    invoke-direct {v1, v2}, Lhaq;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lgzv;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 77
    invoke-virtual {v1, v2}, Lhaq;->c([Ljava/lang/Object;)Lgne;

    .line 78
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Lgzq;

    invoke-direct {v0}, Lgzq;-><init>()V

    .line 82
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzq;->setConnUuid(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzq;->setTokenSessao(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzq;->setTokenTransacao(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p1}, Lgzq;->a(Ljava/lang/String;)V

    .line 87
    new-instance v1, Lhak;

    new-instance v2, Lhac;

    invoke-direct {v2, p0}, Lhac;-><init>(Lgzy;)V

    invoke-direct {v1, v2}, Lhak;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lgzq;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 92
    invoke-virtual {v1, v2}, Lhak;->c([Ljava/lang/Object;)Lgne;

    .line 93
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 96
    new-instance v0, Lgzv;

    invoke-direct {v0}, Lgzv;-><init>()V

    .line 97
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzv;->setConnUuid(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzv;->setTokenSessao(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzv;->setTokenTransacao(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, p1}, Lgzv;->a(Ljava/lang/String;)V

    .line 101
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->b(Ljava/lang/String;)V

    .line 102
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->c(Ljava/lang/String;)V

    .line 103
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->d(Ljava/lang/String;)V

    .line 104
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->e(Ljava/lang/String;)V

    .line 106
    new-instance v1, Lhan;

    new-instance v2, Lhad;

    invoke-direct {v2, p0}, Lhad;-><init>(Lgzy;)V

    invoke-direct {v1, v2}, Lhan;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lgzv;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 111
    invoke-virtual {v1, v2}, Lhan;->c([Ljava/lang/Object;)Lgne;

    .line 112
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 115
    new-instance v0, Lgzv;

    invoke-direct {v0}, Lgzv;-><init>()V

    .line 116
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzv;->setConnUuid(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzv;->setTokenSessao(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzv;->setTokenTransacao(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p1}, Lgzv;->a(Ljava/lang/String;)V

    .line 120
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->b(Ljava/lang/String;)V

    .line 121
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->c(Ljava/lang/String;)V

    .line 122
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->d(Ljava/lang/String;)V

    .line 123
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->e(Ljava/lang/String;)V

    .line 125
    new-instance v1, Lhao;

    new-instance v2, Lhae;

    invoke-direct {v2, p0}, Lhae;-><init>(Lgzy;)V

    invoke-direct {v1, v2}, Lhao;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lgzv;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 130
    invoke-virtual {v1, v2}, Lhao;->c([Ljava/lang/Object;)Lgne;

    .line 131
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 159
    new-instance v0, Lgzv;

    invoke-direct {v0}, Lgzv;-><init>()V

    .line 160
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzv;->setConnUuid(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzv;->setTokenSessao(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzv;->setTokenTransacao(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p1}, Lgzv;->a(Ljava/lang/String;)V

    .line 164
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->b(Ljava/lang/String;)V

    .line 165
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->c(Ljava/lang/String;)V

    .line 166
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->d(Ljava/lang/String;)V

    .line 167
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgzv;->e(Ljava/lang/String;)V

    .line 169
    new-instance v1, Lham;

    new-instance v2, Lhag;

    invoke-direct {v2, p0}, Lhag;-><init>(Lgzy;)V

    invoke-direct {v1, v2}, Lham;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lgzv;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 174
    invoke-virtual {v1, v2}, Lham;->c([Ljava/lang/Object;)Lgne;

    .line 175
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 178
    new-instance v0, Lgzq;

    invoke-direct {v0}, Lgzq;-><init>()V

    .line 179
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzq;->setConnUuid(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzq;->setTokenSessao(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzq;->setTokenTransacao(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p1}, Lgzq;->a(Ljava/lang/String;)V

    .line 184
    new-instance v1, Lhaj;

    new-instance v2, Lhah;

    invoke-direct {v2, p0}, Lhah;-><init>(Lgzy;)V

    invoke-direct {v1, v2}, Lhaj;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lgzq;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 189
    invoke-virtual {v1, v2}, Lhaj;->c([Ljava/lang/Object;)Lgne;

    .line 190
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 193
    new-instance v0, Lgzx;

    invoke-direct {v0}, Lgzx;-><init>()V

    .line 194
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzx;->setConnUuid(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzx;->setTokenSessao(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lgzy;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzx;->setTokenTransacao(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, p1}, Lgzx;->a(Ljava/lang/String;)V

    .line 199
    new-instance v1, Lhar;

    new-instance v2, Lhai;

    invoke-direct {v2, p0}, Lhai;-><init>(Lgzy;)V

    invoke-direct {v1, v2}, Lhar;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lgzx;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 204
    invoke-virtual {v1, v2}, Lhar;->c([Ljava/lang/Object;)Lgne;

    .line 206
    return-void
.end method
