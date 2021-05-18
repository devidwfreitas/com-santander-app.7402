.class public Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "contract-summary-step-tag"

.field public static final b:Ljava/lang/String; = "contract-summary-beneficiaries-tag"

.field public static final c:Ljava/lang/String; = "quotation-is-tag"

.field public static final d:Ljava/lang/String; = "question-tag"

.field public static final e:Ljava/lang/String; = "offers_is_tag"


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Landroid/app/Dialog;

.field private D:Z

.field private E:Z

.field private f:Lmhz;

.field private g:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private w:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

.field private x:Landroid/support/v4/widget/NestedScrollView;

.field private y:Lkye;

.field private z:Lkry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 59
    new-instance v0, Lmhz;

    invoke-direct {v0}, Lmhz;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->f:Lmhz;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->A:Z

    .line 149
    iput-boolean v1, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->D:Z

    .line 150
    iput-boolean v1, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->E:Z

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)Lkry;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->z:Lkry;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;Lkry;)Lkry;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->z:Lkry;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Z)V

    .line 221
    new-instance v0, Lkqg;

    invoke-direct {v0}, Lkqg;-><init>()V

    .line 222
    const-string v1, ""

    invoke-virtual {v0, v1}, Lkqg;->d(Ljava/lang/String;)V

    .line 223
    const-string v1, "939"

    invoke-virtual {v0, v1}, Lkqg;->e(Ljava/lang/String;)V

    .line 224
    const-string v1, ""

    invoke-virtual {v0, v1}, Lkqg;->f(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->y:Lkye;

    new-instance v2, Llix;

    invoke-direct {v2, p0, p1}, Llix;-><init>(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;Ljava/lang/String;)V

    new-instance v3, Lliy;

    invoke-direct {v3, p0}, Lliy;-><init>(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)V

    invoke-interface {v1, p1, v0, v2, v3}, Lkye;->a(Ljava/lang/String;Lkqg;Lkxl;Lkxl;)V

    .line 280
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->g:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->g:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Z)V

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-static {p0, p1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 317
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090362

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_1
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)Lmhz;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->f:Lmhz;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 334
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->g:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Z)V

    .line 337
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->g:Lbr/com/zup/multistatelayout/MultiStateLayout;

    const v1, 0x7f10089f

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 337
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_1
.end method

.method private j()V
    .locals 2

    .prologue
    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 129
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 131
    const v1, 0x7f09052c

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private k()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->n()V

    .line 139
    return-void
.end method

.method private n()V
    .locals 6

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090870

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09095e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    iget-object v3, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->w:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->a([Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private o()V
    .locals 1

    .prologue
    .line 162
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->g:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 163
    const v0, 0x7f1009a9

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->w:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

    .line 164
    const v0, 0x7f10009f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->x:Landroid/support/v4/widget/NestedScrollView;

    .line 165
    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->y:Lkye;

    new-instance v1, Lliz;

    invoke-direct {v1, p0}, Lliz;-><init>(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)V

    new-instance v2, Llja;

    invoke-direct {v2, p0}, Llja;-><init>(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)V

    invoke-interface {v0, v1, v2}, Lkye;->a(Lkxl;Lkxl;)V

    .line 301
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 377
    if-eqz p1, :cond_0

    .line 378
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 379
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 380
    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 381
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Llje;

    invoke-direct {v2, p0}, Llje;-><init>(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)V

    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 391
    new-instance v1, Lljf;

    invoke-direct {v1, p0, v0, p1}, Lljf;-><init>(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;Landroid/support/v7/app/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 402
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 404
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f050024

    const v2, 0x7f050025

    const v3, 0x7f050023

    const v4, 0x7f050026

    .line 173
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f10020e

    .line 174
    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 177
    return-void
.end method

.method public a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 355
    if-eqz p1, :cond_0

    .line 356
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 358
    :cond_0
    invoke-static {}, Llou;->b()Llou;

    move-result-object v0

    .line 359
    new-instance v1, Lljd;

    invoke-direct {v1, p0, p2}, Lljd;-><init>(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Llou;->a(Lloy;)V

    .line 367
    const-string v1, "contract-summary-beneficiaries-tag"

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public a(Lmfn;Z)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->w:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

    invoke-virtual {v0, p1, p2}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->a(Lmfn;Z)V

    .line 169
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 75
    if-eqz p1, :cond_2

    .line 76
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->C:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 77
    invoke-static {p0}, Lmhj;->a(Lgrs;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->C:Landroid/app/Dialog;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->C:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->C:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->C:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->C:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->C:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->C:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->A:Z

    return v0
.end method

.method public b()Landroid/support/v4/widget/NestedScrollView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->x:Landroid/support/v4/widget/NestedScrollView;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->E:Z

    .line 154
    return-void
.end method

.method public c()Lmhz;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->f:Lmhz;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->D:Z

    .line 216
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 181
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->w:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->c()V

    .line 212
    return-void
.end method

.method public f()Lkxl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lljb;

    invoke-direct {v0, p0}, Lljb;-><init>(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)V

    return-object v0
.end method

.method public g()Lkxl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Lljc;

    invoke-direct {v0, p0}, Lljc;-><init>(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)V

    return-object v0
.end method

.method public h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "offers_is_tag"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 345
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->w:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->b()V

    .line 346
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->w:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

    sget-object v1, Lmfn;->WAVE_GREEN_ONE:Lmfn;

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->a(Lmfn;Z)V

    .line 347
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->B:Ljava/lang/String;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 190
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->finish()V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->g:Lbr/com/zup/multistatelayout/MultiStateLayout;

    invoke-virtual {v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a()Laor;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    if-ne v0, v1, :cond_0

    .line 194
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->D:Z

    if-eqz v0, :cond_2

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->D:Z

    .line 196
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    new-instance v1, Lkxd;

    invoke-direct {v1, v2}, Lkxd;-><init>(Z)V

    invoke-virtual {v0, v1}, Lnfg;->a(Ljava/lang/Object;)V

    .line 199
    :cond_2
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->E:Z

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->w:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->c()V

    .line 203
    iput-boolean v2, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->A:Z

    .line 204
    invoke-super {p0}, Lgrs;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v0, 0x7f040045

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->setContentView(I)V

    .line 101
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->j()V

    .line 102
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->o()V

    .line 103
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->k()V

    .line 105
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->B:Ljava/lang/String;

    .line 109
    :cond_0
    new-instance v0, Lkyf;

    invoke-direct {v0}, Lkyf;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->y:Lkye;

    .line 111
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->B:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const-string v0, "AP"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->B:Ljava/lang/String;

    .line 113
    const-string v0, "AP"

    const-string v1, "TelaContratacaoAP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "Seguros_Contratacao_Vida_Acao"

    const-string v1, "TelaContratacaoAP"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->B:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    const-string v0, "VIDA"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->B:Ljava/lang/String;

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->B:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->p()V

    .line 123
    return-void
.end method
