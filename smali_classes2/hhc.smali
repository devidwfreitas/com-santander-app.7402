.class public Lhhc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhhb;


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2


# instance fields
.field private c:Lhgw;

.field private d:Lhgc;

.field private e:Lmip;

.field private f:Lcom/santander/app/contacorrente/domain/Conta;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I
    .annotation build Lhfr;
    .end annotation
.end field

.field private j:I

.field private k:Lhfx;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhgw;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lhhc;->c:Lhgw;

    .line 50
    invoke-static {}, Lhgh;->f()Lhgh;

    move-result-object v0

    iput-object v0, p0, Lhhc;->d:Lhgc;

    .line 51
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lhhc;->e:Lmip;

    .line 52
    return-void
.end method

.method private a(Lhfx;)V
    .locals 2

    .prologue
    .line 248
    iput-object p1, p0, Lhhc;->k:Lhfx;

    .line 249
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {p1}, Lhfx;->b()Lhfz;

    move-result-object v1

    invoke-interface {v0, v1}, Lhgw;->a(Lhfz;)V

    .line 250
    invoke-direct {p0}, Lhhc;->q()V

    .line 251
    invoke-direct {p0}, Lhhc;->g()V

    .line 252
    invoke-direct {p0}, Lhhc;->h()V

    .line 253
    invoke-direct {p0}, Lhhc;->i()V

    .line 254
    invoke-direct {p0}, Lhhc;->j()V

    .line 255
    invoke-virtual {p0}, Lhhc;->d()V

    .line 256
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->c()V

    .line 257
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->r()V

    .line 258
    return-void
.end method

.method private a(Lhfy;)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->r()V

    .line 369
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0, p1}, Lhgw;->a(Lhfy;)V

    .line 370
    return-void
.end method

.method static synthetic a(Lhhc;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lhhc;->r()V

    return-void
.end method

.method static synthetic a(Lhhc;Lhfx;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lhhc;->a(Lhfx;)V

    return-void
.end method

.method static synthetic a(Lhhc;Lhfy;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lhhc;->a(Lhfy;)V

    return-void
.end method

.method private b(Lhfx;)V
    .locals 1

    .prologue
    .line 290
    iput-object p1, p0, Lhhc;->k:Lhfx;

    .line 291
    invoke-direct {p0}, Lhhc;->k()V

    .line 292
    invoke-virtual {p0}, Lhhc;->e()V

    .line 293
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->r()V

    .line 294
    return-void
.end method

.method static synthetic b(Lhhc;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lhhc;->t()V

    return-void
.end method

.method static synthetic b(Lhhc;Lhfx;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lhhc;->b(Lhfx;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Lhfk;
    .locals 6

    .prologue
    .line 382
    iget v0, p0, Lhhc;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lhhc;->f:Lcom/santander/app/contacorrente/domain/Conta;

    .line 384
    :goto_0
    new-instance v0, Lhfk;

    iget-object v2, p0, Lhhc;->k:Lhfx;

    iget-object v3, p0, Lhhc;->g:Ljava/lang/String;

    iget v4, p0, Lhhc;->i:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lhfk;-><init>(Lcom/santander/app/contacorrente/domain/Conta;Lhfx;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 382
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private c(Lhfx;)V
    .locals 1

    .prologue
    .line 318
    iput-object p1, p0, Lhhc;->k:Lhfx;

    .line 319
    invoke-direct {p0}, Lhhc;->k()V

    .line 320
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->r()V

    .line 321
    return-void
.end method

.method static synthetic c(Lhhc;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lhhc;->v()V

    return-void
.end method

.method static synthetic c(Lhhc;Lhfx;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lhhc;->c(Lhfx;)V

    return-void
.end method

.method private d(Lhfx;)V
    .locals 5

    .prologue
    .line 351
    iput-object p1, p0, Lhhc;->k:Lhfx;

    .line 352
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    .line 353
    :goto_0
    invoke-direct {p0, v0}, Lhhc;->c(Ljava/lang/String;)Lhfk;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lhhc;->d:Lhgc;

    iget-object v2, p0, Lhhc;->f:Lcom/santander/app/contacorrente/domain/Conta;

    iget v3, p0, Lhhc;->i:I

    new-instance v4, Lhhh;

    invoke-direct {v4, p0}, Lhhh;-><init>(Lhhc;)V

    invoke-interface {v1, v0, v2, v3, v4}, Lhgc;->a(Lhfk;Lcom/santander/app/contacorrente/domain/Conta;ILhgg;)V

    .line 365
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lhhc;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic d(Lhhc;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lhhc;->x()V

    return-void
.end method

.method static synthetic d(Lhhc;Lhfx;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lhhc;->d(Lhfx;)V

    return-void
.end method

.method static synthetic e(Lhhc;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lhhc;->y()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lhhc;->k:Lhfx;

    invoke-interface {v0}, Lhfx;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APENAS_PAGAMENTO_EM_BOLETO"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lhhc;->c:Lhgw;

    const v1, 0x7f09005d

    invoke-interface {v0, v1}, Lhgw;->a(I)V

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lhhc;->c:Lhgw;

    iget-object v1, p0, Lhhc;->k:Lhfx;

    invoke-interface {v1}, Lhfx;->e()I

    move-result v1

    invoke-interface {v0, v1}, Lhgw;->b(I)V

    .line 116
    iget-object v0, p0, Lhhc;->k:Lhfx;

    invoke-interface {v0}, Lhfx;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lhhc;->b(I)V

    .line 117
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lhhc;->k:Lhfx;

    invoke-interface {v0}, Lhfx;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APENAS_PAGAMENTO_EM_DEBITO"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lhhc;->c:Lhgw;

    const v1, 0x7f09005f

    invoke-interface {v0, v1}, Lhgw;->a(I)V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lhhc;->d:Lhgc;

    invoke-interface {v0}, Lhgc;->e()Ljava/util/List;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lhhc;->c:Lhgw;

    invoke-interface {v1, v0}, Lhgw;->a(Ljava/util/List;)V

    .line 122
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lhhc;->d:Lhgc;

    invoke-interface {v0}, Lhgc;->c()Ljava/util/List;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lhhc;->k:Lhfx;

    invoke-interface {v1}, Lhfx;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 127
    iget-object v2, p0, Lhhc;->c:Lhgw;

    invoke-interface {v2, v0, v1}, Lhgw;->a(Ljava/util/List;I)V

    .line 128
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lhhc;->d:Lhgc;

    invoke-interface {v0}, Lhgc;->d()Ljava/util/List;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lhhc;->k:Lhfx;

    invoke-interface {v1}, Lhfx;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 133
    iget-object v2, p0, Lhhc;->c:Lhgw;

    invoke-interface {v2, v0, v1}, Lhgw;->b(Ljava/util/List;I)V

    .line 135
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lhhc;->k:Lhfx;

    invoke-interface {v0}, Lhfx;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PAGAMENTO_A_VISTA_E_PARCELADO"

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lhhc;->c:Lhgw;

    iget-object v1, p0, Lhhc;->k:Lhfx;

    invoke-interface {v0, v1}, Lhgw;->c(Lhfx;)V

    .line 166
    invoke-direct {p0}, Lhhc;->l()V

    .line 174
    :cond_0
    :goto_0
    invoke-direct {p0}, Lhhc;->m()V

    .line 175
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lhhc;->k:Lhfx;

    invoke-interface {v0}, Lhfx;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APENAS_PAGAMENTO_A_VISTA"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lhhc;->c:Lhgw;

    iget-object v1, p0, Lhhc;->k:Lhfx;

    invoke-interface {v0, v1}, Lhgw;->b(Lhfx;)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lhhc;->k:Lhfx;

    invoke-interface {v0}, Lhfx;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APENAS_PAGAMENTO_PARCELADO"

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lhhc;->c:Lhgw;

    iget-object v1, p0, Lhhc;->k:Lhfx;

    invoke-interface {v0, v1}, Lhgw;->a(Lhfx;)V

    goto :goto_0
.end method

.method private l()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 181
    :try_start_0
    iget-object v1, p0, Lhhc;->k:Lhfx;

    invoke-interface {v1}, Lhfx;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhyx;->a(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 187
    :goto_0
    :try_start_1
    iget-object v2, p0, Lhhc;->k:Lhfx;

    invoke-interface {v2}, Lhfx;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhyx;->a(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 192
    :goto_1
    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 193
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->j()V

    .line 197
    :goto_2
    return-void

    .line 182
    :catch_0
    move-exception v1

    move v1, v0

    .line 183
    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->k()V

    goto :goto_2

    .line 188
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private m()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lhhc;->n()V

    .line 201
    invoke-direct {p0}, Lhhc;->o()V

    .line 202
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 206
    :try_start_0
    iget-object v0, p0, Lhhc;->k:Lhfx;

    invoke-interface {v0}, Lhfx;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhyx;->a(Ljava/lang/String;)F

    move-result v0

    .line 207
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->g()V

    .line 213
    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lhhc;->k:Lhfx;

    invoke-interface {v0}, Lhfx;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhyx;->a(Ljava/lang/String;)F

    move-result v0

    .line 218
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->h()V

    .line 224
    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->d()V

    .line 228
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->q()V

    .line 229
    iget-object v0, p0, Lhhc;->d:Lhgc;

    new-instance v1, Lhhd;

    invoke-direct {v1, p0}, Lhhd;-><init>(Lhhc;)V

    invoke-interface {v0, v1}, Lhgc;->a(Lhgf;)V

    .line 245
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lhhc;->k:Lhfx;

    invoke-interface {v0}, Lhfx;->o()I

    move-result v0

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lhhc;->c:Lhgw;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhgw;->d(I)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lhhc;->c:Lhgw;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lhgw;->d(I)V

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->r()V

    .line 270
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->s()V

    .line 271
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->q()V

    .line 275
    invoke-direct {p0}, Lhhc;->z()Lhfk;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lhhc;->d:Lhgc;

    new-instance v2, Lhhe;

    invoke-direct {v2, p0}, Lhhe;-><init>(Lhhc;)V

    invoke-interface {v1, v0, v2}, Lhgc;->a(Lhfk;Lhgd;)V

    .line 287
    return-void
.end method

.method private t()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->r()V

    .line 298
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->s()V

    .line 299
    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->q()V

    .line 303
    invoke-direct {p0}, Lhhc;->z()Lhfk;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lhhc;->d:Lhgc;

    new-instance v2, Lhhf;

    invoke-direct {v2, p0}, Lhhf;-><init>(Lhhc;)V

    invoke-interface {v1, v0, v2}, Lhgc;->a(Lhfk;Lhgd;)V

    .line 315
    return-void
.end method

.method private v()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->r()V

    .line 325
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->s()V

    .line 326
    return-void
.end method

.method private w()V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->q()V

    .line 330
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    .line 331
    :goto_0
    invoke-direct {p0, v0}, Lhhc;->c(Ljava/lang/String;)Lhfk;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lhhc;->d:Lhgc;

    new-instance v2, Lhhg;

    invoke-direct {v2, p0}, Lhhg;-><init>(Lhhc;)V

    invoke-interface {v1, v0, v2}, Lhgc;->a(Lhfk;Lhgd;)V

    .line 343
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lhhc;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method private x()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->r()V

    .line 347
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->s()V

    .line 348
    return-void
.end method

.method private y()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->r()V

    .line 374
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->s()V

    .line 375
    return-void
.end method

.method private z()Lhfk;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lhhc;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhhc;->c(Ljava/lang/String;)Lhfk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lhhc;->p()V

    .line 57
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lhhc;->e:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    iput-object v0, p0, Lhhc;->f:Lcom/santander/app/contacorrente/domain/Conta;

    .line 160
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iput-object p1, p0, Lhhc;->g:Ljava/lang/String;

    .line 141
    iget v0, p0, Lhhc;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 142
    invoke-direct {p0}, Lhhc;->u()V

    .line 145
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public b(I)V
    .locals 2
    .param p1    # I
        .annotation build Lhfr;
        .end annotation
    .end param

    .prologue
    .line 85
    iput p1, p0, Lhhc;->i:I

    .line 86
    iget v0, p0, Lhhc;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 87
    invoke-direct {p0}, Lhhc;->u()V

    .line 89
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iput-object p1, p0, Lhhc;->h:Ljava/lang/String;

    .line 151
    iget v0, p0, Lhhc;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 152
    invoke-direct {p0}, Lhhc;->u()V

    .line 155
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 66
    iget v1, p0, Lhhc;->j:I

    if-ne v1, v0, :cond_0

    .line 69
    :goto_0
    return v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lhhc;->d()V

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lhhc;->j:I

    .line 94
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->b()V

    .line 95
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->f()V

    .line 96
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->o()V

    .line 97
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lhhc;->j:I

    .line 102
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->a()V

    .line 103
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->e()V

    .line 104
    iget-object v0, p0, Lhhc;->c:Lhgw;

    invoke-interface {v0}, Lhgw;->p()V

    .line 105
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lhhc;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 75
    invoke-static {}, Lhhr;->b()V

    .line 76
    invoke-direct {p0}, Lhhc;->s()V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {}, Lhhr;->c()V

    .line 79
    invoke-direct {p0}, Lhhc;->w()V

    goto :goto_0
.end method
