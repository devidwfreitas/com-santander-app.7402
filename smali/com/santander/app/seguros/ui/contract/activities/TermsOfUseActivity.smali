.class public Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Llmd;


# static fields
.field public static final a:Ljava/lang/String; = "products-key"

.field public static final b:Ljava/lang/String; = "prize-value"


# instance fields
.field private A:Lkrq;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private f:Landroid/support/v4/widget/NestedScrollView;

.field private g:Landroid/widget/ImageButton;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Lkto;

.field private y:Landroid/widget/Button;

.field private z:Lkyp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)I
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->f()I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 505
    invoke-static {p1}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 507
    const-string v1, "filho"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    const-string v0, "0000000001"

    .line 524
    :goto_0
    return-object v0

    .line 509
    :cond_0
    const-string v1, "enteado"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    const-string v0, "0000000002"

    goto :goto_0

    .line 511
    :cond_1
    const-string v1, "irma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 512
    const-string v0, "0000000003"

    goto :goto_0

    .line 513
    :cond_2
    const-string v1, "pai"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 514
    const-string v0, "0000000004"

    goto :goto_0

    .line 515
    :cond_3
    const-string v1, "mae"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 516
    const-string v0, "0000000005"

    goto :goto_0

    .line 517
    :cond_4
    const-string v1, "conjuge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 518
    const-string v0, "0000000006"

    goto :goto_0

    .line 519
    :cond_5
    const-string v1, "outro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 520
    const-string v0, "9999999999"

    goto :goto_0

    .line 522
    :cond_6
    const-string v0, ""

    goto :goto_0
.end method

.method private a(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2

    .prologue
    .line 536
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 537
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 538
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 539
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;Lkto;)Lkto;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->x:Lkto;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/support/v4/widget/NestedScrollView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->f:Landroid/support/v4/widget/NestedScrollView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 528
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 529
    const-string v1, "insurance-name-key"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const-string v1, "proposal-formalization-id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string v1, "status_insurance"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->startActivity(Landroid/content/Intent;)V

    .line 533
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 127
    const v1, 0x7f09052c

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->i()V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->w:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->f:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lljo;

    invoke-direct {v1, p0}, Lljo;-><init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 155
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 157
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->f:Landroid/support/v4/widget/NestedScrollView;

    new-instance v1, Lljq;

    invoke-direct {v1, p0}, Lljq;-><init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 180
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->y:Landroid/widget/Button;

    new-instance v1, Lljr;

    invoke-direct {v1, p0}, Lljr;-><init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->g:Landroid/widget/ImageButton;

    new-instance v1, Lljs;

    invoke-direct {v1, p0}, Lljs;-><init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->e()V

    .line 222
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->h()V

    return-void
.end method

.method public static synthetic e(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->w:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 225
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 226
    new-instance v0, Lkyt;

    invoke-direct {v0}, Lkyt;-><init>()V

    .line 227
    iget-object v1, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->A:Lkrq;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Llju;

    invoke-direct {v3, p0}, Llju;-><init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V

    new-instance v4, Lljv;

    invoke-direct {v4, p0}, Lljv;-><init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lkys;->a(Lkrq;Ljava/lang/String;Lkxl;Lkxl;)V

    .line 248
    return-void
.end method

.method private f()I
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 252
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 255
    iget v0, v1, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public static synthetic f(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->g:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Lkto;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->x:Lkto;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 261
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lljx;

    invoke-direct {v1, p0}, Lljx;-><init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    return-void
.end method

.method public static synthetic h(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->d:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 277
    const v0, 0x7f05001d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 278
    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 279
    new-instance v1, Lljy;

    invoke-direct {v1, p0}, Lljy;-><init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 295
    iget-object v1, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static synthetic i(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->f:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    .line 304
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->f:Landroid/support/v4/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 308
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 312
    const v0, 0x7f10030d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->c:Landroid/widget/TextView;

    .line 313
    const v0, 0x7f100452

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->d:Landroid/support/v7/widget/RecyclerView;

    .line 314
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 315
    const v0, 0x7f100451

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->f:Landroid/support/v4/widget/NestedScrollView;

    .line 316
    const v0, 0x7f100453

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->y:Landroid/widget/Button;

    .line 317
    const v0, 0x7f100e37

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->g:Landroid/widget/ImageButton;

    .line 318
    const v0, 0x7f100e36

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->w:Landroid/widget/RelativeLayout;

    .line 319
    return-void
.end method

.method private k()V
    .locals 24

    .prologue
    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v3, Laor;->LOADING:Laor;

    invoke-virtual {v2, v3}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 325
    new-instance v15, Lkst;

    invoke-direct {v15}, Lkst;-><init>()V

    .line 326
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 329
    new-instance v17, Lkrq;

    invoke-direct/range {v17 .. v17}, Lkrq;-><init>()V

    .line 333
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 334
    const-string v3, "yyyy-MM-dd"

    invoke-static {v2, v3}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 335
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->a(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    const-string v3, "yyyy-MM-dd"

    invoke-static {v2, v3}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 340
    sget-object v2, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v2}, Lksq;->getIdealProductResponse()Lkri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 341
    sget-object v2, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v2}, Lksq;->getIdealProductResponse()Lkri;

    move-result-object v2

    invoke-virtual {v2}, Lkri;->a()Lkqg;

    move-result-object v3

    .line 342
    new-instance v2, Lkqg;

    invoke-direct {v2}, Lkqg;-><init>()V

    .line 343
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v3}, Lkqg;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v5

    invoke-virtual {v3}, Lkqg;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v8

    invoke-virtual {v3}, Lkqg;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v8

    invoke-virtual {v8, v4}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lkqg;->d(Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v4, v5}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lkqg;->e(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkqg;->f(Ljava/lang/String;)V

    move-object v13, v2

    .line 355
    :goto_0
    new-instance v2, Lkss;

    const-string v3, "W"

    const-string v4, "Contrata\u00e7\u00e3o de seguros"

    const-string v5, "Teste"

    const-string v8, "I"

    const-string v9, "SID"

    const-string v10, "Teste"

    const-string v11, "05"

    const-string v12, "0"

    invoke-direct/range {v2 .. v12}, Lkss;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance v18, Lksr;

    const-string v3, "0000000004"

    const-string v4, "00"

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Lksr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sget-object v3, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v3}, Lksq;->getBeneficiaries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 360
    const-string v3, "S"

    move-object v9, v3

    .line 365
    :goto_1
    sget-object v3, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v3}, Lksq;->getBeneficiaries()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v3, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v3}, Lksq;->getBeneficiaries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 366
    new-instance v5, Lkqx;

    invoke-direct {v5}, Lkqx;-><init>()V

    .line 367
    const-string v3, "11111111111"

    invoke-virtual {v5, v3}, Lkqx;->a(Ljava/lang/String;)V

    .line 368
    const-string v3, "13"

    invoke-virtual {v5, v3}, Lkqx;->b(Ljava/lang/String;)V

    .line 370
    new-instance v6, Lksa;

    invoke-direct {v6}, Lksa;-><init>()V

    .line 371
    const-string v3, "11"

    invoke-virtual {v6, v3}, Lksa;->a(Ljava/lang/String;)V

    .line 372
    const-string v3, "111111111"

    invoke-virtual {v6, v3}, Lksa;->b(Ljava/lang/String;)V

    .line 374
    new-instance v7, Lkqy;

    invoke-direct {v7}, Lkqy;-><init>()V

    .line 375
    const-string v3, "a@a.com"

    invoke-virtual {v7, v3}, Lkqy;->b(Ljava/lang/String;)V

    .line 376
    const-string v3, "001"

    invoke-virtual {v7, v3}, Lkqy;->a(Ljava/lang/String;)V

    .line 378
    const/4 v3, 0x0

    move v4, v3

    :goto_2
    sget-object v3, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v3}, Lksq;->getBeneficiaries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_2

    .line 380
    new-instance v8, Lksk;

    invoke-direct {v8}, Lksk;-><init>()V

    .line 381
    const-string v3, "0000000001"

    invoke-virtual {v8, v3}, Lksk;->e(Ljava/lang/String;)V

    .line 382
    add-int/lit8 v3, v4, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0x30

    const/4 v11, 0x4

    invoke-static {v3, v10, v11}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lksk;->d(Ljava/lang/String;)V

    .line 383
    sget-object v3, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v3}, Lksq;->getBeneficiaries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpw;

    invoke-virtual {v3}, Lkpw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lksk;->b(Ljava/lang/String;)V

    .line 385
    sget-object v3, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v3}, Lksq;->getBeneficiaries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpw;

    invoke-virtual {v3}, Lkpw;->d()Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0x30

    const/4 v11, 0x3

    invoke-static {v3, v10, v11}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v3

    .line 386
    const/16 v10, 0xb

    invoke-static {v3, v10}, Lmhj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 387
    invoke-virtual {v8, v3}, Lksk;->c(Ljava/lang/String;)V

    .line 389
    sget-object v3, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v3}, Lksq;->getBeneficiaries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpw;

    invoke-virtual {v3}, Lkpw;->c()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lksk;->a(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v8, v6}, Lksk;->a(Lksa;)V

    .line 391
    invoke-virtual {v8, v7}, Lksk;->a(Lkqy;)V

    .line 392
    invoke-virtual {v8, v5}, Lksk;->a(Lkqx;)V

    .line 393
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_2

    .line 352
    :cond_0
    new-instance v2, Lkqg;

    invoke-direct {v2}, Lkqg;-><init>()V

    move-object v13, v2

    goto/16 :goto_0

    .line 362
    :cond_1
    const-string v3, "N"

    move-object v9, v3

    goto/16 :goto_1

    .line 399
    :cond_2
    new-instance v19, Lksn;

    const-string v3, "0000000005"

    const-string v4, "939"

    const-string v5, "0"

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v5}, Lksn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v3, ""

    .line 404
    sget-object v4, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v4}, Lksq;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 406
    sget-object v3, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v3}, Lksq;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vida"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 407
    const-string v3, "0093"

    move-object v10, v3

    .line 415
    :goto_3
    const-string v20, "0000000001"

    .line 417
    sget-object v3, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v3}, Lksq;->getQuotationSelected()Lkrz;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 418
    new-instance v3, Lkta;

    sget-object v4, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v4}, Lksq;->getQuotationSelected()Lkrz;

    move-result-object v4

    invoke-virtual {v4}, Lkrz;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lkta;-><init>(Ljava/lang/String;)V

    .line 419
    sget-object v4, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v4}, Lksq;->getQuotationSelected()Lkrz;

    move-result-object v4

    invoke-virtual {v4}, Lkrz;->d()Ljava/lang/String;

    move-result-object v4

    .line 420
    sget-object v5, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v5}, Lksq;->getQuotationSelected()Lkrz;

    move-result-object v5

    invoke-virtual {v5}, Lkrz;->a()Lkrq;

    move-result-object v5

    invoke-virtual {v5}, Lkrq;->a()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lkrq;->a(Ljava/lang/String;)V

    .line 421
    sget-object v5, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v5}, Lksq;->getQuotationSelected()Lkrz;

    move-result-object v5

    invoke-virtual {v5}, Lkrz;->a()Lkrq;

    move-result-object v5

    invoke-virtual {v5}, Lkrq;->b()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lkrq;->b(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v4

    .line 430
    :goto_4
    sget-object v3, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v3}, Lksq;->getPreporsalResp()Lktj;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 431
    sget-object v3, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v3}, Lksq;->getPreporsalResp()Lktj;

    move-result-object v3

    invoke-virtual {v3}, Lktj;->b()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lktm;

    invoke-virtual {v3}, Lktm;->a()Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    .line 436
    :goto_5
    new-instance v21, Lksx;

    const-string v3, ""

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lksx;-><init>(Ljava/lang/String;)V

    .line 438
    sget-object v3, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v3}, Lksq;->getContactData()Lkqj;

    move-result-object v3

    invoke-virtual {v3}, Lkqj;->b()Lkqy;

    move-result-object v4

    .line 440
    sget-object v3, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v3}, Lksq;->getContactData()Lkqj;

    move-result-object v3

    invoke-virtual {v3}, Lkqj;->a()Lksa;

    move-result-object v7

    .line 444
    new-instance v5, Lksh;

    const-string v3, "PRI"

    const-string v6, "001"

    const-string v8, "0001"

    invoke-direct {v5, v3, v6, v8}, Lksh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v3, Lkso;

    const-string v6, "0000000001"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lkso;-><init>(Lkqy;Lksh;Ljava/lang/String;Lksa;Ljava/lang/String;)V

    .line 448
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 450
    sget-object v4, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v4}, Lksq;->getQuestions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    sget-object v4, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v4}, Lksq;->getQuestions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 452
    const/4 v4, 0x0

    move v5, v4

    :goto_6
    sget-object v4, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v4}, Lksq;->getQuestions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_7

    .line 453
    new-instance v7, Lksp;

    invoke-direct {v7}, Lksp;-><init>()V

    .line 454
    new-instance v8, Lksi;

    sget-object v4, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v4}, Lksq;->getQuestions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkrt;

    invoke-virtual {v4}, Lkrt;->c()Ljava/lang/String;

    move-result-object v22

    const-string v23, "0000000001"

    sget-object v4, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v4}, Lksq;->getQuestions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkrt;

    invoke-virtual {v4}, Lkrt;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v8, v0, v1, v4}, Lksi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    sget-object v4, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v4}, Lksq;->getQuestions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkrt;

    invoke-virtual {v4}, Lkrt;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lksp;->a(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v7, v8}, Lksp;->a(Lksi;)V

    .line 458
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_6

    .line 408
    :cond_3
    sget-object v3, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v3}, Lksq;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 409
    const-string v3, "0082"

    move-object v10, v3

    goto/16 :goto_3

    .line 411
    :cond_4
    const-string v3, ""

    move-object v10, v3

    goto/16 :goto_3

    .line 424
    :cond_5
    const-string v4, ""

    .line 425
    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lkrq;->a(Ljava/lang/String;)V

    .line 426
    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lkrq;->b(Ljava/lang/String;)V

    .line 427
    new-instance v3, Lkta;

    const-string v5, ""

    invoke-direct {v3, v5}, Lkta;-><init>(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v4

    goto/16 :goto_4

    .line 433
    :cond_6
    const-string v3, ""

    move-object v14, v3

    goto/16 :goto_5

    .line 468
    :cond_7
    sget-object v4, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v4}, Lksq;->getPaymentList()Ljava/util/List;

    move-result-object v4

    .line 470
    invoke-virtual {v15, v13}, Lkst;->a(Lkqg;)V

    .line 471
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lkst;->a(Lksr;)V

    .line 472
    invoke-virtual {v15, v2}, Lkst;->a(Lkss;)V

    .line 473
    invoke-virtual {v15, v9}, Lkst;->b(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {v15 .. v16}, Lkst;->a(Ljava/util/List;)V

    .line 475
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lkst;->a(Lksn;)V

    .line 476
    invoke-virtual {v15, v10}, Lkst;->a(Ljava/lang/String;)V

    .line 477
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lkst;->c(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v15, v12}, Lkst;->d(Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lkst;->a(Lkrq;)V

    .line 480
    invoke-virtual {v15, v14}, Lkst;->e(Ljava/lang/String;)V

    .line 481
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lkst;->a(Lksx;)V

    .line 482
    invoke-virtual {v15, v3}, Lkst;->a(Lkso;)V

    .line 483
    invoke-virtual {v15, v6}, Lkst;->b(Ljava/util/List;)V

    .line 484
    invoke-virtual {v15, v4}, Lkst;->c(Ljava/util/List;)V

    .line 485
    invoke-virtual {v15, v11}, Lkst;->a(Lkta;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->z:Lkyp;

    new-instance v3, Lljz;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lljz;-><init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V

    new-instance v4, Lljp;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lljp;-><init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V

    invoke-virtual {v2, v15, v3, v4}, Lkyp;->a(Lkst;Lkxl;Lkxl;)V

    .line 501
    return-void

    :cond_8
    move-object v10, v3

    goto/16 :goto_3
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->k()V

    .line 551
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->C:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 560
    :goto_0
    return-object v0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 560
    const-string v0, ""

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f0400b3

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "products-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "products-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkrq;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrq;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->A:Lkrq;

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "insurance-name-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "insurance-name-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->B:Ljava/lang/String;

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "prize-value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "prize-value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->C:Ljava/lang/String;

    .line 114
    :goto_1
    new-instance v0, Lkyp;

    invoke-direct {v0}, Lkyp;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->z:Lkyp;

    .line 116
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->c()V

    .line 117
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->j()V

    .line 118
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->d()V

    .line 119
    return-void

    .line 105
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->B:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->C:Ljava/lang/String;

    goto :goto_1
.end method
