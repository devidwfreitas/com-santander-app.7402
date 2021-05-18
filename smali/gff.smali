.class public Lgff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "netMarketValue"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "grossMarketValue"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "type"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "security"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalCost"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "result"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "availableAmount"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Leks;
        a = "blockedAmount"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Leks;
        a = "brokerAverageCost"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Leks;
        a = "sharePrice"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Leks;
        a = "financial"
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Leks;
        a = "marketyValue"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Leks;
        a = "amount"
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation runtime Leks;
        a = "price"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Leks;
        a = "dealDate"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Leks;
        a = "maturityDate"
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Leks;
        a = "payment"
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation runtime Leks;
        a = "grossRemuneration"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Leks;
        a = "incomeTaxAccrued"
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation runtime Leks;
        a = "netPay"
    .end annotation
.end field

.field private final u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const-string v0, "R$ 0,00"

    iput-object v0, p0, Lgff;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lger;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgff;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lgff;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lgff;",
            ">;)",
            "Lger;"
        }
    .end annotation

    .prologue
    .line 283
    const/4 v3, 0x1

    .line 284
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 285
    new-instance v4, Lger;

    invoke-direct {v4}, Lger;-><init>()V

    .line 286
    const-string v1, "R$ 00000"

    invoke-virtual {v4, v1}, Lger;->a(Ljava/lang/String;)V

    .line 287
    const-string v1, "R$ 00000"

    invoke-virtual {v4, v1}, Lger;->b(Ljava/lang/String;)V

    .line 289
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 291
    new-instance v6, Lgev;

    invoke-direct {v6}, Lgev;-><init>()V

    .line 292
    const-string v1, "A\u00e7\u00f5es"

    invoke-virtual {v6, v1}, Lgev;->a(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lgff;->v:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lgev;->b(Ljava/lang/String;)V

    .line 294
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lgev;->c(Z)V

    .line 296
    if-eqz p1, :cond_1

    .line 297
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, v0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgff;

    .line 298
    new-instance v8, Lgex;

    invoke-direct {v8}, Lgex;-><init>()V

    .line 300
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    new-instance v9, Lgev;

    invoke-virtual {v0}, Lgff;->d()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const/4 v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v9, Lgev;

    const-string v10, "Saldo aplicado"

    invoke-virtual {v0}, Lgff;->e()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v9, Lgev;

    const-string v10, "Valor de mercado bruto"

    invoke-virtual {v0}, Lgff;->b()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v9, Lgev;

    const-string v10, "Resultado"

    invoke-virtual {v0}, Lgff;->f()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance v9, Lgev;

    const-string v10, "Qtde. cotas"

    invoke-virtual {v0}, Lgff;->g()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v9, Lgev;

    const-string v10, "Qtde. bloqueadas"

    invoke-virtual {v0}, Lgff;->h()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v9, Lgev;

    const-string v10, "Custo m\u00e9dio c/ corretagem"

    invoke-virtual {v0}, Lgff;->i()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v9, Lgev;

    const-string v10, "Cota\u00e7\u00e3o"

    invoke-virtual {v0}, Lgff;->j()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v8, v2}, Lgex;->a(Ljava/util/List;)V

    .line 312
    const/4 v2, 0x0

    .line 314
    :try_start_0
    invoke-virtual {v0}, Lgff;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 318
    :goto_1
    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 320
    invoke-virtual {v6}, Lgev;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 321
    goto/16 :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    const-string v9, "Error"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_1

    .line 322
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgev;->d(Ljava/lang/String;)V

    .line 325
    :cond_1
    new-instance v7, Lgev;

    invoke-direct {v7}, Lgev;-><init>()V

    .line 326
    const-string v0, "Emprestimos de A\u00e7\u00f5es"

    invoke-virtual {v7, v0}, Lgev;->a(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lgff;->w:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lgev;->b(Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lgev;->c(Z)V

    .line 329
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 331
    if-eqz p2, :cond_4

    .line 332
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v1, v0

    move v2, v3

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgff;

    .line 333
    new-instance v9, Lgex;

    invoke-direct {v9}, Lgex;-><init>()V

    .line 334
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 336
    if-eqz v2, :cond_2

    .line 337
    new-instance v2, Lgev;

    const-string v10, "OPERA\u00c7\u00d5ES TOMADORAS"

    const-string v11, ""

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-direct {v2, v10, v11, v12, v13}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lgex;->a(Z)V

    .line 339
    const/4 v2, 0x0

    .line 342
    :cond_2
    new-instance v10, Lgev;

    invoke-virtual {v0}, Lgff;->d()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v10, Lgev;

    const-string v11, "Financeiro"

    invoke-virtual {v0}, Lgff;->k()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v10, Lgev;

    const-string v11, "Valor de mercado"

    invoke-virtual {v0}, Lgff;->l()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v10, Lgev;

    const-string v11, "Qtde. cotas"

    invoke-virtual {v0}, Lgff;->m()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v10, Lgev;

    const-string v11, "Pre\u00e7o"

    invoke-virtual {v0}, Lgff;->n()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v10, Lgev;

    const-string v11, "Data opera\u00e7\u00e3o"

    invoke-virtual {v0}, Lgff;->o()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v10, Lgev;

    const-string v11, "Vencimento"

    invoke-virtual {v0}, Lgff;->p()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v10, Lgev;

    const-string v11, "% Remunera\u00e7\u00e3o"

    invoke-virtual {v0}, Lgff;->q()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance v10, Lgev;

    const-string v11, "Remunera\u00e7\u00e3o"

    invoke-virtual {v0}, Lgff;->r()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v10, Lgev;

    const-string v11, "Taxas"

    invoke-virtual {v0}, Lgff;->s()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v10, Lgev;

    const-string v11, "Total remunera\u00e7\u00e3o"

    invoke-virtual {v0}, Lgff;->t()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual {v9, v3}, Lgex;->a(Ljava/util/List;)V

    .line 357
    const/4 v3, 0x0

    .line 359
    :try_start_1
    invoke-virtual {v0}, Lgff;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 363
    :goto_3
    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 365
    invoke-virtual {v7}, Lgev;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 366
    goto/16 :goto_2

    .line 360
    :catch_1
    move-exception v0

    .line 361
    const-string v10, "Error"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_3

    .line 367
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lgev;->d(Ljava/lang/String;)V

    .line 369
    :cond_4
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 370
    const/4 v1, 0x1

    .line 371
    if-eqz p3, :cond_7

    .line 372
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v1

    move-object v1, v0

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgff;

    .line 373
    new-instance v9, Lgex;

    invoke-direct {v9}, Lgex;-><init>()V

    .line 374
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 376
    if-eqz v2, :cond_5

    .line 377
    new-instance v2, Lgev;

    const-string v10, "OPERA\u00c7\u00d5ES DOADORAS"

    const-string v11, ""

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-direct {v2, v10, v11, v12, v13}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lgex;->a(Z)V

    .line 379
    const/4 v2, 0x0

    .line 382
    :cond_5
    new-instance v10, Lgev;

    invoke-virtual {v0}, Lgff;->d()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v10, Lgev;

    const-string v11, "Financeiro"

    invoke-virtual {v0}, Lgff;->k()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v10, Lgev;

    const-string v11, "Valor de mercado"

    invoke-virtual {v0}, Lgff;->l()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v10, Lgev;

    const-string v11, "Qtde. cotas"

    invoke-virtual {v0}, Lgff;->m()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v10, Lgev;

    const-string v11, "Pre\u00e7o"

    invoke-virtual {v0}, Lgff;->n()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v10, Lgev;

    const-string v11, "Data opera\u00e7\u00e3o"

    invoke-virtual {v0}, Lgff;->o()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v10, Lgev;

    const-string v11, "Vencimento"

    invoke-virtual {v0}, Lgff;->p()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance v10, Lgev;

    const-string v11, "% Remunera\u00e7\u00e3o"

    invoke-virtual {v0}, Lgff;->q()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v10, Lgev;

    const-string v11, "Remunera\u00e7\u00e3o"

    invoke-virtual {v0}, Lgff;->r()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v10, Lgev;

    const-string v11, "Taxas"

    invoke-virtual {v0}, Lgff;->s()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v10, Lgev;

    const-string v11, "Total remunera\u00e7\u00e3o"

    invoke-virtual {v0}, Lgff;->t()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {v9, v3}, Lgex;->a(Ljava/util/List;)V

    .line 396
    const/4 v3, 0x0

    .line 398
    :try_start_2
    invoke-virtual {v0}, Lgff;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 402
    :goto_5
    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 404
    invoke-virtual {v7}, Lgev;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 405
    goto/16 :goto_4

    .line 399
    :catch_2
    move-exception v0

    .line 400
    const-string v10, "Error"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_5

    .line 406
    :cond_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lgev;->d(Ljava/lang/String;)V

    .line 409
    :cond_7
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    iput-object v5, v4, Lger;->a:Ljava/util/List;

    .line 414
    return-object v4
.end method

.method public a(Ljava/util/List;Ljava/util/List;)Lgev;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgff;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lgff;",
            ">;)",
            "Lgev;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v3, Lgev;

    invoke-direct {v3}, Lgev;-><init>()V

    .line 252
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 253
    new-instance v1, Ljava/math/BigDecimal;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 254
    sget-object v2, Lgfg;->RENDA_VARIAVEL:Lgfg;

    invoke-virtual {v3, v2}, Lgev;->a(Lgfg;)V

    .line 255
    sget-object v2, Lgfg;->RENDA_VARIAVEL:Lgfg;

    invoke-virtual {v2}, Lgfg;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lgev;->a(Ljava/lang/String;)V

    .line 256
    const-string v2, "R$ 0,00"

    invoke-virtual {v3, v2}, Lgev;->b(Ljava/lang/String;)V

    .line 257
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgff;

    .line 259
    invoke-virtual {v0}, Lgff;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_0

    .line 261
    :cond_0
    invoke-static {v2}, Lnaj;->a(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgff;->v:Ljava/lang/String;

    .line 262
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lgev;->c(Z)V

    move-object v0, v2

    .line 265
    :cond_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 266
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    move-object v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgff;

    .line 267
    invoke-virtual {v0}, Lgff;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 268
    invoke-virtual {v0}, Lgff;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_1

    .line 270
    :cond_2
    invoke-static {v2}, Lnaj;->a(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgff;->w:Ljava/lang/String;

    .line 271
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lgev;->c(Z)V

    move-object v0, v1

    .line 273
    :cond_3
    invoke-static {v0}, Lnaj;->a(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgev;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_2
    return-object v3

    .line 274
    :catch_0
    move-exception v0

    .line 275
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lgff;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lgff;->a:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lgff;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lgff;->b:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lgff;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lgff;->c:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lgff;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lgff;->d:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lgff;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lgff;->e:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lgff;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lgff;->f:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lgff;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lgff;->g:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lgff;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lgff;->h:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lgff;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lgff;->i:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lgff;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lgff;->j:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lgff;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lgff;->k:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lgff;->l:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lgff;->l:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lgff;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lgff;->m:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lgff;->n:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lgff;->n:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lgff;->o:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lgff;->o:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lgff;->p:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lgff;->p:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lgff;->q:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lgff;->q:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lgff;->r:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lgff;->r:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lgff;->s:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lgff;->s:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lgff;->t:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lgff;->t:Ljava/lang/String;

    .line 240
    return-void
.end method
