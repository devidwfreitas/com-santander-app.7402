.class public Lgfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private A:Ljava/lang/String;
    .annotation runtime Leks;
        a = "assetYearlyFee"
    .end annotation
.end field

.field private B:Ljava/lang/String;
    .annotation runtime Leks;
        a = "assetValue"
    .end annotation
.end field

.field private C:Ljava/lang/String;
    .annotation runtime Leks;
        a = "serial"
    .end annotation
.end field

.field private D:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cupomSide"
    .end annotation
.end field

.field private E:Ljava/lang/String;
    .annotation runtime Leks;
        a = "adjust"
    .end annotation
.end field

.field private F:Ljava/lang/String;
    .annotation runtime Leks;
        a = "provision"
    .end annotation
.end field

.field private final G:Ljava/lang/String;

.field private H:Ljava/math/BigDecimal;

.field private I:Ljava/math/BigDecimal;

.field private J:Ljava/math/BigDecimal;

.field private K:Ljava/math/BigDecimal;

.field private L:Ljava/math/BigDecimal;

.field private M:Ljava/math/BigDecimal;

.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "netCumulativeApprop"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "grossMarketValue"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "marketValue"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "netMarketValue"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "finalValueSide"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "security"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "type"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalCost"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Leks;
        a = "result"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalAmount"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Leks;
        a = "brokerAverageCost"
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Leks;
        a = "sharePrice"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Leks;
        a = "maturityDate"
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation runtime Leks;
        a = "asset"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Leks;
        a = "marketPrice"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Leks;
        a = "amount"
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Leks;
        a = "equalization"
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation runtime Leks;
        a = "accrualAdjust"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Leks;
        a = "maturity"
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation runtime Leks;
        a = "broker"
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation runtime Leks;
        a = "mainValue"
    .end annotation
.end field

.field private v:Ljava/lang/String;
    .annotation runtime Leks;
        a = "startDate"
    .end annotation
.end field

.field private w:Ljava/lang/String;
    .annotation runtime Leks;
        a = "liabilityIndex"
    .end annotation
.end field

.field private x:Ljava/lang/String;
    .annotation runtime Leks;
        a = "liabilityYearlyFee"
    .end annotation
.end field

.field private y:Ljava/lang/String;
    .annotation runtime Leks;
        a = "liabilityValue"
    .end annotation
.end field

.field private z:Ljava/lang/String;
    .annotation runtime Leks;
        a = "assetIndex"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const-string v0, "R$ 0,00"

    iput-object v0, p0, Lgfc;->G:Ljava/lang/String;

    .line 379
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lgfc;->H:Ljava/math/BigDecimal;

    .line 380
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lgfc;->I:Ljava/math/BigDecimal;

    .line 381
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lgfc;->J:Ljava/math/BigDecimal;

    .line 382
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lgfc;->K:Ljava/math/BigDecimal;

    .line 383
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lgfc;->L:Ljava/math/BigDecimal;

    .line 384
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lgfc;->M:Ljava/math/BigDecimal;

    return-void
.end method

.method private G(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 690
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 693
    :cond_0
    return-object p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lgfc;->B:Ljava/lang/String;

    return-object v0
.end method

.method public A(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lgfc;->B:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lgfc;->C:Ljava/lang/String;

    return-object v0
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lgfc;->C:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lgfc;->D:Ljava/lang/String;

    return-object v0
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lgfc;->D:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lgfc;->E:Ljava/lang/String;

    return-object v0
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lgfc;->E:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lgfc;->F:Ljava/lang/String;

    return-object v0
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lgfc;->F:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lgfc;->d:Ljava/lang/String;

    return-object v0
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lgfc;->d:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lgev;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgfc;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lgfc;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lgfc;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lgfc;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lgfc;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lgfc;",
            ">;)",
            "Lgev;"
        }
    .end annotation

    .prologue
    .line 389
    new-instance v1, Lgev;

    invoke-direct {v1}, Lgev;-><init>()V

    .line 390
    sget-object v0, Lgfg;->DERIVATIVOS:Lgfg;

    invoke-virtual {v1, v0}, Lgev;->a(Lgfg;)V

    .line 391
    sget-object v0, Lgfg;->DERIVATIVOS:Lgfg;

    invoke-virtual {v0}, Lgfg;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgev;->a(Ljava/lang/String;)V

    .line 392
    const-string v0, "R$ 0,00"

    invoke-virtual {v1, v0}, Lgev;->b(Ljava/lang/String;)V

    .line 396
    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 397
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfc;

    .line 398
    iget-object v3, p0, Lgfc;->H:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Lgfc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lgfc;->H:Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    const-string v2, "Error"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    :goto_1
    return-object v1

    .line 400
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Lgev;->c(Z)V

    .line 402
    :cond_2
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 403
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfc;

    .line 404
    iget-object v3, p0, Lgfc;->H:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Lgfc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lgfc;->H:Ljava/math/BigDecimal;

    goto :goto_2

    .line 406
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lgev;->c(Z)V

    .line 409
    :cond_4
    if-eqz p3, :cond_6

    .line 410
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 411
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfc;

    .line 412
    iget-object v3, p0, Lgfc;->I:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Lgfc;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lgfc;->I:Ljava/math/BigDecimal;

    goto :goto_3

    .line 414
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lgev;->c(Z)V

    .line 418
    :cond_6
    if-eqz p4, :cond_8

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 419
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfc;

    .line 420
    iget-object v3, p0, Lgfc;->J:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Lgfc;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lgfc;->J:Ljava/math/BigDecimal;

    goto :goto_4

    .line 422
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lgev;->c(Z)V

    .line 425
    :cond_8
    if-eqz p5, :cond_a

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 426
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfc;

    .line 427
    iget-object v3, p0, Lgfc;->K:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Lgfc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lgfc;->K:Ljava/math/BigDecimal;

    goto :goto_5

    .line 429
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lgev;->c(Z)V

    .line 432
    :cond_a
    if-eqz p6, :cond_c

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 433
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfc;

    .line 434
    iget-object v3, p0, Lgfc;->L:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Lgfc;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lgfc;->L:Ljava/math/BigDecimal;

    goto :goto_6

    .line 436
    :cond_b
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lgev;->c(Z)V

    .line 439
    :cond_c
    invoke-virtual {v1}, Lgev;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lgfc;->M:Ljava/math/BigDecimal;

    iget-object v2, p0, Lgfc;->H:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lgfc;->M:Ljava/math/BigDecimal;

    .line 441
    iget-object v0, p0, Lgfc;->M:Ljava/math/BigDecimal;

    iget-object v2, p0, Lgfc;->I:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lgfc;->M:Ljava/math/BigDecimal;

    .line 442
    iget-object v0, p0, Lgfc;->M:Ljava/math/BigDecimal;

    iget-object v2, p0, Lgfc;->J:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lgfc;->M:Ljava/math/BigDecimal;

    .line 443
    iget-object v0, p0, Lgfc;->M:Ljava/math/BigDecimal;

    iget-object v2, p0, Lgfc;->K:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lgfc;->M:Ljava/math/BigDecimal;

    .line 444
    iget-object v0, p0, Lgfc;->M:Ljava/math/BigDecimal;

    iget-object v2, p0, Lgfc;->L:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lgfc;->M:Ljava/math/BigDecimal;

    .line 445
    iget-object v0, p0, Lgfc;->M:Ljava/math/BigDecimal;

    invoke-static {v0}, Lnaj;->a(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgev;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lgfc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lgfc;->a:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lger;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgfc;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lgfc;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lgfc;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lgfc;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lgfc;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lgfc;",
            ">;)",
            "Lger;"
        }
    .end annotation

    .prologue
    .line 460
    new-instance v1, Ljava/math/BigDecimal;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 461
    new-instance v4, Lger;

    invoke-direct {v4}, Lger;-><init>()V

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfc;->M:Ljava/math/BigDecimal;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lger;->b(Ljava/lang/String;)V

    .line 464
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 466
    new-instance v6, Lgev;

    invoke-direct {v6}, Lgev;-><init>()V

    .line 467
    const-string v2, "Op\u00e7\u00f5es"

    invoke-virtual {v6, v2}, Lgev;->a(Ljava/lang/String;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfc;->H:Ljava/math/BigDecimal;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lgev;->b(Ljava/lang/String;)V

    .line 470
    if-eqz p1, :cond_1

    .line 471
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgfc;

    .line 472
    new-instance v8, Lgex;

    invoke-direct {v8}, Lgex;-><init>()V

    .line 474
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 475
    new-instance v3, Lgev;

    invoke-virtual {v1}, Lgfc;->e()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const/4 v12, 0x1

    invoke-direct {v3, v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v3, Lgev;

    const-string v10, "Tipo"

    invoke-virtual {v1}, Lgfc;->f()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v3, Lgev;

    const-string v10, "Custo total"

    invoke-virtual {v1}, Lgfc;->g()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v3, Lgev;

    const-string v10, "Valor de mercado liquido"

    invoke-virtual {v1}, Lgfc;->F()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v3, Lgev;

    const-string v10, "Resultado"

    invoke-virtual {v1}, Lgfc;->h()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v3, Lgev;

    const-string v10, "Qtde. cotas"

    invoke-virtual {v1}, Lgfc;->i()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v3, Lgev;

    const-string v10, "Custo m\u00e9dio c/ corretagem"

    invoke-virtual {v1}, Lgfc;->j()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v3, Lgev;

    const-string v10, "Cota\u00e7\u00e3o"

    invoke-virtual {v1}, Lgfc;->k()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v3, Lgev;

    const-string v10, "Vencimento"

    invoke-virtual {v1}, Lgfc;->l()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnak;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    const/4 v3, 0x0

    .line 487
    :try_start_0
    invoke-virtual {v1}, Lgfc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 491
    :goto_1
    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 492
    invoke-virtual {v8, v9}, Lgex;->a(Ljava/util/List;)V

    .line 494
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lgev;->c(Z)V

    .line 495
    invoke-virtual {v6}, Lgev;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 496
    goto/16 :goto_0

    .line 488
    :catch_0
    move-exception v1

    .line 489
    const-string v10, "Error"

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_1

    :cond_0
    move-object v1, v2

    .line 499
    :cond_1
    if-eqz p2, :cond_2

    .line 500
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v1

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgfc;

    .line 501
    new-instance v8, Lgex;

    invoke-direct {v8}, Lgex;-><init>()V

    .line 503
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 504
    new-instance v3, Lgev;

    invoke-virtual {v1}, Lgfc;->e()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const/4 v12, 0x1

    invoke-direct {v3, v10, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v3, Lgev;

    const-string v10, "Tipo"

    invoke-virtual {v1}, Lgfc;->f()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v3, Lgev;

    const-string v10, "Custo total"

    invoke-virtual {v1}, Lgfc;->g()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance v3, Lgev;

    const-string v10, "Valor de mercado liquido"

    invoke-virtual {v1}, Lgfc;->F()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    new-instance v3, Lgev;

    const-string v10, "Resultado"

    invoke-virtual {v1}, Lgfc;->h()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    new-instance v3, Lgev;

    const-string v10, "Qtde. cotas"

    invoke-virtual {v1}, Lgfc;->i()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    new-instance v3, Lgev;

    const-string v10, "Custo m\u00e9dio c/ corretagem"

    invoke-virtual {v1}, Lgfc;->j()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance v3, Lgev;

    const-string v10, "Cota\u00e7\u00e3o"

    invoke-virtual {v1}, Lgfc;->k()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    new-instance v3, Lgev;

    const-string v10, "Vencimento"

    invoke-virtual {v1}, Lgfc;->l()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    const/4 v3, 0x0

    .line 516
    :try_start_1
    invoke-virtual {v1}, Lgfc;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 520
    :goto_3
    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 522
    invoke-virtual {v8, v9}, Lgex;->a(Ljava/util/List;)V

    .line 524
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lgev;->c(Z)V

    .line 525
    invoke-virtual {v6}, Lgev;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 526
    goto/16 :goto_2

    .line 517
    :catch_1
    move-exception v1

    .line 518
    const-string v10, "Error"

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_3

    :cond_2
    move-object v2, v1

    .line 528
    :cond_3
    invoke-static {v2}, Lnaj;->a(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lgev;->d(Ljava/lang/String;)V

    .line 529
    new-instance v1, Ljava/math/BigDecimal;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 530
    new-instance v7, Lgev;

    invoke-direct {v7}, Lgev;-><init>()V

    .line 531
    const-string v2, "Futuros"

    invoke-virtual {v7, v2}, Lgev;->a(Ljava/lang/String;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfc;->I:Ljava/math/BigDecimal;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lgev;->b(Ljava/lang/String;)V

    .line 534
    if-eqz p3, :cond_5

    .line 535
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v1

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgfc;

    .line 536
    new-instance v9, Lgex;

    invoke-direct {v9}, Lgex;-><init>()V

    .line 538
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 539
    new-instance v3, Lgev;

    invoke-virtual {v1}, Lgfc;->m()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    const/4 v13, 0x1

    invoke-direct {v3, v11, v12, v13}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    new-instance v3, Lgev;

    const-string v11, "Valor de mercado"

    invoke-virtual {v1}, Lgfc;->c()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    new-instance v3, Lgev;

    const-string v11, "Pre\u00e7o de mercado"

    invoke-virtual {v1}, Lgfc;->n()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    new-instance v3, Lgev;

    const-string v11, "Quantidade"

    invoke-virtual {v1}, Lgfc;->o()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    new-instance v3, Lgev;

    const-string v11, "Ajuste equaliza\u00e7\u00e3o"

    invoke-virtual {v1}, Lgfc;->p()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    new-instance v3, Lgev;

    const-string v11, "Ajuste valoriza\u00e7\u00e3o"

    invoke-virtual {v1}, Lgfc;->q()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v3, Lgev;

    const-string v11, "Vencimento"

    invoke-virtual {v1}, Lgfc;->r()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v11, v12}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    const/4 v3, 0x0

    .line 549
    :try_start_2
    invoke-virtual {v1}, Lgfc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 553
    :goto_5
    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 555
    invoke-virtual {v9, v10}, Lgex;->a(Ljava/util/List;)V

    .line 557
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lgev;->c(Z)V

    .line 558
    invoke-virtual {v7}, Lgev;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 559
    goto/16 :goto_4

    .line 550
    :catch_2
    move-exception v1

    .line 551
    const-string v11, "Error"

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_5

    .line 561
    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lgev;->d(Ljava/lang/String;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lgfc;->I:Ljava/math/BigDecimal;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lgev;->b(Ljava/lang/String;)V

    .line 563
    new-instance v1, Ljava/math/BigDecimal;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 566
    :cond_5
    new-instance v8, Lgev;

    invoke-direct {v8}, Lgev;-><init>()V

    .line 567
    const-string v2, "Op\u00e7\u00f5es de Futuros"

    invoke-virtual {v8, v2}, Lgev;->a(Ljava/lang/String;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfc;->J:Ljava/math/BigDecimal;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lgev;->b(Ljava/lang/String;)V

    .line 570
    if-eqz p4, :cond_7

    .line 571
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v2, v1

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgfc;

    .line 572
    new-instance v10, Lgex;

    invoke-direct {v10}, Lgex;-><init>()V

    .line 574
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 575
    new-instance v3, Lgev;

    invoke-virtual {v1}, Lgfc;->e()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    const/4 v14, 0x1

    invoke-direct {v3, v12, v13, v14}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    new-instance v3, Lgev;

    const-string v12, "Custo total"

    invoke-virtual {v1}, Lgfc;->g()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v12, v13}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v3, Lgev;

    const-string v12, "Valor de mercado bruto"

    invoke-virtual {v1}, Lgfc;->c()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v12, v13}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v3, Lgev;

    const-string v12, "Resultado"

    invoke-virtual {v1}, Lgfc;->h()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v12, v13}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance v3, Lgev;

    const-string v12, "Quantidade"

    invoke-virtual {v1}, Lgfc;->o()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v12, v13}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    new-instance v3, Lgev;

    const-string v12, "Ajuste equaliza\u00e7\u00e3o"

    invoke-virtual {v1}, Lgfc;->j()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v12, v13}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v3, Lgev;

    const-string v12, "Ajuste valoriza\u00e7\u00e3o"

    invoke-virtual {v1}, Lgfc;->k()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v12, v13}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    new-instance v3, Lgev;

    const-string v12, "Vencimento"

    invoke-virtual {v1}, Lgfc;->l()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v12, v13}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    const/4 v3, 0x0

    .line 586
    :try_start_3
    invoke-virtual {v1}, Lgfc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 590
    :goto_7
    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 592
    invoke-virtual {v10, v11}, Lgex;->a(Ljava/util/List;)V

    .line 594
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lgev;->c(Z)V

    .line 595
    invoke-virtual {v8}, Lgev;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 596
    goto/16 :goto_6

    .line 587
    :catch_3
    move-exception v1

    .line 588
    const-string v12, "Error"

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_7

    .line 598
    :cond_6
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lgev;->d(Ljava/lang/String;)V

    .line 599
    new-instance v1, Ljava/math/BigDecimal;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 601
    :cond_7
    new-instance v9, Lgev;

    invoke-direct {v9}, Lgev;-><init>()V

    .line 602
    const-string v2, "Swap"

    invoke-virtual {v9, v2}, Lgev;->a(Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfc;->K:Ljava/math/BigDecimal;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lgev;->b(Ljava/lang/String;)V

    .line 605
    if-eqz p6, :cond_9

    .line 606
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v2, v1

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgfc;

    .line 607
    new-instance v11, Lgex;

    invoke-direct {v11}, Lgex;-><init>()V

    .line 609
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 610
    new-instance v3, Lgev;

    invoke-virtual {v1}, Lgfc;->s()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    const/4 v15, 0x1

    invoke-direct {v3, v13, v14, v15}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v3, Lgev;

    const-string v13, "Principal"

    invoke-virtual {v1}, Lgfc;->t()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    new-instance v3, Lgev;

    const-string v13, "Emiss\u00e3o"

    invoke-virtual {v1}, Lgfc;->u()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lnak;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance v3, Lgev;

    const-string v13, "Vencimento"

    invoke-virtual {v1}, Lgfc;->r()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lnak;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance v3, Lgev;

    const-string v13, "Passivo"

    const-string v14, ""

    const/4 v15, 0x1

    invoke-direct {v3, v13, v14, v15}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    new-instance v3, Lgev;

    const-string v13, "\u00cdndice"

    invoke-virtual {v1}, Lgfc;->v()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    new-instance v3, Lgev;

    const-string v13, "Taxa %A.A."

    invoke-virtual {v1}, Lgfc;->w()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lgfc;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v3, Lgev;

    const-string v13, "Valor"

    invoke-virtual {v1}, Lgfc;->x()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v3, Lgev;

    const-string v13, "Ativo"

    const-string v14, ""

    const/4 v15, 0x1

    invoke-direct {v3, v13, v14, v15}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    new-instance v3, Lgev;

    const-string v13, "\u00cdndice"

    invoke-virtual {v1}, Lgfc;->y()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v3, Lgev;

    const-string v13, "Taxa %A.A."

    invoke-virtual {v1}, Lgfc;->z()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lgfc;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    new-instance v3, Lgev;

    const-string v13, "Valor"

    invoke-virtual {v1}, Lgfc;->A()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    const/4 v3, 0x0

    .line 625
    :try_start_4
    invoke-virtual {v1}, Lgfc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v1

    .line 629
    :goto_9
    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 631
    invoke-virtual {v11, v12}, Lgex;->a(Ljava/util/List;)V

    .line 633
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lgev;->c(Z)V

    .line 634
    invoke-virtual {v9}, Lgev;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 635
    goto/16 :goto_8

    .line 626
    :catch_4
    move-exception v1

    .line 627
    const-string v13, "Error"

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_9

    .line 637
    :cond_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lgev;->d(Ljava/lang/String;)V

    .line 638
    new-instance v1, Ljava/math/BigDecimal;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 640
    :cond_9
    new-instance v10, Lgev;

    invoke-direct {v10}, Lgev;-><init>()V

    .line 641
    const-string v2, "Swap Cambial"

    invoke-virtual {v10, v2}, Lgev;->a(Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfc;->L:Ljava/math/BigDecimal;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lgev;->b(Ljava/lang/String;)V

    .line 644
    if-eqz p5, :cond_b

    .line 645
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v2, v1

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgfc;

    .line 646
    new-instance v12, Lgex;

    invoke-direct {v12}, Lgex;-><init>()V

    .line 648
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 649
    new-instance v3, Lgev;

    invoke-virtual {v1}, Lgfc;->s()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v3, v14, v15, v0}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    new-instance v3, Lgev;

    const-string v14, "Principal"

    invoke-virtual {v1}, Lgfc;->t()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    new-instance v3, Lgev;

    const-string v14, "Emiss\u00e3o"

    invoke-virtual {v1}, Lgfc;->u()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    new-instance v3, Lgev;

    const-string v14, "Vencimento"

    invoke-virtual {v1}, Lgfc;->r()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    new-instance v3, Lgev;

    const-string v14, "Passivo"

    const-string v15, ""

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v3, v14, v15, v0}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    new-instance v3, Lgev;

    const-string v14, "\u00cdndice"

    invoke-virtual {v1}, Lgfc;->v()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    new-instance v3, Lgev;

    const-string v14, "Taxa %A.A."

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lgfc;->w()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "%"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lgfc;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    new-instance v3, Lgev;

    const-string v14, "Valor"

    invoke-virtual {v1}, Lgfc;->x()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v3, Lgev;

    const-string v14, "Ativo"

    const-string v15, ""

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v3, v14, v15, v0}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    new-instance v3, Lgev;

    const-string v14, "\u00cdndice"

    invoke-virtual {v1}, Lgfc;->y()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    new-instance v3, Lgev;

    const-string v14, "Taxa %A.A."

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lgfc;->z()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "%"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lgfc;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    new-instance v3, Lgev;

    const-string v14, "Valor"

    invoke-virtual {v1}, Lgfc;->A()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Lgev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    const/4 v3, 0x0

    .line 664
    :try_start_5
    invoke-virtual {v1}, Lgfc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->O(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v1

    .line 668
    :goto_b
    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 670
    invoke-virtual {v12, v13}, Lgex;->a(Ljava/util/List;)V

    .line 672
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lgev;->c(Z)V

    .line 673
    invoke-virtual {v10}, Lgev;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 674
    goto/16 :goto_a

    .line 665
    :catch_5
    move-exception v1

    .line 666
    const-string v14, "Error"

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_b

    .line 676
    :cond_a
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lgev;->d(Ljava/lang/String;)V

    .line 678
    :cond_b
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    iput-object v5, v4, Lger;->a:Ljava/util/List;

    .line 686
    return-object v4
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lgfc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lgfc;->b:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lgfc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lgfc;->c:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lgfc;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lgfc;->e:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lgfc;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lgfc;->f:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lgfc;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lgfc;->g:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lgfc;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lgfc;->h:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lgfc;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lgfc;->i:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lgfc;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lgfc;->j:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lgfc;->k:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lgfc;->k:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lgfc;->l:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lgfc;->l:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lgfc;->m:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lgfc;->m:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lgfc;->n:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lgfc;->n:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lgfc;->o:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lgfc;->o:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lgfc;->p:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lgfc;->p:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lgfc;->q:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lgfc;->q:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lgfc;->r:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lgfc;->r:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lgfc;->s:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lgfc;->s:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lgfc;->t:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lgfc;->t:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lgfc;->u:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lgfc;->u:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lgfc;->v:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lgfc;->v:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lgfc;->w:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lgfc;->w:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lgfc;->x:Ljava/lang/String;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lgfc;->x:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lgfc;->y:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lgfc;->y:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lgfc;->z:Ljava/lang/String;

    return-object v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lgfc;->z:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lgfc;->A:Ljava/lang/String;

    return-object v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lgfc;->A:Ljava/lang/String;

    .line 326
    return-void
.end method
