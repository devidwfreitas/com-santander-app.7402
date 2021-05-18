.class public Lmir;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Lgwx;

.field private B:Z

.field private a:Ljava/lang/Boolean;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lmwx;

.field private j:Ljava/lang/String;

.field private k:Lkbt;

.field private l:Liow;

.field private m:Lgvx;

.field private n:Ljky;

.field private o:Lght;

.field private p:Lgke;

.field private q:Lhkr;

.field private r:Lkhx;

.field private s:Lmwy;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Lipi;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private E()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lmir;->n:Ljky;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljkz;

    invoke-direct {v0}, Ljkz;-><init>()V

    iput-object v0, p0, Lmir;->n:Ljky;

    .line 230
    :cond_0
    iget-object v0, p0, Lmir;->m:Lgvx;

    if-nez v0, :cond_1

    .line 231
    new-instance v0, Lgvy;

    iget-object v1, p0, Lmir;->l:Liow;

    invoke-direct {v0, v1}, Lgvy;-><init>(Liow;)V

    iput-object v0, p0, Lmir;->m:Lgvx;

    .line 234
    :cond_1
    iget-object v0, p0, Lmir;->o:Lght;

    if-nez v0, :cond_2

    .line 235
    new-instance v0, Lghs;

    invoke-direct {v0}, Lghs;-><init>()V

    iput-object v0, p0, Lmir;->o:Lght;

    .line 236
    new-instance v0, Lgkc;

    invoke-direct {v0}, Lgkc;-><init>()V

    iput-object v0, p0, Lmir;->p:Lgke;

    .line 239
    :cond_2
    iget-object v0, p0, Lmir;->q:Lhkr;

    if-nez v0, :cond_3

    .line 240
    new-instance v0, Lhkq;

    invoke-direct {v0}, Lhkq;-><init>()V

    iput-object v0, p0, Lmir;->q:Lhkr;

    .line 242
    :cond_3
    iget-object v0, p0, Lmir;->n:Ljky;

    iget-object v1, p0, Lmir;->m:Lgvx;

    invoke-interface {v1}, Lgvx;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljky;->a(Ljava/util/List;)V

    .line 243
    return-void
.end method

.method private F()V
    .locals 4

    .prologue
    .line 267
    new-instance v1, Lnaf;

    invoke-direct {v1}, Lnaf;-><init>()V

    .line 270
    :try_start_0
    iget-object v0, p0, Lmir;->l:Liow;

    iget-object v2, p0, Lmir;->l:Liow;

    invoke-virtual {v2}, Liow;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Liow;->b(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lmir;->l:Liow;

    iget-object v2, p0, Lmir;->l:Liow;

    invoke-virtual {v2}, Liow;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Liow;->c(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lmir;->l:Liow;

    iget-object v2, p0, Lmir;->l:Liow;

    invoke-virtual {v2}, Liow;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Liow;->d(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->d()Lmwx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->d()Lmwx;

    move-result-object v2

    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->d()Lmwx;

    move-result-object v0

    invoke-virtual {v0}, Lmwx;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->d()Lmwx;

    move-result-object v0

    invoke-virtual {v0}, Lmwx;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lmwx;->c(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->d()Lmwx;

    move-result-object v2

    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->d()Lmwx;

    move-result-object v0

    invoke-virtual {v0}, Lmwx;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->d()Lmwx;

    move-result-object v0

    invoke-virtual {v0}, Lmwx;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lmwx;->a(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->d()Lmwx;

    move-result-object v2

    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->d()Lmwx;

    move-result-object v0

    invoke-virtual {v0}, Lmwx;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->d()Lmwx;

    move-result-object v0

    invoke-virtual {v0}, Lmwx;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lmwx;->b(Ljava/lang/String;)V

    .line 282
    :cond_0
    :goto_3
    return-void

    .line 274
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 275
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 276
    :cond_3
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 279
    :catch_0
    move-exception v0

    .line 280
    const-string v1, "ERRO_CRYPTO"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private G()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmir;->c(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmir;->d(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0, v0}, Lmir;->e(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->d()Lmwx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmir;->a(Lmwx;)V

    .line 320
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->j()Lmwy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmir;->a(Lmwy;)V

    .line 321
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->j()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmir;->j(Ljava/lang/String;)V

    .line 323
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 327
    :try_start_0
    iget-object v1, p0, Lmir;->l:Liow;

    invoke-virtual {v1}, Liow;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmir;->l:Liow;

    invoke-virtual {v1}, Liow;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    iget-object v1, p0, Lmir;->l:Liow;

    invoke-virtual {v1}, Liow;->m()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmir;->a(Ljava/lang/String;)V

    .line 331
    :cond_0
    iget-object v1, p0, Lmir;->l:Liow;

    invoke-virtual {v1}, Liow;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmir;->l:Liow;

    invoke-virtual {v1}, Liow;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    iget-object v1, p0, Lmir;->l:Liow;

    invoke-virtual {v1}, Liow;->n()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmir;->b(Ljava/lang/String;)V

    .line 335
    :cond_1
    iget-object v1, p0, Lmir;->l:Liow;

    invoke-virtual {v1}, Liow;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmir;->l:Liow;

    invoke-virtual {v1}, Liow;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 336
    iget-object v1, p0, Lmir;->l:Liow;

    invoke-virtual {v1}, Liow;->o()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmir;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_2
    :goto_1
    return-void

    .line 318
    :cond_3
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->f()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    const-string v1, "ERRO_CRYPTO"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private H()V
    .locals 8

    .prologue
    .line 346
    new-instance v2, Lnaf;

    invoke-direct {v2}, Lnaf;-><init>()V

    .line 348
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 351
    :try_start_0
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioz;

    .line 354
    new-instance v5, Lghu;

    invoke-direct {v5}, Lghu;-><init>()V

    .line 355
    invoke-virtual {v0}, Lioz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->j(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Lioz;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->s(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Lioz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->e(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0}, Lioz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->h(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Lioz;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->i(Ljava/lang/String;)V

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Final "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lioz;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->b(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Lioz;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v0}, Lioz;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->t(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Lioz;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "PENDENTE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "16"

    :goto_1
    invoke-virtual {v5, v1}, Lghu;->q(Ljava/lang/String;)V

    .line 366
    :cond_0
    invoke-virtual {v0}, Lioz;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->l(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0}, Lioz;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->p(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0}, Lioz;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->B(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Lioz;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->o(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Lioz;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lioz;->i()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-direct {p0, v1}, Lmir;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioz;->i(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Lioz;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v6, 0x0

    cmpg-float v1, v1, v6

    if-gez v1, :cond_7

    .line 375
    const-string v1, "0"

    invoke-virtual {v5, v1}, Lghu;->c(Ljava/lang/String;)V

    .line 379
    :goto_3
    invoke-virtual {v0}, Lioz;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->x(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0}, Lioz;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->g(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0}, Lioz;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->a(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Lioz;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->d(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0}, Lioz;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->y(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Lioz;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v6, "UTF-8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->z(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0}, Lioz;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->A(Ljava/lang/String;)V

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lghu;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lghu;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->C(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v5}, Lghu;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "SANTANDER"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "CARTAO"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "INTERNACIONAL"

    const-string v7, "INTER."

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->D(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Lioz;->t()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 389
    invoke-virtual {v0}, Lioz;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lghu;->a(I)V

    .line 391
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    const-string v1, "ERRO_CRYPTO"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_2
    iget-object v0, p0, Lmir;->o:Lght;

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmir;->o:Lght;

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 399
    :cond_3
    iget-object v0, p0, Lmir;->o:Lght;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lght;->a(Ljava/util/List;)V

    .line 402
    :cond_4
    iget-object v0, p0, Lmir;->o:Lght;

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 403
    iget-object v0, p0, Lmir;->o:Lght;

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 404
    return-void

    .line 364
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 371
    :cond_6
    :try_start_1
    const-string v1, "0"

    goto/16 :goto_2

    .line 377
    :cond_7
    invoke-virtual {v0}, Lioz;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lghu;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private I()V
    .locals 5

    .prologue
    .line 417
    .line 418
    iget-object v0, p0, Lmir;->q:Lhkr;

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 419
    new-instance v0, Lhxo;

    invoke-direct {v0}, Lhxo;-><init>()V

    move-object v1, v0

    .line 424
    :goto_0
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhxo;->a(Ljava/lang/String;)V

    .line 428
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Lhxo;->a(Ljava/util/List;)V

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Lhxo;->b(Ljava/util/List;)V

    .line 432
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 435
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipl;

    .line 436
    new-instance v3, Lhxw;

    invoke-direct {v3}, Lhxw;-><init>()V

    .line 437
    invoke-virtual {v0}, Lipl;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxw;->k(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0}, Lipl;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxw;->j(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0}, Lipl;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxw;->m(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0}, Lipl;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxw;->h(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0}, Lipl;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxw;->l(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0}, Lipl;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxw;->b(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0}, Lipl;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxw;->f(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0}, Lipl;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxw;->n(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0}, Lipl;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxw;->q(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0}, Lipl;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxw;->s(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0}, Lipl;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxw;->e(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0}, Lipl;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxw;->c(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Lipl;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxw;->d(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0}, Lipl;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxw;->a(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0}, Lipl;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lhxw;->g(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v1}, Lhxo;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 421
    :cond_1
    iget-object v0, p0, Lmir;->q:Lhkr;

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 460
    :cond_2
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 462
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipe;

    .line 464
    new-instance v3, Lhxp;

    invoke-direct {v3}, Lhxp;-><init>()V

    .line 466
    invoke-virtual {v0}, Lipe;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxp;->b(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0}, Lipe;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxp;->d(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0}, Lipe;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxp;->e(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0}, Lipe;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxp;->f(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0}, Lipe;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxp;->g(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0}, Lipe;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxp;->h(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0}, Lipe;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxp;->i(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0}, Lipe;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxp;->j(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0}, Lipe;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxp;->l(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0}, Lipe;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxp;->m(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v0}, Lipe;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lhxp;->n(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0}, Lipe;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lhxp;->o(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v1}, Lhxo;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 484
    :cond_3
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->b()Liov;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 485
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->b()Liov;

    move-result-object v0

    .line 487
    new-instance v2, Lhxk;

    invoke-direct {v2}, Lhxk;-><init>()V

    .line 488
    invoke-virtual {v0}, Liov;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhxk;->a(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0}, Liov;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhxk;->b(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v0}, Liov;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhxk;->d(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0}, Liov;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhxk;->c(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v1, v2}, Lhxo;->a(Lhxk;)V

    .line 497
    :cond_4
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->c()Liov;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 498
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->c()Liov;

    move-result-object v0

    .line 500
    new-instance v2, Lhxk;

    invoke-direct {v2}, Lhxk;-><init>()V

    .line 501
    invoke-virtual {v0}, Liov;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhxk;->a(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0}, Liov;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhxk;->b(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0}, Liov;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhxk;->d(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0}, Liov;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhxk;->c(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v1, v2}, Lhxo;->b(Lhxk;)V

    .line 509
    :cond_5
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 510
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhxo;->b(Ljava/lang/String;)V

    .line 513
    :cond_6
    iget-object v0, p0, Lmir;->q:Lhkr;

    invoke-interface {v0, v1}, Lhkr;->a(Lhxo;)V

    .line 514
    return-void
.end method

.method private J()V
    .locals 2

    .prologue
    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 518
    iget-object v1, p0, Lmir;->l:Liow;

    invoke-virtual {v1}, Liow;->e()Liph;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmir;->l:Liow;

    .line 519
    invoke-virtual {v1}, Liow;->e()Liph;

    move-result-object v1

    invoke-virtual {v1}, Liph;->y()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 520
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->y()Ljava/util/List;

    move-result-object v0

    .line 522
    :cond_0
    new-instance v1, Lipn;

    invoke-direct {v1, v0}, Lipn;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lmir;->w:Lipi;

    .line 523
    return-void
.end method

.method private l(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 407
    const-string v0, "\\+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    :cond_0
    return-object v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lmir;->t:Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lmir;->v:Ljava/lang/String;

    return-object v0
.end method

.method public C()Lipi;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lmir;->w:Lipi;

    return-object v0
.end method

.method public D()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 628
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiq;->d(Z)V

    .line 630
    invoke-virtual {p0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0, v1}, Lmir;->a(Lmwx;)V

    .line 632
    invoke-virtual {p0, v1}, Lmir;->a(Liow;)V

    .line 633
    invoke-virtual {p0, v1}, Lmir;->a(Lgwx;)V

    .line 634
    invoke-virtual {p0, v2}, Lmir;->a(I)V

    .line 635
    invoke-virtual {p0, v3}, Lmir;->c(Z)V

    .line 636
    invoke-virtual {p0, v3}, Lmir;->b(Z)V

    .line 638
    invoke-virtual {p0}, Lmir;->r()Ljky;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p0}, Lmir;->r()Ljky;

    move-result-object v0

    invoke-interface {v0, v1}, Ljky;->a(Ljava/lang/String;)V

    .line 642
    :cond_0
    invoke-virtual {p0, v1}, Lmir;->a(Lmwy;)V

    .line 644
    iget-object v0, p0, Lmir;->o:Lght;

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lmir;->o:Lght;

    invoke-interface {v0, v1}, Lght;->a(Ljava/util/List;)V

    .line 646
    iput-object v1, p0, Lmir;->o:Lght;

    .line 649
    :cond_1
    iget-object v0, p0, Lmir;->m:Lgvx;

    if-eqz v0, :cond_2

    .line 650
    iget-object v0, p0, Lmir;->m:Lgvx;

    invoke-interface {v0, v1}, Lgvx;->a(Ljava/util/List;)V

    .line 651
    iput-object v1, p0, Lmir;->m:Lgvx;

    .line 654
    :cond_2
    iget-object v0, p0, Lmir;->q:Lhkr;

    if-eqz v0, :cond_3

    .line 655
    iget-object v0, p0, Lmir;->q:Lhkr;

    invoke-interface {v0, v1}, Lhkr;->a(Lhxo;)V

    .line 656
    iput-object v1, p0, Lmir;->q:Lhkr;

    .line 659
    :cond_3
    iget-object v0, p0, Lmir;->n:Ljky;

    if-eqz v0, :cond_4

    .line 660
    iget-object v0, p0, Lmir;->n:Ljky;

    invoke-interface {v0, v1}, Ljky;->a(Ljava/util/List;)V

    .line 661
    iput-object v1, p0, Lmir;->n:Ljky;

    .line 664
    :cond_4
    iput-object v1, p0, Lmir;->w:Lipi;

    .line 665
    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmir;->x:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 604
    iput p1, p0, Lmir;->u:I

    .line 605
    return-void
.end method

.method public a(Lgwx;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lmir;->A:Lgwx;

    .line 581
    return-void
.end method

.method public a(Liow;)V
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmir;->b:Z

    .line 213
    iput-object p1, p0, Lmir;->l:Liow;

    .line 214
    if-eqz p1, :cond_0

    const-string v0, "0"

    iget-object v1, p0, Lmir;->l:Liow;

    invoke-virtual {v1}, Liow;->getCodErro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lmir;->E()V

    .line 217
    invoke-direct {p0}, Lmir;->F()V

    .line 218
    invoke-direct {p0}, Lmir;->G()V

    .line 219
    invoke-direct {p0}, Lmir;->H()V

    .line 220
    invoke-direct {p0}, Lmir;->I()V

    .line 221
    invoke-direct {p0}, Lmir;->J()V

    .line 222
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->getTokenTransacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmir;->i(Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method

.method public a(Liph;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 527
    invoke-virtual {p1}, Liph;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {p1}, Liph;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Liph;->b(Ljava/util/List;)V

    .line 531
    :cond_0
    invoke-virtual {p1}, Liph;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {p1}, Liph;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Liph;->a(Ljava/util/List;)V

    .line 535
    :cond_1
    invoke-virtual {p1}, Liph;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {p1}, Liph;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liph;->c(Ljava/lang/String;)V

    .line 538
    :cond_2
    invoke-virtual {p1}, Liph;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 539
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {p1}, Liph;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liph;->b(Ljava/lang/String;)V

    .line 542
    :cond_3
    invoke-virtual {p1}, Liph;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 543
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {p1}, Liph;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liph;->d(Ljava/lang/String;)V

    .line 548
    :goto_0
    invoke-virtual {p1}, Liph;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Liph;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 549
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {p1}, Liph;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Liph;->c(Ljava/util/List;)V

    .line 554
    :goto_1
    invoke-virtual {p1}, Liph;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Liph;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 555
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {p1}, Liph;->j()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Liph;->d(Ljava/util/List;)V

    .line 560
    :goto_2
    invoke-virtual {p1}, Liph;->y()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Liph;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 561
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {p1}, Liph;->y()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Liph;->e(Ljava/util/List;)V

    .line 564
    :cond_4
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 565
    iget-object v0, p0, Lmir;->m:Lgvx;

    iget-object v1, p0, Lmir;->l:Liow;

    invoke-virtual {v1}, Liow;->e()Liph;

    move-result-object v1

    invoke-interface {v0, v1}, Lgvx;->a(Liph;)V

    .line 566
    invoke-direct {p0}, Lmir;->H()V

    .line 567
    invoke-direct {p0}, Lmir;->I()V

    .line 568
    invoke-direct {p0}, Lmir;->J()V

    .line 571
    :cond_5
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0, v2}, Liph;->a(Ljava/util/List;)V

    .line 573
    return-void

    .line 545
    :cond_6
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0, v2}, Liph;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 551
    :cond_7
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0, v2}, Liph;->c(Ljava/util/List;)V

    goto :goto_1

    .line 557
    :cond_8
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0, v2}, Liph;->d(Ljava/util/List;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lmir;->a:Ljava/lang/Boolean;

    .line 125
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lmir;->x:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public a(Lkbt;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lmir;->k:Lkbt;

    .line 205
    return-void
.end method

.method public a(Lkhx;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lmir;->r:Lkhx;

    .line 105
    return-void
.end method

.method public a(Lmwx;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lmir;->i:Lmwx;

    .line 181
    return-void
.end method

.method public a(Lmwy;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lmir;->s:Lmwy;

    .line 597
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lmir;->B:Z

    .line 117
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmir;->y:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lmir;->y:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 196
    iput-boolean p1, p0, Lmir;->z:Z

    .line 197
    return-void
.end method

.method public c()Lkhx;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmir;->r:Lkhx;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lmir;->c:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 588
    iput-boolean p1, p0, Lmir;->b:Z

    .line 589
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lmir;->d:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lmir;->B:Z

    return v0
.end method

.method public e()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lmir;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lmir;->e:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lmir;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lmir;->f:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lmir;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lmir;->g:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lmir;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lmir;->h:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lmir;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lmir;->j:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lmir;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lmir;->t:Ljava/lang/String;

    .line 613
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lmir;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lmir;->v:Ljava/lang/String;

    .line 621
    return-void
.end method

.method public l()Lmwx;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lmir;->i:Lmwx;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lmir;->j:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lmir;->z:Z

    return v0
.end method

.method public o()Lkbt;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lmir;->k:Lkbt;

    return-object v0
.end method

.method public p()Liow;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lmir;->l:Liow;

    return-object v0
.end method

.method public q()Lgvx;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lmir;->m:Lgvx;

    return-object v0
.end method

.method public r()Ljky;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lmir;->n:Ljky;

    return-object v0
.end method

.method public s()Lght;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lmir;->o:Lght;

    return-object v0
.end method

.method public t()Lgke;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lmir;->p:Lgke;

    return-object v0
.end method

.method public u()Lhkr;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lmir;->q:Lhkr;

    return-object v0
.end method

.method public v()V
    .locals 5

    .prologue
    .line 286
    iget-object v0, p0, Lmir;->l:Liow;

    invoke-virtual {v0}, Liow;->g()Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lmir;->l:Liow;

    invoke-virtual {v1}, Liow;->h()Ljava/lang/String;

    move-result-object v1

    .line 290
    const-string v2, "UN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "JP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    :cond_0
    const-string v2, "VG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    const-string v0, "VGUN"

    .line 299
    :cond_1
    :goto_0
    const-string v2, "PR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 303
    :cond_2
    invoke-virtual {p0, v0}, Lmir;->f(Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v2

    const-string v3, "novidadesSegmentada"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 306
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "segPrimario"

    .line 307
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "segSecundario"

    .line 308
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 309
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 311
    const-string v2, "Segmento Primario"

    invoke-static {v2, v0}, Lfrq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "Segmento Secundario"

    invoke-static {v0, v1}, Lfrq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void

    .line 293
    :cond_3
    const-string v2, "CL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    const-string v0, "UN"

    goto :goto_0
.end method

.method public w()Lgwx;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lmir;->A:Lgwx;

    return-object v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lmir;->b:Z

    return v0
.end method

.method public y()Lmwy;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lmir;->s:Lmwy;

    return-object v0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lmir;->u:I

    return v0
.end method
