.class public Lhrv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhru;


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2


# instance fields
.field private c:Lhqy;

.field private d:Lhpl;

.field private e:Ljava/text/NumberFormat;

.field private f:Lcom/santander/app/contacorrente/domain/Conta;

.field private g:F

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

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

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z


# direct methods
.method public constructor <init>(Lhqy;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhrv;->n:Z

    .line 59
    iput-object p1, p0, Lhrv;->c:Lhqy;

    .line 60
    invoke-static {}, Lhpp;->m()Lhpl;

    move-result-object v0

    iput-object v0, p0, Lhrv;->d:Lhpl;

    .line 61
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lhrv;->e:Ljava/text/NumberFormat;

    .line 62
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0}, Lhpl;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lhrv;->m:Ljava/util/List;

    .line 63
    invoke-direct {p0}, Lhrv;->m()V

    .line 64
    return-void
.end method

.method static synthetic a(Lhrv;)Lhqy;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lhrv;->c:Lhqy;

    return-object v0
.end method

.method private a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 4

    .prologue
    .line 532
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->G()V

    .line 533
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;->canShowMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->o()V

    .line 535
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->q()V

    .line 536
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->Z()V

    .line 537
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->u()V

    .line 538
    iget-object v0, p0, Lhrv;->c:Lhqy;

    iget-object v1, p0, Lhrv;->e:Ljava/text/NumberFormat;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhqy;->a(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhqy;->f(Ljava/lang/String;)V

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->E()V

    goto :goto_0
.end method

.method static synthetic a(Lhrv;Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lhrv;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    return-void
.end method

.method static synthetic a(Lhrv;Lhxm;Lhxq;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lhrv;->b(Lhxm;Lhxq;)V

    return-void
.end method

.method static synthetic a(Lhrv;Lhxq;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lhrv;->a(Lhxq;)V

    return-void
.end method

.method static synthetic a(Lhrv;Lhxr;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lhrv;->a(Lhxr;)V

    return-void
.end method

.method private a(Lhxm;Lhxq;)V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lhrv;->c:Lhqy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lhqy;->a(Z)V

    .line 361
    iget-object v0, p0, Lhrv;->d:Lhpl;

    new-instance v1, Lhrx;

    invoke-direct {v1, p0, p1, p2}, Lhrx;-><init>(Lhrv;Lhxm;Lhxq;)V

    invoke-interface {v0, v1}, Lhpl;->a(Lhqj;)V

    .line 397
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->C()V

    .line 398
    return-void
.end method

.method private a(Lhxq;)V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0}, Lhpl;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    iget-boolean v0, p0, Lhrv;->n:Z

    if-eqz v0, :cond_1

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhrv;->n:Z

    .line 421
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0}, Lhpl;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->S()V

    .line 423
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->d()V

    .line 440
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->T()V

    .line 426
    invoke-virtual {p0}, Lhrv;->e()V

    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0}, Lhpl;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->X()V

    goto :goto_0

    .line 432
    :cond_2
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->Y()V

    goto :goto_0

    .line 436
    :cond_3
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->L()V

    .line 437
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->R()V

    .line 438
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->r()V

    goto :goto_0
.end method

.method private a(Lhxr;)V
    .locals 4

    .prologue
    .line 521
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0}, Lhpl;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->U()V

    .line 528
    :goto_0
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->G()V

    .line 529
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lhrv;->e:Ljava/text/NumberFormat;

    invoke-interface {p1}, Lhxr;->getValorLimiteMax()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lhrv;->c:Lhqy;

    invoke-interface {v1, v0}, Lhqy;->a(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->n()V

    goto :goto_0
.end method

.method static synthetic b(Lhrv;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lhrv;->l:Ljava/util/List;

    return-object v0
.end method

.method private b(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->G()V

    .line 576
    invoke-direct {p0}, Lhrv;->n()V

    .line 577
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;->canShowMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhqy;->f(Ljava/lang/String;)V

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->E()V

    goto :goto_0
.end method

.method static synthetic b(Lhrv;Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lhrv;->b(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    return-void
.end method

.method private b(Lhxm;Lhxq;)V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->G()V

    .line 611
    invoke-direct {p0}, Lhrv;->u()V

    .line 612
    invoke-direct {p0, p1, p2}, Lhrv;->a(Lhxm;Lhxq;)V

    .line 613
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->t()V

    .line 614
    invoke-virtual {p0}, Lhrv;->d()V

    .line 615
    return-void
.end method

.method private c(I)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0, p1}, Lhpl;->a(I)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v0

    iput-object v0, p0, Lhrv;->f:Lcom/santander/app/contacorrente/domain/Conta;

    .line 117
    return-void
.end method

.method private c(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->G()V

    .line 619
    iget v0, p0, Lhrv;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 620
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->B()V

    .line 622
    :cond_0
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->u()V

    .line 623
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;->canShowMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhqy;->f(Ljava/lang/String;)V

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_1
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->E()V

    goto :goto_0
.end method

.method static synthetic c(Lhrv;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lhrv;->x()V

    return-void
.end method

.method static synthetic c(Lhrv;Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lhrv;->c(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    return-void
.end method

.method static synthetic d(Lhrv;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lhrv;->u()V

    return-void
.end method

.method static synthetic e(Lhrv;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lhrv;->w()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 546
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->F()V

    .line 547
    invoke-static {p1}, Lhyx;->a(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lhrv;->g:F

    .line 548
    iget-object v0, p0, Lhrv;->d:Lhpl;

    const/4 v1, 0x1

    iget v2, p0, Lhrv;->g:F

    const-string v3, "0"

    .line 550
    invoke-static {v3}, Lhyx;->e(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lhrv;->i:Ljava/lang/String;

    .line 551
    invoke-static {v4}, Lhyx;->e(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lhrz;

    invoke-direct {v5, p0}, Lhrz;-><init>(Lhrv;)V

    .line 548
    invoke-interface/range {v0 .. v5}, Lhpl;->a(IFIILhpn;)V

    .line 563
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 85
    .line 87
    :try_start_0
    iget-object v0, p0, Lhrv;->c:Lhqy;

    check-cast v0, Landroid/app/Activity;

    .line 88
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    const-string v2, "extra_type_emprestimo"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 96
    :goto_0
    iget-object v1, p0, Lhrv;->d:Lhpl;

    invoke-interface {v1, v0}, Lhpl;->d(I)V

    .line 97
    return-void

    .line 93
    :catch_0
    move-exception v0

    move v0, v1

    .line 94
    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lhrv;->c:Lhqy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhqy;->a(I)V

    .line 195
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->Z()V

    .line 196
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->u()V

    .line 197
    iget v0, p0, Lhrv;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->B()V

    .line 199
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->w()V

    .line 200
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->y()V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->q()V

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lhrv;->d:Lhpl;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lhpl;->b(I)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lhrv;->d:Lhpl;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lhpl;->b(I)V

    goto :goto_0
.end method

.method private p()V
    .locals 7

    .prologue
    .line 282
    new-instance v0, Lhsf;

    invoke-direct {v0}, Lhsf;-><init>()V

    iget-object v1, p0, Lhrv;->c:Lhqy;

    .line 283
    invoke-interface {v1}, Lhqy;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lhrv;->d:Lhpl;

    .line 284
    invoke-interface {v2}, Lhpl;->g()Lhxm;

    move-result-object v2

    iget-object v3, p0, Lhrv;->d:Lhpl;

    .line 285
    invoke-interface {v3}, Lhpl;->h()Lhxq;

    move-result-object v3

    iget v4, p0, Lhrv;->g:F

    iget-object v5, p0, Lhrv;->h:Ljava/lang/String;

    .line 287
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lhrw;

    invoke-direct {v6, p0}, Lhrw;-><init>(Lhrv;)V

    .line 283
    invoke-virtual/range {v0 .. v6}, Lhsf;->a(Landroid/content/Context;Lhxr;Lhxr;FILhsh;)V

    .line 306
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0}, Lhpl;->a()Ljava/util/List;

    move-result-object v0

    .line 310
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 311
    iget-object v1, p0, Lhrv;->c:Lhqy;

    invoke-interface {v1, v0}, Lhqy;->a([Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhrv;->c(I)V

    .line 313
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0}, Lhpl;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lhrv;->l:Ljava/util/List;

    .line 317
    iget-object v0, p0, Lhrv;->l:Ljava/util/List;

    iget-object v1, p0, Lhrv;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 318
    iget-object v1, p0, Lhrv;->c:Lhqy;

    invoke-interface {v1, v0}, Lhqy;->b([Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lhrv;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lhrv;->l:Ljava/util/List;

    iget-object v1, p0, Lhrv;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 321
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 322
    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lhrv;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lhrv;->h:Ljava/lang/String;

    move v0, v1

    .line 325
    :cond_0
    iget-object v1, p0, Lhrv;->c:Lhqy;

    invoke-interface {v1, v0}, Lhqy;->a(I)V

    .line 327
    :cond_1
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lhrv;->m:Ljava/util/List;

    iget-object v1, p0, Lhrv;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lhrv;->c:Lhqy;

    invoke-interface {v1, v0}, Lhqy;->c([Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Lhrv;->t()V

    .line 333
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 336
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 337
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 338
    const/16 v0, 0x1d

    .line 344
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lhrv;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 346
    if-gez v0, :cond_2

    .line 347
    iget-object v0, p0, Lhrv;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 349
    :goto_1
    iget-object v0, p0, Lhrv;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lhrv;->i:Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0, v1}, Lhqy;->b(I)V

    .line 351
    return-void

    .line 339
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 340
    const/16 v0, 0x1e

    goto :goto_0

    .line 342
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private u()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0}, Lhpl;->d()Ljava/util/List;

    move-result-object v0

    .line 355
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 356
    iget-object v1, p0, Lhrv;->c:Lhqy;

    invoke-interface {v1, v0}, Lhqy;->d([Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    .line 494
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->F()V

    .line 495
    iget-object v0, p0, Lhrv;->d:Lhpl;

    iget-object v1, p0, Lhrv;->f:Lcom/santander/app/contacorrente/domain/Conta;

    new-instance v2, Lhry;

    invoke-direct {v2, p0}, Lhry;-><init>(Lhrv;)V

    invoke-interface {v0, v1, v2}, Lhpl;->a(Lcom/santander/app/contacorrente/domain/Conta;Lhpm;)V

    .line 518
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 566
    invoke-direct {p0}, Lhrv;->r()V

    .line 567
    iget-object v0, p0, Lhrv;->c:Lhqy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhqy;->a(I)V

    .line 568
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->p()V

    .line 569
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->v()V

    .line 570
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->x()V

    .line 571
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->G()V

    .line 572
    return-void
.end method

.method private x()V
    .locals 6

    .prologue
    .line 585
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_Acao"

    const-string v1, "Simular"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_Valor"

    iget v1, p0, Lhrv;->g:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_Consignado_MesPrimeiroVencimento"

    iget-object v1, p0, Lhrv;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_QuantidadeParcelas"

    iget-object v1, p0, Lhrv;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->F()V

    .line 591
    iget-object v0, p0, Lhrv;->d:Lhpl;

    const/4 v1, 0x2

    iget v2, p0, Lhrv;->g:F

    iget-object v3, p0, Lhrv;->h:Ljava/lang/String;

    .line 593
    invoke-static {v3}, Lhyx;->e(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lhrv;->i:Ljava/lang/String;

    .line 594
    invoke-static {v4}, Lhyx;->e(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lhsa;

    invoke-direct {v5, p0}, Lhsa;-><init>(Lhrv;)V

    .line 591
    invoke-interface/range {v0 .. v5}, Lhpl;->a(IFIILhpn;)V

    .line 606
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhrv;->c(I)V

    .line 69
    invoke-direct {p0}, Lhrv;->q()V

    .line 70
    invoke-direct {p0}, Lhrv;->s()V

    .line 71
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->q()V

    .line 72
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->Z()V

    .line 73
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->u()V

    .line 75
    invoke-virtual {p0}, Lhrv;->c()V

    .line 76
    invoke-direct {p0}, Lhrv;->v()V

    .line 77
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0, p1}, Lhpl;->a(I)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lhrv;->f:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v1, v0}, Lcom/santander/app/contacorrente/domain/Conta;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhrv;->n:Z

    .line 125
    iput-object v0, p0, Lhrv;->f:Lcom/santander/app/contacorrente/domain/Conta;

    .line 126
    invoke-direct {p0}, Lhrv;->v()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 177
    :try_start_0
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0, p1}, Lhpl;->a(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lhrv;->g:F

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhrv;->n:Z

    .line 179
    invoke-direct {p0, p1}, Lhrv;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lhov; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lhow; {:try_start_0 .. :try_end_0} :catch_2

    .line 191
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-direct {p0}, Lhrv;->n()V

    goto :goto_0

    .line 182
    :catch_1
    move-exception v0

    .line 183
    invoke-direct {p0}, Lhrv;->n()V

    .line 184
    iget-object v1, p0, Lhrv;->e:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Lhov;->b()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lhrv;->c:Lhqy;

    invoke-interface {v1, v0}, Lhqy;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :catch_2
    move-exception v0

    .line 187
    invoke-direct {p0}, Lhrv;->n()V

    .line 188
    iget-object v1, p0, Lhrv;->e:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Lhow;->b()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lhrv;->c:Lhqy;

    invoke-interface {v1, v0}, Lhqy;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public b(I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 261
    if-ne p1, v4, :cond_2

    .line 262
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0}, Lhpl;->f()Lhxr;

    move-result-object v0

    .line 263
    if-nez v0, :cond_1

    .line 264
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->h()V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v1, p0, Lhrv;->e:Ljava/text/NumberFormat;

    invoke-interface {v0}, Lhxr;->getValorLimiteMax()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lhrv;->c:Lhqy;

    invoke-interface {v1, v0}, Lhqy;->a(Ljava/lang/String;)V

    .line 269
    iget v0, p0, Lhrv;->k:I

    if-ne v0, v4, :cond_0

    .line 270
    invoke-direct {p0}, Lhrv;->p()V

    goto :goto_0

    .line 273
    :cond_2
    iget v0, p0, Lhrv;->k:I

    if-ne v0, v4, :cond_3

    .line 274
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->L()V

    goto :goto_0

    .line 276
    :cond_3
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->finish()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 131
    iget-object v0, p0, Lhrv;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhrv;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_QuantidadeParcelas_Acao"

    invoke-static {v0, p1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhrv;->n:Z

    .line 136
    iput-object p1, p0, Lhrv;->h:Ljava/lang/String;

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->t()V

    .line 139
    iget v0, p0, Lhrv;->k:I

    if-ne v0, v1, :cond_0

    .line 140
    invoke-direct {p0}, Lhrv;->x()V

    goto :goto_0

    .line 143
    :cond_2
    iget v0, p0, Lhrv;->k:I

    if-ne v0, v1, :cond_3

    .line 144
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->B()V

    .line 146
    :cond_3
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->Z()V

    .line 147
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->u()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 101
    iget v0, p0, Lhrv;->k:I

    if-ne v0, v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iput v1, p0, Lhrv;->k:I

    .line 104
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->j()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lhrv;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhrv;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_CP_DiaVencimento_Acao"

    invoke-static {v0, p1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iput-object p1, p0, Lhrv;->i:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lhrv;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget v0, p0, Lhrv;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 160
    invoke-direct {p0}, Lhrv;->x()V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 109
    iget v0, p0, Lhrv;->k:I

    if-ne v0, v1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iput v1, p0, Lhrv;->k:I

    .line 112
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->k()V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lhrv;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhrv;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_Consignado_MesPrimeiroVencimento_Acao"

    invoke-static {v0, p1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lhrv;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0}, Lhpl;->h()Lhxq;

    move-result-object v0

    invoke-interface {v0}, Lhxq;->getTypeSecure()I

    move-result v0

    .line 404
    iget-object v1, p0, Lhrv;->c:Lhqy;

    invoke-interface {v1}, Lhqy;->b()V

    .line 405
    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->c()V

    .line 407
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->Z()V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 409
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->e()V

    .line 410
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->ab()V

    goto :goto_0

    .line 411
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->f()V

    .line 413
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->ac()V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Lhrv;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 217
    invoke-direct {p0}, Lhrv;->t()V

    .line 218
    invoke-direct {p0}, Lhrv;->x()V

    .line 243
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-direct {p0}, Lhrv;->o()V

    .line 221
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0}, Lhpl;->i()Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v0

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->isRefinanciamento()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_Valor"

    iget v1, p0, Lhrv;->g:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_QuantidadeParcelas"

    iget-object v1, p0, Lhrv;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_Produto"

    const-string v1, "Refinanciamento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->A()V

    goto :goto_0

    .line 228
    :cond_1
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_Valor"

    iget v1, p0, Lhrv;->g:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_QuantidadeParcelas"

    iget-object v1, p0, Lhrv;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_CP_DiaVencimento"

    iget-object v1, p0, Lhrv;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_Produto"

    const-string v1, "Consignado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->z()V

    goto :goto_0

    .line 236
    :cond_2
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_Valor"

    iget v1, p0, Lhrv;->g:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_QuantidadeParcelas"

    iget-object v1, p0, Lhrv;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_CP_DiaVencimento"

    iget-object v1, p0, Lhrv;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "CreditoFinanciamento_Emprestimos_Simulacao_Produto"

    const-string v1, "CreditoPessoal"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->z()V

    goto/16 :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 247
    iget v0, p0, Lhrv;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lhrv;->c()V

    .line 249
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->L()V

    .line 257
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lhrv;->c:Lhqy;

    if-nez v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-direct {p0}, Lhrv;->o()V

    .line 447
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->ad()V

    goto :goto_0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0}, Lhpl;->i()Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v0

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->isRefinanciamento()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_Continuar_Acao"

    const-string v1, "Refinanciamento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :goto_0
    return-void

    .line 456
    :cond_0
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_Continuar_Acao"

    const-string v1, "Consignado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_1
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_Continuar_Acao"

    const-string v1, "CreditoPessoal"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0}, Lhpl;->i()Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v0

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->isRefinanciamento()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_ContinuarProtegido_Acao"

    const-string v1, "Refinanciamento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :goto_0
    return-void

    .line 469
    :cond_0
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_ContinuarProtegido_Acao"

    const-string v1, "Consignado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_1
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_ContinuarProtegido_Acao"

    const-string v1, "CreditoPessoal"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public l()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lhrv;->c:Lhqy;

    invoke-interface {v0}, Lhqy;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lhrv;->d:Lhpl;

    invoke-interface {v0}, Lhpl;->i()Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v0

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->isRefinanciamento()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_SimularSemSeguro_Acao"

    const-string v1, "Refinanciamento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :goto_0
    return-void

    .line 482
    :cond_0
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_SimularSemSeguro_Acao"

    const-string v1, "Consignado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_1
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_SimularSemSeguro_Acao"

    const-string v1, "CreditoPessoal"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
