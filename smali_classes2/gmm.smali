.class public Lgmm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lglb;
.implements Lglc;


# instance fields
.field private a:Lfss;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Landroid/content/Context;

.field private f:Lgla;

.field private g:Lcom/santander/app/widget/Indicator;

.field private h:I

.field private i:Landroid/app/Dialog;

.field private j:I

.field private k:Landroid/support/v4/view/ViewPager;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lfss;

    invoke-direct {v0}, Lfss;-><init>()V

    iput-object v0, p0, Lgmm;->a:Lfss;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgmm;->b:Ljava/util/List;

    .line 66
    iput-object p1, p0, Lgmm;->e:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lgmm;->b:Ljava/util/List;

    .line 68
    return-void
.end method

.method static synthetic a(Lgmm;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lgmm;->d:I

    return p1
.end method

.method static synthetic a(Lgmm;)Lcom/santander/app/widget/Indicator;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lgmm;->g:Lcom/santander/app/widget/Indicator;

    return-object v0
.end method

.method private a(Lgml;)V
    .locals 2

    .prologue
    .line 467
    invoke-virtual {p1}, Lgml;->g()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 468
    invoke-virtual {p1}, Lgml;->g()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 470
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhau;->c(Ljava/lang/Boolean;)V

    .line 472
    :cond_0
    return-void
.end method

.method static synthetic a(Lgmm;Lgml;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lgmm;->a(Lgml;)V

    return-void
.end method

.method static synthetic a(Lgmm;Lgmv;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lgmm;->c(Lgmv;)V

    return-void
.end method

.method static synthetic a(Lgmm;Lgmv;Z)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lgmm;->a(Lgmv;Z)V

    return-void
.end method

.method private a(Lgmv;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 401
    invoke-static {p1}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v0

    instance-of v0, v0, Lgmh;

    if-nez v0, :cond_0

    .line 402
    invoke-static {p1}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v0

    instance-of v0, v0, Lgmg;

    if-nez v0, :cond_0

    .line 403
    invoke-static {p1}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v0

    instance-of v0, v0, Lgmf;

    if-eqz v0, :cond_1

    .line 404
    :cond_0
    invoke-static {p1}, Lgmv;->g(Lgmv;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    invoke-static {p1}, Lgmv;->l(Lgmv;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 406
    invoke-static {p1}, Lgmv;->l(Lgmv;)Landroid/widget/TextView;

    move-result-object v0

    .line 407
    invoke-static {p1}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v1

    invoke-virtual {v1}, Lgml;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    :goto_0
    invoke-static {p1}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v0

    invoke-virtual {v0}, Lgml;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    invoke-static {p1}, Lgmv;->g(Lgmv;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    :goto_1
    return-void

    .line 409
    :cond_1
    invoke-static {p1}, Lgmv;->g(Lgmv;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    invoke-static {p1}, Lgmv;->g(Lgmv;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v1

    invoke-virtual {v1}, Lgml;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    invoke-static {p1}, Lgmv;->l(Lgmv;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 412
    invoke-static {p1}, Lgmv;->l(Lgmv;)Landroid/widget/TextView;

    move-result-object v0

    .line 413
    invoke-static {p1}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v1

    invoke-virtual {v1}, Lgml;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 418
    :cond_2
    invoke-static {p1}, Lgmv;->g(Lgmv;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Lgmv;Z)V
    .locals 2

    .prologue
    .line 309
    invoke-static {p1}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v0

    invoke-virtual {v0}, Lgml;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lgmm;->d(I)V

    .line 311
    iget-object v0, p0, Lgmm;->i:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgmm;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    :cond_0
    iget-object v0, p0, Lgmm;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lgmm;->i:Landroid/app/Dialog;

    .line 314
    :cond_1
    iget v0, p0, Lgmm;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgmm;->j:I

    .line 315
    invoke-static {p1}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v0

    new-instance v1, Lgmu;

    invoke-direct {v1, p0, p1, p2}, Lgmu;-><init>(Lgmm;Lgmv;Z)V

    invoke-virtual {v0, v1}, Lgml;->a(Lhxy;)V

    .line 375
    return-void
.end method

.method static synthetic b(Lgmm;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lgmm;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lgmm;Lgmv;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lgmm;->b(Lgmv;)V

    return-void
.end method

.method private b(Lgmv;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 423
    invoke-static {p1}, Lgmv;->c(Lgmv;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0204f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    invoke-static {p1}, Lgmv;->b(Lgmv;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 425
    invoke-static {p1}, Lgmv;->d(Lgmv;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 426
    invoke-static {p1}, Lgmv;->g(Lgmv;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    invoke-static {p1}, Lgmv;->l(Lgmv;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 428
    return-void
.end method

.method static synthetic c(Lgmm;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lgmm;->e:Landroid/content/Context;

    return-object v0
.end method

.method private c(I)V
    .locals 3

    .prologue
    const/4 v1, 0x7

    const/4 v2, 0x1

    .line 95
    if-ne p1, v1, :cond_1

    .line 96
    iget-object v0, p0, Lgmm;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 98
    iget-object v0, p0, Lgmm;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lgmm;->b:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lgmm;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic c(Lgmm;Lgmv;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lgmm;->a(Lgmv;)V

    return-void
.end method

.method private c(Lgmv;)V
    .locals 2

    .prologue
    .line 431
    invoke-static {p1}, Lgmv;->c(Lgmv;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0204d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    invoke-static {p1}, Lgmv;->b(Lgmv;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 433
    invoke-static {p1}, Lgmv;->d(Lgmv;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lgmm;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 108
    iget-object v0, p0, Lgmm;->g:Lcom/santander/app/widget/Indicator;

    iget-object v1, p0, Lgmm;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Indicator;->setSize(I)V

    .line 109
    iget-object v0, p0, Lgmm;->k:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lgmm;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 110
    return-void
.end method

.method private d(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 378
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 379
    iput-boolean v1, p0, Lgmm;->q:Z

    .line 381
    const-string v0, "CreditoFinanciamento_AnteciparIR_Elegivel"

    iput-object v0, p0, Lgmm;->l:Ljava/lang/String;

    .line 382
    const-string v0, "CreditoFinanciamento_AnteciparIR_Indisponivel"

    iput-object v0, p0, Lgmm;->m:Ljava/lang/String;

    .line 383
    const-string v0, "CreditoFinanciamento_CarrosselHomeLogada_Acao"

    iput-object v0, p0, Lgmm;->n:Ljava/lang/String;

    .line 384
    const-string v0, "AnteciparIR"

    iput-object v0, p0, Lgmm;->p:Ljava/lang/String;

    .line 385
    const-string v0, "AntecipacaoIR"

    iput-object v0, p0, Lgmm;->o:Ljava/lang/String;

    .line 398
    :goto_0
    return-void

    .line 386
    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 387
    iput-boolean v1, p0, Lgmm;->q:Z

    .line 389
    const-string v0, "CreditoFinanciamento_Antecipar13_Elegivel"

    iput-object v0, p0, Lgmm;->l:Ljava/lang/String;

    .line 390
    const-string v0, "CreditoFinanciamento_Antecipar13_Indisponivel"

    iput-object v0, p0, Lgmm;->m:Ljava/lang/String;

    .line 391
    const-string v0, "CreditoFinanciamento_Carrossel_HomeLogada_Acao"

    iput-object v0, p0, Lgmm;->n:Ljava/lang/String;

    .line 392
    const-string v0, "Antecipar13o"

    iput-object v0, p0, Lgmm;->p:Ljava/lang/String;

    .line 393
    const-string v0, "Antecipacao13"

    iput-object v0, p0, Lgmm;->o:Ljava/lang/String;

    goto :goto_0

    .line 395
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgmm;->q:Z

    goto :goto_0
.end method

.method static synthetic d(Lgmm;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lgmm;->q:Z

    return v0
.end method

.method private e()Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lgmn;

    invoke-direct {v0, p0}, Lgmn;-><init>(Lgmm;)V

    return-object v0
.end method

.method static synthetic e(Lgmm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lgmm;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lgmm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lgmm;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lgmm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lgmm;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lgmm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lgmm;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lgmm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lgmm;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lgmm;)I
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lgmm;->j:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lgmm;->j:I

    return v0
.end method

.method static synthetic k(Lgmm;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lgmm;->j:I

    return v0
.end method

.method static synthetic l(Lgmm;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lgmm;->i:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f04011f

    return v0
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Ljava/util/List;)Landroid/support/v4/view/PagerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<*>;)",
            "Landroid/support/v4/view/PagerAdapter;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lgmo;

    invoke-direct {v0, p0, p2}, Lgmo;-><init>(Lgmm;Landroid/content/Context;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 448
    iput p1, p0, Lgmm;->d:I

    .line 449
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 114
    const v0, 0x7f1005c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    iget-object v1, p0, Lgmm;->e:Landroid/content/Context;

    const v2, 0x7f09067e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const v1, 0x7f1005c8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 117
    const v2, 0x7f02041f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    const v2, 0x7f10040a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/santander/app/widget/Indicator;

    iput-object v2, p0, Lgmm;->g:Lcom/santander/app/widget/Indicator;

    .line 120
    iget-object v2, p0, Lgmm;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lgmm;->b:Ljava/util/List;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v2, p0, Lgmm;->b:Ljava/util/List;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v2, p0, Lgmm;->b:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v2, p0, Lgmm;->b:Ljava/util/List;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v2, p0, Lgmm;->b:Ljava/util/List;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v2, p0, Lgmm;->b:Ljava/util/List;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    const v2, 0x7f1005ca

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lgmm;->k:Landroid/support/v4/view/ViewPager;

    .line 130
    iget-object v2, p0, Lgmm;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 131
    iget-object v0, p0, Lgmm;->e:Landroid/content/Context;

    iget-object v1, p0, Lgmm;->b:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lgmm;->a(Landroid/view/View;Landroid/content/Context;Ljava/util/List;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lgmm;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 134
    iget-object v1, p0, Lgmm;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 136
    iget-object v1, p0, Lgmm;->k:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lgmm;->e()Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 138
    iget-object v1, p0, Lgmm;->g:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/santander/app/widget/Indicator;->setSize(I)V

    .line 139
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lgmm;->g:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0, v4}, Lcom/santander/app/widget/Indicator;->setVisibility(I)V

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lgmm;->g:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0, v4}, Lcom/santander/app/widget/Indicator;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lgmm;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lgla;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lgmm;->f:Lgla;

    .line 459
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 443
    check-cast p1, Lfss;

    iput-object p1, p0, Lgmm;->a:Lfss;

    .line 444
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lgmm;->a:Lfss;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 77
    iput p1, p0, Lgmm;->h:I

    .line 78
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lgmm;->a(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 87
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 88
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 89
    invoke-direct {p0, v0}, Lgmm;->c(I)V

    .line 91
    :cond_0
    invoke-direct {p0}, Lgmm;->d()V

    .line 92
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lgmm;->d:I

    return v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 464
    return-void
.end method
