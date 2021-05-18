.class public Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:I = 0xbba3

.field public static final b:I = 0xffb0

.field public static final c:I = 0xc11

.field public static final d:I = 0x13d9

.field public static final e:I = 0x1642

.field private static final g:Ljava/lang/String; = "POST_IMAGE.jpg"

.field private static final w:Ljava/lang/String; = "display-document-frag-tag"

.field private static x:Z

.field private static y:Lmio;


# instance fields
.field private A:Landroid/widget/ImageButton;

.field private B:Landroid/widget/ImageButton;

.field private C:Landroid/widget/ImageButton;

.field private D:Landroid/widget/ImageButton;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/Button;

.field private G:Lmin;

.field private H:Landroid/net/Uri;

.field private I:Ljava/io/File;

.field public final f:I

.field private z:Lbr/com/zup/multistatelayout/MultiStateLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 62
    const/4 v0, 0x4

    iput v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->f:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->z:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;[B)V
    .locals 3

    .prologue
    const v2, 0x7f090453

    .line 492
    sget-boolean v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->x:Z

    if-eqz v0, :cond_3

    .line 493
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    invoke-virtual {v0}, Lmio;->j()V

    .line 494
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 495
    :cond_0
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmio;->a(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmin;->a(Ljava/lang/String;)V

    .line 523
    :cond_1
    :goto_0
    return-void

    .line 500
    :cond_2
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    invoke-virtual {v0, p2}, Lmio;->b([B)V

    .line 501
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    invoke-virtual {v0, p1}, Lmio;->b(Landroid/graphics/Bitmap;)V

    .line 502
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    sget-object v1, Lknw;->JPG:Lknw;

    invoke-virtual {v0, v1}, Lmio;->b(Lknw;)V

    .line 503
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    invoke-interface {v0, p1}, Lmin;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 508
    :cond_3
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    invoke-virtual {v0}, Lmio;->k()V

    .line 509
    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 510
    :cond_4
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmio;->b(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmin;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_5
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    invoke-virtual {v0, p2}, Lmio;->a([B)V

    .line 516
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    invoke-virtual {v0, p1}, Lmio;->a(Landroid/graphics/Bitmap;)V

    .line 517
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    sget-object v1, Lknw;->JPG:Lknw;

    invoke-virtual {v0, v1}, Lmio;->a(Lknw;)V

    .line 518
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    invoke-interface {v0, p1}, Lmin;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 373
    if-eqz p1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->z:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 375
    new-instance v0, Lmik;

    invoke-direct {v0, p0}, Lmik;-><init>(Lgrs;)V

    .line 376
    new-instance v1, Llrf;

    invoke-direct {v1, p0, p1}, Llrf;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;Landroid/net/Uri;)V

    new-instance v2, Llqx;

    invoke-direct {v2, p0}, Llqx;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)V

    invoke-virtual {v0, p1, v1, v2}, Lmik;->a(Landroid/net/Uri;Lmij;Lmij;)V

    .line 430
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;Landroid/graphics/Bitmap;[B)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a(Landroid/graphics/Bitmap;[B)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;Z)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;[B)V
    .locals 3

    .prologue
    const v2, 0x7f090460

    .line 458
    sget-boolean v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->x:Z

    if-eqz v0, :cond_3

    .line 459
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    invoke-virtual {v0}, Lmio;->j()V

    .line 460
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    :cond_0
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmio;->a(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmin;->b(Ljava/lang/String;)V

    .line 489
    :cond_1
    :goto_0
    return-void

    .line 466
    :cond_2
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    invoke-virtual {v0, p2}, Lmio;->b([B)V

    .line 467
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    sget-object v1, Lknw;->PDF:Lknw;

    invoke-virtual {v0, v1}, Lmio;->b(Lknw;)V

    .line 468
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    invoke-virtual {v0, p1}, Lmio;->a(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    invoke-interface {v0, p1}, Lmin;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_3
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    invoke-virtual {v0}, Lmio;->k()V

    .line 475
    if-eqz p2, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 476
    :cond_4
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmio;->b(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmin;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_5
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    invoke-virtual {v0, p2}, Lmio;->a([B)V

    .line 482
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    sget-object v1, Lknw;->PDF:Lknw;

    invoke-virtual {v0, v1}, Lmio;->a(Lknw;)V

    .line 483
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    invoke-virtual {v0, p1}, Lmio;->b(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    invoke-interface {v0, p1}, Lmin;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 51
    sput-boolean p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->x:Z

    return p0
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)Lmin;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    return-object v0
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 187
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->D:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 188
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->B:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 189
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->i()V

    return-void
.end method

.method public static synthetic c()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->x:Z

    return v0
.end method

.method public static synthetic d()Lmio;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->k()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->z:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 90
    const v0, 0x7f1003f1

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->A:Landroid/widget/ImageButton;

    .line 91
    const v0, 0x7f1003f4

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->B:Landroid/widget/ImageButton;

    .line 92
    const v0, 0x7f1003f6

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->C:Landroid/widget/ImageButton;

    .line 93
    const v0, 0x7f1003f5

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->D:Landroid/widget/ImageButton;

    .line 94
    const v0, 0x7f1003f7

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->E:Landroid/widget/Button;

    .line 95
    const v0, 0x7f1002d5

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->F:Landroid/widget/Button;

    .line 96
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->f()V

    .line 97
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->g()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->A:Landroid/widget/ImageButton;

    new-instance v1, Llqw;

    invoke-direct {v1, p0}, Llqw;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->C:Landroid/widget/ImageButton;

    new-instance v1, Llqy;

    invoke-direct {v1, p0}, Llqy;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->B:Landroid/widget/ImageButton;

    new-instance v1, Llqz;

    invoke-direct {v1, p0}, Llqz;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->D:Landroid/widget/ImageButton;

    new-instance v1, Llra;

    invoke-direct {v1, p0}, Llra;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->E:Landroid/widget/Button;

    new-instance v1, Llrb;

    invoke-direct {v1, p0}, Llrb;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->F:Landroid/widget/Button;

    new-instance v1, Llrc;

    invoke-direct {v1, p0}, Llrc;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    .line 160
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->z:Lbr/com/zup/multistatelayout/MultiStateLayout;

    invoke-virtual {v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a()Laor;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    if-eq v0, v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 161
    :cond_0
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    .line 162
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmio;->f()[B

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lmio;->g()[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 163
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Llrd;

    invoke-direct {v2, p0, v0}, Llrd;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;Lmio;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->finish()V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->E:Landroid/widget/Button;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->E:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPaintFlags(I)V

    .line 179
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    if-nez v0, :cond_0

    .line 180
    invoke-static {}, Lmio;->a()Lmio;

    move-result-object v0

    sput-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->b()V

    .line 183
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 254
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-static {p0, v3, v0}, Lmhf;->a(Landroid/content/Context;Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 258
    const v1, 0xbba3

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 281
    :goto_0
    return-void

    .line 261
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "POST_IMAGE.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->I:Ljava/io/File;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.santander.app.provider"

    iget-object v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->I:Ljava/io/File;

    invoke-static {v1, v2, v3}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->H:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 274
    :goto_1
    :try_start_2
    const-string v1, "output"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->H:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 275
    const/16 v1, 0xc11

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09044a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->j()V

    goto :goto_0

    .line 268
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->I:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->H:Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 270
    :catch_1
    move-exception v1

    .line 271
    :try_start_4
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->I:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->H:Landroid/net/Uri;
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method private j()V
    .locals 1

    .prologue
    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->I:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->I:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->I:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private k()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 526
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const v1, 0xffb0

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 544
    :goto_0
    return-void

    .line 530
    :cond_0
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "application/pdf"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image/*"

    aput-object v2, v0, v1

    .line 531
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 532
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 534
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string v2, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    :goto_1
    const-string v0, "Documentos"

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x13d9

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090448

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 537
    :cond_1
    :try_start_1
    const-string v0, "application/pdf"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private n()V
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    sput-boolean v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->x:Z

    .line 554
    const/4 v0, 0x0

    sput-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    .line 555
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 433
    invoke-static {p0, p1}, Lmhj;->a(Lgrs;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 435
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 436
    const-string v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 438
    packed-switch v1, :pswitch_data_0

    .line 453
    :goto_0
    :pswitch_0
    return-object v0

    .line 440
    :pswitch_1
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v0, v1}, Lmhj;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 442
    :pswitch_2
    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, v1}, Lmhj;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 444
    :pswitch_3
    const/high16 v1, 0x43870000    # 270.0f

    invoke-static {v0, v1}, Lmhj;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    .line 451
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a()Lmio;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->y:Lmio;

    return-object v0
.end method

.method public b()V
    .locals 7

    .prologue
    const v6, 0x7f050026

    const v5, 0x7f050025

    const v4, 0x7f050024

    const v3, 0x7f050023

    .line 194
    sget-boolean v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->x:Z

    invoke-static {v0}, Llwe;->a(Z)Llwe;

    move-result-object v0

    .line 195
    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->G:Lmin;

    .line 196
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    .line 197
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 198
    sget-boolean v2, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->x:Z

    if-nez v2, :cond_0

    .line 199
    invoke-virtual {v1, v3, v6, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 204
    :goto_0
    const v2, 0x7f1003f3

    const-string v3, "display-document-frag-tag"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->b(Z)V

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Llre;

    invoke-direct {v1, p0}, Llre;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    return-void

    .line 201
    :cond_0
    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 548
    invoke-super {p0}, Lgrs;->finish()V

    .line 549
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->n()V

    .line 550
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 350
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->z:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 352
    const/16 v0, 0xc11

    if-ne p1, v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->H:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->H:Landroid/net/Uri;

    .line 355
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 356
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->I:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a(Landroid/net/Uri;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    invoke-static {v0}, Lmhj;->c(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 358
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->j()V

    .line 359
    invoke-direct {p0, v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a(Landroid/graphics/Bitmap;[B)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->z:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 369
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->j()V

    .line 370
    return-void

    .line 362
    :cond_2
    const/16 v0, 0x13d9

    if-ne p1, v0, :cond_3

    .line 363
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->z:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->finish()V

    .line 247
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f0400a5

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->setContentView(I)V

    .line 81
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->e()V

    .line 82
    if-eqz p1, :cond_0

    const-string v0, "verse-key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "verse-key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->x:Z

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->h()V

    .line 86
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v4, 0x7f090462

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 327
    invoke-super {p0, p1, p2, p3}, Lgrs;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 328
    sparse-switch p1, :sswitch_data_0

    .line 346
    :goto_0
    return-void

    .line 330
    :sswitch_0
    array-length v0, p3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    aget v0, p3, v2

    if-nez v0, :cond_0

    aget v0, p3, v3

    if-eqz v0, :cond_1

    :cond_0
    array-length v0, p3

    if-lt v0, v3, :cond_2

    aget v0, p3, v2

    if-nez v0, :cond_2

    .line 332
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->i()V

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :sswitch_1
    array-length v0, p3

    if-lt v0, v3, :cond_3

    aget v0, p3, v2

    if-nez v0, :cond_3

    .line 339
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->k()V

    goto :goto_0

    .line 341
    :cond_3
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :sswitch_data_0
    .sparse-switch
        0xbba3 -> :sswitch_0
        0xffb0 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 299
    invoke-super {p0, p1}, Lgrs;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 300
    const-string v0, "cameraImageUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "restore"

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v0, "cameraImageUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->H:Landroid/net/Uri;

    .line 305
    :cond_0
    const-string v0, "verse-key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    const-string v0, "verse-key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->x:Z

    .line 308
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 286
    invoke-super {p0, p1}, Lgrs;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 287
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->H:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 288
    const-string v0, "save"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v0, "cameraImageUri"

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->H:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    sget-boolean v0, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->x:Z

    if-nez v0, :cond_1

    .line 293
    const-string v0, "verse-key"

    sget-boolean v1, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;->x:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 295
    :cond_1
    return-void
.end method
