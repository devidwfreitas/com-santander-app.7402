.class public Lcom/santander/app/InvestimentosConsolidadaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Ljava/io/Serializable;


# static fields
.field private static final c:J = 0x1L


# instance fields
.field public a:Landroid/app/Dialog;

.field private final b:Ljava/lang/String;

.field private d:I

.field private e:Lfwb;

.field private f:Landroid/app/Activity;

.field private g:Lfwa;

.field private w:Lfin;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 52
    const-string v0, "InvestimentosConsolidadaActivity"

    iput-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->b:Ljava/lang/String;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->d:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->a:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/InvestimentosConsolidadaActivity;Lfwa;)Lfwa;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->g:Lfwa;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/InvestimentosConsolidadaActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->r()Ljky;

    move-result-object v1

    invoke-interface {v1}, Ljky;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->r()Ljky;

    move-result-object v1

    invoke-interface {v1}, Ljky;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->r()Ljky;

    move-result-object v1

    invoke-interface {v1}, Ljky;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdd;

    .line 296
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Ljdd;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v1, v0

    .line 297
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 300
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static synthetic b(Lcom/santander/app/InvestimentosConsolidadaActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    .line 304
    const v0, 0x7f100db5

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 306
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 308
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f040293

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 310
    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfwk;

    .line 312
    const v5, 0x7f100d9a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 313
    new-instance v6, Lfik;

    invoke-direct {v6, p0}, Lfik;-><init>(Lcom/santander/app/InvestimentosConsolidadaActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    const v5, 0x7f10006e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 340
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 342
    new-instance v1, Lfil;

    invoke-direct {v1, p0}, Lfil;-><init>(Lcom/santander/app/InvestimentosConsolidadaActivity;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 356
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/InvestimentosConsolidadaActivity;)Lfwa;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->g:Lfwa;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const v3, 0x7f100da6

    const/4 v2, 0x0

    .line 382
    const v0, 0x7f100da7

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 383
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 385
    iget-object v1, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->g:Lfwa;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->g:Lfwa;

    invoke-virtual {v1}, Lfwa;->a()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->g:Lfwa;

    invoke-virtual {v1}, Lfwa;->a()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 387
    invoke-virtual {p0, v3}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 388
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move v3, v2

    .line 390
    :goto_0
    iget-object v1, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->g:Lfwa;

    invoke-virtual {v1}, Lfwa;->a()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 391
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 393
    const v2, 0x7f04028e

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 395
    const v1, 0x7f100db7

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 396
    iget-object v2, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->g:Lfwa;

    invoke-virtual {v2}, Lfwa;->a()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfwg;

    invoke-virtual {v2}, Lfwg;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    const v1, 0x7f100daf

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 399
    iget-object v2, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->g:Lfwa;

    invoke-virtual {v2}, Lfwa;->a()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfwg;

    invoke-virtual {v2}, Lfwg;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    const v1, 0x7f100db4

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 402
    iget-object v2, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->g:Lfwa;

    invoke-virtual {v2}, Lfwa;->a()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfwg;

    invoke-virtual {v2}, Lfwg;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    const v1, 0x7f100db6

    :try_start_0
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->g:Lfwa;

    invoke-virtual {v2}, Lfwa;->a()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfwg;

    invoke-virtual {v2}, Lfwg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "av"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 413
    new-instance v1, Lfim;

    invoke-direct {v1, p0}, Lfim;-><init>(Lcom/santander/app/InvestimentosConsolidadaActivity;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 390
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 432
    :cond_0
    invoke-virtual {p0, v3}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 433
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    invoke-virtual {p0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :cond_1
    return-void

    .line 408
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static synthetic d(Lcom/santander/app/InvestimentosConsolidadaActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->f:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/InvestimentosConsolidadaActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->c()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const v7, 0x7f100daa

    const v5, 0x7f100da6

    const v4, 0x7f040291

    const v9, 0x7f09085a

    const/4 v3, 0x0

    .line 74
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->d:I

    .line 85
    iput-object p0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->f:Landroid/app/Activity;

    .line 87
    iget v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->d:I

    packed-switch v0, :pswitch_data_0

    .line 278
    invoke-virtual {p0, v4}, Lcom/santander/app/InvestimentosConsolidadaActivity;->setContentView(I)V

    .line 279
    invoke-virtual {p0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 280
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 281
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 283
    invoke-virtual {p0, v9}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 288
    :goto_0
    return-void

    .line 90
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/santander/app/InvestimentosConsolidadaActivity;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v6

    .line 92
    invoke-virtual {v6, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 93
    invoke-virtual {v6, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 95
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0}, Lhau;->j()Lfwb;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->e:Lfwb;

    .line 97
    invoke-virtual {p0, v7}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    const v1, 0x7f100dab

    invoke-virtual {p0, v1}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    const v2, 0x7f100dc5

    invoke-virtual {p0, v2}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    const v3, 0x7f100dc7

    invoke-virtual {p0, v3}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 102
    const v4, 0x7f100db4

    invoke-virtual {p0, v4}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 103
    const v5, 0x7f100dc6

    invoke-virtual {p0, v5}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 105
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-static {}, Lnak;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->e:Lfwb;

    invoke-virtual {v0}, Lfwb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->e:Lfwb;

    invoke-virtual {v0}, Lfwb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->e:Lfwb;

    invoke-virtual {v0}, Lfwb;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->e:Lfwb;

    invoke-virtual {v0}, Lfwb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p0, v9}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v6, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->b()V

    goto/16 :goto_0

    .line 120
    :pswitch_1
    const v0, 0x7f04028f

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->setContentView(I)V

    .line 122
    invoke-virtual {p0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    .line 123
    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 124
    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 126
    invoke-virtual {p0, v7}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    const v1, 0x7f100dab

    invoke-virtual {p0, v1}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 136
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-static {}, Lnak;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0, v9}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :pswitch_2
    const v0, 0x7f04028a

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->setContentView(I)V

    .line 157
    invoke-virtual {p0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 158
    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 159
    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 161
    const v0, 0x7f100da5

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->z:Landroid/widget/TextView;

    .line 163
    invoke-static {}, Lnak;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->y:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->z:Landroid/widget/TextView;

    invoke-static {}, Lnak;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {p0, v9}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    invoke-virtual {p0, v5}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    const v0, 0x7f100da7

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 177
    iget-object v1, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->r()Ljky;

    move-result-object v1

    invoke-interface {v1}, Ljky;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdd;

    .line 179
    invoke-virtual {v1}, Ljdd;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 183
    const v3, 0x7f04028e

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 185
    const v2, 0x7f100db7

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 186
    invoke-virtual {v1}, Ljdd;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljdd;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const v2, 0x7f100daf

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 189
    invoke-virtual {v1}, Ljdd;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const v2, 0x7f100db4

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 192
    invoke-virtual {v1}, Ljdd;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const v2, 0x7f100db6

    :try_start_0
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljdd;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    :goto_3
    new-instance v2, Lfii;

    invoke-direct {v2, p0, v1}, Lfii;-><init>(Lcom/santander/app/InvestimentosConsolidadaActivity;Ljdd;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 186
    :cond_1
    const-string v3, ""

    goto :goto_2

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->r()Ljky;

    move-result-object v0

    invoke-interface {v0}, Ljky;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 223
    const v0, 0x7f100da8

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 224
    iget-object v1, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->r()Ljky;

    move-result-object v1

    invoke-interface {v1}, Ljky;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdc;

    .line 225
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 226
    const v4, 0x7f040289

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 227
    const v2, 0x7f100da4

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 228
    invoke-virtual {v1}, Ljdc;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const v2, 0x7f100da3

    :try_start_1
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljdc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 238
    :goto_5
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 244
    :cond_3
    invoke-virtual {p0, v5}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    invoke-virtual {p0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_4
    const v0, 0x7f1006ae

    invoke-virtual {p0, v0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentImageView;

    .line 253
    new-instance v1, Lfij;

    invoke-direct {v1, p0}, Lfij;-><init>(Lcom/santander/app/InvestimentosConsolidadaActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SegmentImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 234
    :catch_0
    move-exception v1

    goto :goto_5

    .line 198
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4

    .prologue
    .line 362
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 363
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 364
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 365
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 367
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 369
    iget-object v2, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnak;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnak;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->y:Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Landroid/widget/DatePicker;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->x:Ljava/lang/String;

    .line 375
    new-instance v0, Lfin;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfin;-><init>(Lcom/santander/app/InvestimentosConsolidadaActivity;Lfii;)V

    iput-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->w:Lfin;

    .line 376
    iget-object v0, p0, Lcom/santander/app/InvestimentosConsolidadaActivity;->w:Lfin;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfin;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 378
    :cond_0
    return-void
.end method
