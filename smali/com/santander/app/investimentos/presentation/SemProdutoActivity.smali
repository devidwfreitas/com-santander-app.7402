.class public Lcom/santander/app/investimentos/presentation/SemProdutoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljko;


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/RelativeLayout;

.field private D:Landroid/widget/RelativeLayout;

.field private E:Lnfe;

.field private F:Ljkv;

.field private G:Landroid/content/Context;

.field private a:Ljava/lang/String;

.field private b:Lftc;

.field private c:Lfwb;

.field private d:Ljkm;

.field private e:Ljkn;

.field private f:Z

.field private g:Landroid/app/Dialog;

.field private w:Landroid/support/v7/app/ActionBar;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->a:Ljava/lang/String;

    .line 59
    new-instance v0, Lftc;

    invoke-direct {v0}, Lftc;-><init>()V

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->b:Lftc;

    .line 60
    new-instance v0, Lfwb;

    invoke-direct {v0}, Lfwb;-><init>()V

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->c:Lfwb;

    .line 61
    iput-object v1, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->d:Ljkm;

    .line 62
    iput-object v1, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->e:Ljkn;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->f:Z

    .line 64
    iput-object v1, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->g:Landroid/app/Dialog;

    .line 73
    iput-object v1, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->E:Lnfe;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->g:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Lftc;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->b:Lftc;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;Lftc;)Lftc;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->b:Lftc;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->g:Landroid/app/Dialog;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lftq;
    .locals 5

    .prologue
    .line 370
    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->c:Lfwb;

    invoke-virtual {v0}, Lfwb;->g()Lftm;

    move-result-object v0

    invoke-virtual {v0}, Lftm;->a()Ljava/util/Vector;

    move-result-object v3

    .line 373
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 374
    if-eqz p1, :cond_1

    .line 375
    const-string v0, "cdb10m"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "0019"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 378
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    .line 406
    :goto_1
    return-object v0

    .line 382
    :cond_0
    const-string v0, "cdb100m"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 383
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "0025"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 384
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    goto :goto_1

    .line 389
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "0011"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    goto :goto_1

    .line 392
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "0006"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    goto :goto_1

    .line 395
    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "0022"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 396
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    goto :goto_1

    .line 398
    :cond_4
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "0013"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 399
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    goto/16 :goto_1

    .line 373
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_6
    move-object v0, v2

    goto/16 :goto_1
.end method

.method public static synthetic c(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Lfwb;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->c:Lfwb;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->f()V

    return-void
.end method

.method public static synthetic e(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Lnfe;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->E:Lnfe;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 93
    iput-object p0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->i:Landroid/app/Activity;

    .line 95
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->f:Z

    .line 97
    invoke-virtual {p0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->w:Landroid/support/v7/app/ActionBar;

    .line 98
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->w:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->w:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 101
    const v0, 0x7f1003fe

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->C:Landroid/widget/RelativeLayout;

    .line 102
    const v0, 0x7f100402

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->D:Landroid/widget/RelativeLayout;

    .line 104
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->C:Landroid/widget/RelativeLayout;

    new-instance v1, Ljkh;

    invoke-direct {v1, p0}, Ljkh;-><init>(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->D:Landroid/widget/RelativeLayout;

    new-instance v1, Ljki;

    invoke-direct {v1, p0}, Ljki;-><init>(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f1003f9

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->x:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f1003fa

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->y:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f1003fb

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->z:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f1003fc

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->A:Landroid/widget/Button;

    .line 126
    const v0, 0x7f1003fd

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->B:Landroid/widget/LinearLayout;

    .line 128
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    return-void
.end method

.method private f()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 427
    invoke-virtual {p0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0905e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 428
    invoke-virtual {p0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040280

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 429
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->c:Lfwb;

    invoke-virtual {v0}, Lfwb;->g()Lftm;

    move-result-object v0

    invoke-virtual {v0}, Lftm;->a()Ljava/util/Vector;

    move-result-object v7

    .line 431
    const v0, 0x7f100d70

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 432
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 433
    invoke-virtual {p0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040287

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 434
    const v2, 0x7f100d97

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 436
    invoke-virtual {v7, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lftq;

    invoke-virtual {v3}, Lftq;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {v7, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 441
    iget-object v2, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->v:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    const v2, 0x7f10053b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 443
    const v3, 0x7f020068

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 446
    :cond_0
    new-instance v2, Ljkl;

    invoke-direct {v2, p0}, Ljkl;-><init>(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 457
    :cond_1
    new-instance v0, Lnfe;

    invoke-direct {v0, p0, v5, v6}, Lnfe;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->E:Lnfe;

    .line 458
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 470
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    const-string v1, "tipo"

    sget-object v2, Lnat;->USUARIO_CONSULTIVO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->startActivity(Landroid/content/Intent;)V

    .line 473
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const v3, 0x7f0204fd

    const/16 v2, 0x8

    .line 163
    const-string v0, "Poupan\u00e7a"

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->a:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->w:Landroid/support/v7/app/ActionBar;

    const v1, 0x7f090867

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->A:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->y:Landroid/widget/TextView;

    const v1, 0x7f09085f

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->A:Landroid/widget/Button;

    new-instance v1, Ljkj;

    invoke-direct {v1, p0}, Ljkj;-><init>(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(Lftc;)V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    invoke-virtual {p1}, Lftc;->a()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 156
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 157
    :cond_0
    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void
.end method

.method public a(Lftq;)V
    .locals 3

    .prologue
    .line 410
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    const-string v1, "listaProdutos"

    iget-object v2, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->c:Lfwb;

    invoke-virtual {v2}, Lfwb;->g()Lftm;

    move-result-object v2

    invoke-virtual {v2}, Lftm;->a()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 412
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->startActivity(Landroid/content/Intent;)V

    .line 414
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 417
    const-string v0, "Rendafixa_Aplicar"

    const-string v1, "Investimentos"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->c:Lfwb;

    invoke-virtual {v0}, Lfwb;->g()Lftm;

    move-result-object v0

    invoke-virtual {v0}, Lftm;->a()Ljava/util/Vector;

    move-result-object v0

    .line 420
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    const-string v2, "listaProdutos"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 422
    const-string v0, "cdb"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->startActivity(Landroid/content/Intent;)V

    .line 424
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    const-string v0, "Previd\u00eancia"

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->a:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->w:Landroid/support/v7/app/ActionBar;

    const v1, 0x7f090868

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->A:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->x:Landroid/widget/ImageView;

    const v1, 0x7f0204e9

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->y:Landroid/widget/TextView;

    const v1, 0x7f090862

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->z:Landroid/widget/TextView;

    const v1, 0x7f090861

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 210
    const-string v0, "RendaFixa"

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->a:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->w:Landroid/support/v7/app/ActionBar;

    const v1, 0x7f090869

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->A:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->x:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->G:Landroid/content/Context;

    const v2, 0x7f0204e9

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->y:Landroid/widget/TextView;

    const v1, 0x7f0908a3

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->A:Landroid/widget/Button;

    new-instance v1, Ljkk;

    invoke-direct {v1, p0}, Ljkk;-><init>(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->callOnClick()Z

    .line 233
    return-void
.end method

.method public goAplicacaoPoupanca(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 133
    const-string v0, "Investimentos_Poupanca_NovaPoupanca_Acao"

    const-string v1, "Aplicar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-boolean v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->f:Z

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljkm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljkm;-><init>(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;Ljkh;)V

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->d:Ljkm;

    .line 137
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->d:Ljkm;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ljkm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->g()V

    goto :goto_0
.end method

.method public goAplicacaoRendafixa(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->f:Z

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljkn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljkn;-><init>(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;Ljkh;)V

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->e:Ljkn;

    .line 147
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->e:Ljkn;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ljkn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->g()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 477
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 478
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->startActivity(Landroid/content/Intent;)V

    .line 479
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f0400a6

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->setContentView(I)V

    .line 83
    iput-object p0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->G:Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->e()V

    .line 87
    new-instance v0, Ljkw;

    invoke-direct {v0, p0}, Ljkw;-><init>(Ljko;)V

    iput-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->F:Ljkv;

    .line 88
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->F:Ljkv;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljkv;->a(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 242
    invoke-super {p0}, Lgrs;->onPause()V

    .line 243
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Lgrs;->onResume()V

    .line 238
    return-void
.end method

.method public openAplicacaoRendaFixa(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 461
    iget-object v0, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->E:Lnfe;

    invoke-virtual {v0}, Lnfe;->b()V

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    .line 463
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    const-string v2, "listaProdutos"

    iget-object v3, p0, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->c:Lfwb;

    invoke-virtual {v3}, Lfwb;->g()Lftm;

    move-result-object v3

    invoke-virtual {v3}, Lftm;->a()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 465
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 466
    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->startActivity(Landroid/content/Intent;)V

    .line 467
    return-void
.end method
