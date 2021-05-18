.class public Lzp;
.super Lacr;
.source "SourceFile"


# instance fields
.field private a:Lyz;

.field private c:Landroid/support/v4/app/FragmentManager;

.field private d:Landroid/view/View;

.field private e:Landroid/support/v4/app/Fragment;

.field private f:Lys;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lack;Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 27
    new-instance v0, Lyz;

    invoke-direct {v0}, Lyz;-><init>()V

    iput-object v0, p0, Lzp;->a:Lyz;

    .line 37
    iput-object p2, p0, Lzp;->c:Landroid/support/v4/app/FragmentManager;

    .line 38
    invoke-virtual {p0}, Lzp;->e()Lack;

    move-result-object v0

    sget v1, Lla;->validation_loading:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzp;->d:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lzp;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    sget v0, Lla;->validacao_layout_content:I

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lzp;->e:Landroid/support/v4/app/Fragment;

    .line 42
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0}, Lzp;->b()V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-direct {p0}, Lzp;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lzp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lzp;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lzp;Lys;)Lys;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lzp;->f:Lys;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 50
    invoke-virtual {p0}, Lzp;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    invoke-virtual {v0}, Lacg;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lzp;->a:Lyz;

    invoke-virtual {p0}, Lzp;->e()Lack;

    move-result-object v2

    invoke-virtual {v2}, Lack;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lzq;

    invoke-direct {v3, p0}, Lzq;-><init>(Lzp;)V

    invoke-virtual {v1, v2, v0, v3}, Lyz;->a(Landroid/content/Context;Ljava/lang/Boolean;Lzb;)V

    .line 76
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lzp;->e:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    new-instance v0, Lze;

    invoke-virtual {p0}, Lzp;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lzp;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lze;-><init>(Lack;Ljava/lang/String;)V

    .line 98
    :goto_0
    iget-object v1, p0, Lzp;->c:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 99
    sget v2, Lla;->validacao_layout_content:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 100
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 101
    iget-object v0, p0, Lzp;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_0
    return-void

    .line 96
    :cond_1
    new-instance v0, Lzd;

    invoke-virtual {p0}, Lzp;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lzp;->f:Lys;

    invoke-direct {v0, v1, v2}, Lzd;-><init>(Lack;Lys;)V

    goto :goto_0
.end method

.method static synthetic a(Lzp;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lzp;->c()V

    return-void
.end method

.method static synthetic a(Lzp;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lzp;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lzp;->e:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lze;

    invoke-virtual {p0}, Lzp;->e()Lack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lze;-><init>(Lack;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lzp;->c:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 83
    sget v2, Lla;->validacao_layout_content:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 84
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 85
    iget-object v0, p0, Lzp;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :cond_0
    return-void
.end method

.method static synthetic b(Lzp;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lzp;->a()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lzp;->e()Lack;

    move-result-object v0

    new-instance v1, Lzr;

    invoke-direct {v1, p0}, Lzr;-><init>(Lzp;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 113
    return-void
.end method
