.class public final Leju;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lelp;

.field private b:Lekk;

.field private c:Lejl;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lejv",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lekp;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lekp;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lelp;->a:Lelp;

    iput-object v0, p0, Leju;->a:Lelp;

    .line 80
    sget-object v0, Lekk;->DEFAULT:Lekk;

    iput-object v0, p0, Leju;->b:Lekk;

    .line 81
    sget-object v0, Lejf;->IDENTITY:Lejf;

    iput-object v0, p0, Leju;->c:Lejl;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leju;->d:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leju;->e:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leju;->f:Ljava/util/List;

    .line 87
    iput-boolean v1, p0, Leju;->g:Z

    .line 89
    iput v2, p0, Leju;->i:I

    .line 90
    iput v2, p0, Leju;->j:I

    .line 91
    iput-boolean v1, p0, Leju;->k:Z

    .line 92
    iput-boolean v1, p0, Leju;->l:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Leju;->m:Z

    .line 94
    iput-boolean v1, p0, Leju;->n:Z

    .line 95
    iput-boolean v1, p0, Leju;->o:Z

    .line 96
    iput-boolean v1, p0, Leju;->p:Z

    .line 105
    return-void
.end method

.method private a(Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lekp;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 578
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 579
    new-instance v0, Lejc;

    invoke-direct {v0, p1}, Lejc;-><init>(Ljava/lang/String;)V

    .line 586
    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lepn;->get(Ljava/lang/Class;)Lepn;

    move-result-object v1

    invoke-static {v1, v0}, Lent;->a(Lepn;Ljava/lang/Object;)Lekp;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lepn;->get(Ljava/lang/Class;)Lepn;

    move-result-object v1

    invoke-static {v1, v0}, Lent;->a(Lepn;Ljava/lang/Object;)Lekp;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lepn;->get(Ljava/lang/Class;)Lepn;

    move-result-object v1

    invoke-static {v1, v0}, Lent;->a(Lepn;Ljava/lang/Object;)Lekp;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_0
    return-void

    .line 580
    :cond_1
    if-eq p2, v2, :cond_0

    if-eq p3, v2, :cond_0

    .line 581
    new-instance v0, Lejc;

    invoke-direct {v0, p2, p3}, Lejc;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public a()Leju;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Leju;->o:Z

    .line 146
    return-object p0
.end method

.method public a(D)Leju;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Leju;->a:Lelp;

    invoke-virtual {v0, p1, p2}, Lelp;->a(D)Lelp;

    move-result-object v0

    iput-object v0, p0, Leju;->a:Lelp;

    .line 116
    return-object p0
.end method

.method public a(I)Leju;
    .locals 1

    .prologue
    .line 427
    iput p1, p0, Leju;->i:I

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Leju;->h:Ljava/lang/String;

    .line 429
    return-object p0
.end method

.method public a(II)Leju;
    .locals 1

    .prologue
    .line 448
    iput p1, p0, Leju;->i:I

    .line 449
    iput p2, p0, Leju;->j:I

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Leju;->h:Ljava/lang/String;

    .line 451
    return-object p0
.end method

.method public a(Lejd;)Leju;
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Leju;->a:Lelp;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lelp;->a(Lejd;ZZ)Lelp;

    move-result-object v0

    iput-object v0, p0, Leju;->a:Lelp;

    .line 334
    return-object p0
.end method

.method public a(Lejf;)Leju;
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Leju;->c:Lejl;

    .line 287
    return-object p0
.end method

.method public a(Lejl;)Leju;
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Leju;->c:Lejl;

    .line 300
    return-object p0
.end method

.method public a(Lekk;)Leju;
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Leju;->b:Lekk;

    .line 274
    return-object p0
.end method

.method public a(Lekp;)Leju;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Leju;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;)Leju;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Leju;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 518
    instance-of v0, p2, Lekh;

    if-nez v0, :cond_0

    instance-of v0, p2, Lejy;

    if-nez v0, :cond_0

    instance-of v0, p2, Lekn;

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lekv;->a(Z)V

    .line 521
    instance-of v0, p2, Lejy;

    if-nez v0, :cond_1

    instance-of v0, p2, Lekh;

    if-eqz v0, :cond_2

    .line 522
    :cond_1
    iget-object v0, p0, Leju;->f:Ljava/util/List;

    .line 523
    invoke-static {p1, p2}, Lent;->a(Ljava/lang/Class;Ljava/lang/Object;)Lekp;

    move-result-object v2

    .line 522
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 525
    :cond_2
    instance-of v0, p2, Lekn;

    if-eqz v0, :cond_3

    .line 526
    iget-object v0, p0, Leju;->e:Ljava/util/List;

    check-cast p2, Lekn;

    invoke-static {p1, p2}, Leny;->b(Ljava/lang/Class;Lekn;)Lekp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_3
    return-object p0

    :cond_4
    move v0, v1

    .line 518
    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Leju;
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Leju;->h:Ljava/lang/String;

    .line 409
    return-object p0
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Leju;
    .locals 2

    .prologue
    .line 472
    instance-of v0, p2, Lekh;

    if-nez v0, :cond_0

    instance-of v0, p2, Lejy;

    if-nez v0, :cond_0

    instance-of v0, p2, Lejv;

    if-nez v0, :cond_0

    instance-of v0, p2, Lekn;

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lekv;->a(Z)V

    .line 476
    instance-of v0, p2, Lejv;

    if-eqz v0, :cond_1

    .line 477
    iget-object v1, p0, Leju;->d:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lejv;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_1
    instance-of v0, p2, Lekh;

    if-nez v0, :cond_2

    instance-of v0, p2, Lejy;

    if-eqz v0, :cond_3

    .line 480
    :cond_2
    invoke-static {p1}, Lepn;->get(Ljava/lang/reflect/Type;)Lepn;

    move-result-object v0

    .line 481
    iget-object v1, p0, Leju;->e:Ljava/util/List;

    invoke-static {v0, p2}, Lent;->b(Lepn;Ljava/lang/Object;)Lekp;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_3
    instance-of v0, p2, Lekn;

    if-eqz v0, :cond_4

    .line 484
    iget-object v0, p0, Leju;->e:Ljava/util/List;

    invoke-static {p1}, Lepn;->get(Ljava/lang/reflect/Type;)Lepn;

    move-result-object v1

    check-cast p2, Lekn;

    invoke-static {v1, p2}, Leny;->a(Lepn;Lekn;)Lekp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_4
    return-object p0

    .line 472
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs a([I)Leju;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Leju;->a:Lelp;

    invoke-virtual {v0, p1}, Lelp;->a([I)Lelp;

    move-result-object v0

    iput-object v0, p0, Leju;->a:Lelp;

    .line 132
    return-object p0
.end method

.method public varargs a([Lejd;)Leju;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 314
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 315
    iget-object v3, p0, Leju;->a:Lelp;

    invoke-virtual {v3, v2, v4, v4}, Lelp;->a(Lejd;ZZ)Lelp;

    move-result-object v2

    iput-object v2, p0, Leju;->a:Lelp;

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    return-object p0
.end method

.method public b()Leju;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Leju;->a:Lelp;

    invoke-virtual {v0}, Lelp;->c()Lelp;

    move-result-object v0

    iput-object v0, p0, Leju;->a:Lelp;

    .line 157
    return-object p0
.end method

.method public b(Lejd;)Leju;
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Leju;->a:Lelp;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lelp;->a(Lejd;ZZ)Lelp;

    move-result-object v0

    iput-object v0, p0, Leju;->a:Lelp;

    .line 351
    return-object p0
.end method

.method public c()Leju;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Leju;->g:Z

    .line 169
    return-object p0
.end method

.method public d()Leju;
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Leju;->k:Z

    .line 250
    return-object p0
.end method

.method public e()Leju;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Leju;->a:Lelp;

    invoke-virtual {v0}, Lelp;->b()Lelp;

    move-result-object v0

    iput-object v0, p0, Leju;->a:Lelp;

    .line 261
    return-object p0
.end method

.method public f()Leju;
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Leju;->n:Z

    .line 362
    return-object p0
.end method

.method public g()Leju;
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Leju;->p:Z

    .line 375
    return-object p0
.end method

.method public h()Leju;
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Leju;->m:Z

    .line 387
    return-object p0
.end method

.method public i()Leju;
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Leju;->l:Z

    .line 553
    return-object p0
.end method

.method public j()Lejm;
    .locals 13

    .prologue
    .line 563
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 564
    iget-object v0, p0, Leju;->e:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 565
    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 566
    iget-object v0, p0, Leju;->f:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 567
    iget-object v0, p0, Leju;->h:Ljava/lang/String;

    iget v1, p0, Leju;->i:I

    iget v2, p0, Leju;->j:I

    invoke-direct {p0, v0, v1, v2, v12}, Leju;->a(Ljava/lang/String;IILjava/util/List;)V

    .line 569
    new-instance v0, Lejm;

    iget-object v1, p0, Leju;->a:Lelp;

    iget-object v2, p0, Leju;->c:Lejl;

    iget-object v3, p0, Leju;->d:Ljava/util/Map;

    iget-boolean v4, p0, Leju;->g:Z

    iget-boolean v5, p0, Leju;->k:Z

    iget-boolean v6, p0, Leju;->o:Z

    iget-boolean v7, p0, Leju;->m:Z

    iget-boolean v8, p0, Leju;->n:Z

    iget-boolean v9, p0, Leju;->p:Z

    iget-boolean v10, p0, Leju;->l:Z

    iget-object v11, p0, Leju;->b:Lekk;

    invoke-direct/range {v0 .. v12}, Lejm;-><init>(Lelp;Lejl;Ljava/util/Map;ZZZZZZZLekk;Ljava/util/List;)V

    return-object v0
.end method
