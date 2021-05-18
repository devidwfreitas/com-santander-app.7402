.class public Lmmv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmmt;


# static fields
.field private static final a:Ljava/lang/String; = "TED"

.field private static final b:Ljava/lang/String; = "DOC"

.field private static final c:Ljava/lang/String; = "TEF"


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Lmmu;

.field private f:Lmqn;

.field private g:Lmip;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmmu;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lmmv;->d:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lmmv;->e:Lmmu;

    .line 61
    new-instance v0, Lmqn;

    iget-object v1, p0, Lmmv;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmqn;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lmmv;->f:Lmqn;

    .line 62
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lmmv;->g:Lmip;

    .line 63
    return-void
.end method

.method static synthetic a(Lmmv;)Lmmu;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmmv;->e:Lmmu;

    return-object v0
.end method

.method static synthetic b(Lmmv;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmmv;->d:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Lmlo;)Liq;
    .locals 14

    .prologue
    .line 189
    invoke-static {}, Lmwz;->a()Ljava/lang/String;

    move-result-object v12

    const-string v10, ""

    const-string v11, ""

    .line 190
    new-instance v13, Lmln;

    invoke-direct {v13}, Lmln;-><init>()V

    .line 192
    invoke-virtual {p1}, Lmlo;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lmlo;->o()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v13, v0}, Lmln;->a(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Lmlo;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lmln;->b(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lmmv;->g:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-virtual {p1}, Lmlo;->a()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmlo;->a()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgvx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lmln;->a(Ljava/lang/Integer;)V

    .line 196
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 197
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v0

    invoke-virtual {v0}, Lmld;->l()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Lmln;->b(Ljava/lang/Integer;)V

    .line 198
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lmln;->a(Lmlg;)V

    .line 199
    const-string v0, "N"

    invoke-virtual {v13, v0}, Lmln;->c(Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lmln;->a(Z)V

    .line 220
    :goto_1
    invoke-virtual {p1}, Lmlo;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "01"

    :goto_2
    invoke-virtual {v13, v0}, Lmln;->d(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Lmlo;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lmlo;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    invoke-virtual {p1}, Lmlo;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v13, v0}, Lmln;->e(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Lmlo;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lmlo;->j()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v13, v0}, Lmln;->f(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lmlo;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lmlo;->k()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v13, v0}, Lmln;->g(Ljava/lang/String;)V

    .line 226
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    invoke-virtual {v13, v12}, Lmln;->h(Ljava/lang/String;)V

    .line 229
    :cond_1
    new-instance v0, Lmzk;

    iget-object v1, p0, Lmmv;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmzk;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lmzk;->a()Lmzl;

    move-result-object v0

    invoke-virtual {v13, v0}, Lmln;->a(Lmzl;)V

    .line 232
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lmys;->b()Lejm;

    move-result-object v1

    invoke-virtual {v1, v13}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 239
    :goto_6
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_7
    packed-switch v1, :pswitch_data_0

    move-object v1, v11

    .line 251
    :goto_8
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v2

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v0, v4}, Lgnz;->a(Ljava/lang/String;Lim;Ljava/lang/String;Z)Liq;

    move-result-object v0

    return-object v0

    .line 192
    :cond_3
    const-string v0, ""

    goto/16 :goto_0

    .line 202
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lmln;->b(Ljava/lang/Integer;)V

    .line 203
    new-instance v0, Lmlg;

    new-instance v1, Lmkr;

    .line 205
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v2

    invoke-virtual {v2}, Lmkw;->c()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v3

    invoke-virtual {v3}, Lmkw;->l()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v4

    invoke-virtual {v4}, Lmkw;->n()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmkr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v2

    invoke-virtual {v2}, Lmkw;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v4

    invoke-virtual {v4}, Lmkw;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v4

    invoke-virtual {v4}, Lmkw;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 211
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v5

    invoke-virtual {v5}, Lmkw;->h()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v6

    invoke-virtual {v6}, Lmkw;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v7

    invoke-virtual {v7}, Lmkw;->g()Ljava/lang/String;

    move-result-object v7

    .line 214
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v8

    invoke-virtual {v8}, Lmkw;->f()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xc

    if-ge v8, v9, :cond_5

    const-string v8, "1"

    .line 215
    :goto_9
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v9

    invoke-virtual {v9}, Lmkw;->k()Z

    move-result v9

    invoke-direct/range {v0 .. v9}, Lmlg;-><init>(Lmkr;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 203
    invoke-virtual {v13, v0}, Lmln;->a(Lmlg;)V

    .line 216
    const-string v0, "N"

    invoke-virtual {v13, v0}, Lmln;->c(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v0

    invoke-virtual {v0}, Lmkw;->k()Z

    move-result v0

    invoke-virtual {v13, v0}, Lmln;->a(Z)V

    goto/16 :goto_1

    .line 214
    :cond_5
    const-string v8, "2"

    goto :goto_9

    .line 220
    :cond_6
    const-string v0, "11"

    goto/16 :goto_2

    .line 222
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 223
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 224
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 235
    :catch_0
    move-exception v0

    move-object v0, v10

    goto/16 :goto_6

    .line 239
    :sswitch_0
    const-string v3, "TED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto/16 :goto_7

    :sswitch_1
    const-string v3, "DOC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto/16 :goto_7

    :sswitch_2
    const-string v3, "TEF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto/16 :goto_7

    .line 241
    :pswitch_0
    const-string v1, "transfer/v1/ted/check"

    goto/16 :goto_8

    .line 244
    :pswitch_1
    const-string v1, "transfer/v1/doc/check"

    goto/16 :goto_8

    .line 247
    :pswitch_2
    const-string v1, "transfer/v1/santander/check"

    goto/16 :goto_8

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x10918 -> :sswitch_1
        0x143f3 -> :sswitch_0
        0x143f5 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Lcom/santander/app/contacorrente/domain/Conta;)Lmky;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lmky;

    invoke-direct {v0}, Lmky;-><init>()V

    .line 123
    iget-object v1, p0, Lmmv;->g:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmky;->setConnUuid(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lmmv;->g:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmky;->setTokenSessao(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lmmv;->g:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmky;->setTokenTransacao(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmky;->b(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmky;->a(Ljava/lang/String;)V

    .line 128
    const-string v1, "0033"

    invoke-virtual {v0, v1}, Lmky;->c(Ljava/lang/String;)V

    .line 130
    return-object v0
.end method

.method private c(Lmlo;)Lmlq;
    .locals 4

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x4

    .line 256
    new-instance v0, Lmlq;

    invoke-direct {v0}, Lmlq;-><init>()V

    .line 257
    iget-object v1, p0, Lmmv;->g:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->setConnUuid(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lmmv;->g:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->setTokenSessao(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lmmv;->g:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->setTokenTransacao(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->q(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Lmlo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->r(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Lmlo;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmlq;->b(Z)V

    .line 265
    invoke-virtual {p1}, Lmlo;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    invoke-virtual {p1}, Lmlo;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmlq;->a(Z)V

    .line 267
    invoke-virtual {p1}, Lmlo;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->h(Ljava/lang/String;)V

    .line 272
    :goto_0
    invoke-virtual {p1}, Lmlo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->p(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1}, Lmlo;->a()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->f(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lmlo;->a()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->b(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, p1}, Lmmv;->d(Lmlo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->o(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Lmlo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->p(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 282
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v1

    invoke-virtual {v1}, Lmld;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->c(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v1

    invoke-virtual {v1}, Lmld;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->a(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v1

    invoke-virtual {v1}, Lmld;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->e(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v1

    invoke-virtual {v1}, Lmld;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->g(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v1

    invoke-virtual {v1}, Lmld;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->k(Ljava/lang/String;)V

    .line 306
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lmlo;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    invoke-virtual {p1}, Lmlo;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->h(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Lmlo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->m(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1}, Lmlo;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->n(Ljava/lang/String;)V

    .line 312
    :cond_1
    return-object v0

    .line 269
    :cond_2
    invoke-virtual {p1}, Lmlo;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmlq;->a(Z)V

    goto/16 :goto_0

    .line 294
    :cond_3
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v1

    invoke-virtual {v1}, Lmkw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->c(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v1

    invoke-virtual {v1}, Lmkw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->a(Ljava/lang/String;)V

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v2

    invoke-virtual {v2}, Lmkw;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v2

    invoke-virtual {v2}, Lmkw;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->e(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v1

    invoke-virtual {v1}, Lmkw;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->g(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v1

    invoke-virtual {v1}, Lmkw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->k(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private d(Lmlo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    const-string v0, "01"

    invoke-virtual {p1}, Lmlo;->a()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getTipoConta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CC"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "CCC"

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    const-string v1, "00000122"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    iget-object v0, p0, Lmmv;->f:Lmqn;

    new-instance v1, Lmmw;

    invoke-direct {v1, p0}, Lmmw;-><init>(Lmmv;)V

    .line 86
    invoke-direct {p0, p1}, Lmmv;->b(Lcom/santander/app/contacorrente/domain/Conta;)Lmky;

    move-result-object v2

    .line 69
    invoke-virtual {v0, v1, v2}, Lmqn;->a(Lgkw;Lmky;)V

    .line 117
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lmmv;->f:Lmqn;

    new-instance v1, Lmmx;

    invoke-direct {v1, p0}, Lmmx;-><init>(Lmmv;)V

    invoke-virtual {v0, v1}, Lmqn;->a(Lgkw;)V

    goto :goto_0
.end method

.method public a(Lmlo;)V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    const-string v1, "00000122"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    iget-object v0, p0, Lmmv;->f:Lmqn;

    new-instance v1, Lmmy;

    invoke-direct {v1, p0}, Lmmy;-><init>(Lmmv;)V

    .line 147
    invoke-direct {p0, p1}, Lmmv;->c(Lmlo;)Lmlq;

    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Lmqn;->a(Lgkw;Lmlq;)V

    .line 185
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lmmv;->f:Lmqn;

    new-instance v1, Lmmz;

    invoke-direct {v1, p0, p1}, Lmmz;-><init>(Lmmv;Lmlo;)V

    .line 183
    invoke-direct {p0, p1}, Lmmv;->b(Lmlo;)Liq;

    move-result-object v2

    .line 149
    invoke-virtual {v0, v1, v2}, Lmqn;->a(Lgkw;Liq;)V

    goto :goto_0
.end method
