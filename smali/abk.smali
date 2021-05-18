.class public final Labk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Ljava/lang/CharSequence;

.field private q:Landroid/content/res/ColorStateList;

.field private r:Landroid/graphics/Typeface;

.field private s:Landroid/content/Context;

.field private t:Landroid/view/View;

.field private u:Labm;

.field private v:Labo;

.field private w:Labn;


# direct methods
.method public constructor <init>(Landroid/view/MenuItem;)V
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 415
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labk;-><init>(Landroid/view/MenuItem;I)V

    .line 416
    return-void
.end method

.method public constructor <init>(Landroid/view/MenuItem;I)V
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Labk;->n:F

    .line 405
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Labk;->r:Landroid/graphics/Typeface;

    .line 419
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    .line 420
    if-eqz v1, :cond_1

    .line 421
    instance-of v0, v1, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 422
    check-cast v0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;

    .line 423
    invoke-virtual {v0, p1}, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->setMenuItem(Landroid/view/MenuItem;)V

    .line 426
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1, p2}, Labk;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 430
    return-void

    .line 428
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "anchor menuItem haven`t actionViewClass"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 433
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labk;-><init>(Landroid/view/View;I)V

    .line 434
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Labk;->n:F

    .line 405
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Labk;->r:Landroid/graphics/Typeface;

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Labk;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 438
    return-void
.end method

.method private a(Ljava/lang/String;II)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x0

    .line 798
    if-eqz p1, :cond_0

    .line 799
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 800
    if-eqz v0, :cond_0

    .line 815
    :goto_0
    return-object v0

    .line 804
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 806
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 809
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 812
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 804
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/view/View;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    .line 441
    iput-object p1, p0, Labk;->s:Landroid/content/Context;

    .line 442
    iput-object p2, p0, Labk;->t:Landroid/view/View;

    .line 444
    sget-object v0, Lli;->TooltipHandler:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 446
    sget v1, Lli;->TooltipHandler_cancelable:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Labk;->b:Z

    .line 447
    sget v1, Lli;->TooltipHandler_dismissOnClick:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Labk;->a:Z

    .line 448
    sget v1, Lli;->TooltipHandler_backgroundColor:I

    const v2, -0x777778

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Labk;->d:I

    .line 449
    sget v1, Lli;->TooltipHandler_cornerRadius:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Labk;->g:F

    .line 450
    sget v1, Lli;->TooltipHandler_arrowHeight:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Labk;->h:F

    .line 451
    sget v1, Lli;->TooltipHandler_arrowWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Labk;->i:F

    .line 452
    sget v1, Lli;->TooltipHandler_arrowDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Labk;->o:Landroid/graphics/drawable/Drawable;

    .line 453
    sget v1, Lli;->TooltipHandler_margin:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Labk;->j:F

    .line 454
    sget v1, Lli;->TooltipHandler_textAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Labk;->e:I

    .line 455
    sget v1, Lli;->TooltipHandler_android_padding:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Labk;->k:F

    .line 456
    sget v1, Lli;->TooltipHandler_android_gravity:I

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Labk;->c:I

    .line 457
    sget v1, Lli;->TooltipHandler_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labk;->p:Ljava/lang/CharSequence;

    .line 458
    sget v1, Lli;->TooltipHandler_android_textSize:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Labk;->l:F

    .line 459
    sget v1, Lli;->TooltipHandler_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Labk;->q:Landroid/content/res/ColorStateList;

    .line 460
    sget v1, Lli;->TooltipHandler_android_textStyle:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Labk;->f:I

    .line 461
    sget v1, Lli;->TooltipHandler_android_lineSpacingExtra:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Labk;->m:F

    .line 462
    sget v1, Lli;->TooltipHandler_android_lineSpacingMultiplier:I

    iget v2, p0, Labk;->n:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Labk;->n:F

    .line 464
    sget v1, Lli;->TooltipHandler_android_fontFamily:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 465
    sget v2, Lli;->TooltipHandler_android_typeface:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 466
    iget v3, p0, Labk;->f:I

    invoke-direct {p0, v1, v2, v3}, Labk;->a(Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Labk;->r:Landroid/graphics/Typeface;

    .line 468
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 469
    return-void
.end method

.method static synthetic a(Labk;)Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Labk;->b:Z

    return v0
.end method

.method static synthetic b(Labk;)Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Labk;->a:Z

    return v0
.end method

.method static synthetic c(Labk;)I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Labk;->c:I

    return v0
.end method

.method static synthetic d(Labk;)F
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Labk;->j:F

    return v0
.end method

.method static synthetic e(Labk;)Landroid/view/View;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Labk;->t:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Labk;)Labm;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Labk;->u:Labm;

    return-object v0
.end method

.method static synthetic g(Labk;)Labo;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Labk;->v:Labo;

    return-object v0
.end method

.method static synthetic h(Labk;)Labn;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Labk;->w:Labn;

    return-object v0
.end method

.method static synthetic i(Labk;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Labk;->s:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Labk;)I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Labk;->d:I

    return v0
.end method

.method static synthetic k(Labk;)F
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Labk;->g:F

    return v0
.end method

.method static synthetic l(Labk;)F
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Labk;->k:F

    return v0
.end method

.method static synthetic m(Labk;)I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Labk;->e:I

    return v0
.end method

.method static synthetic n(Labk;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Labk;->p:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic o(Labk;)F
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Labk;->m:F

    return v0
.end method

.method static synthetic p(Labk;)F
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Labk;->n:F

    return v0
.end method

.method static synthetic q(Labk;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Labk;->r:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic r(Labk;)I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Labk;->f:I

    return v0
.end method

.method static synthetic s(Labk;)F
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Labk;->l:F

    return v0
.end method

.method static synthetic t(Labk;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Labk;->q:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic u(Labk;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Labk;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic v(Labk;)F
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Labk;->i:F

    return v0
.end method

.method static synthetic w(Labk;)F
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Labk;->h:F

    return v0
.end method


# virtual methods
.method public a()Labb;
    .locals 4

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    .line 765
    iget v0, p0, Labk;->c:I

    invoke-static {v0}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Labk;->c:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Gravity must have be START, END, TOP or BOTTOM."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_0
    iget v0, p0, Labk;->h:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 770
    iget-object v0, p0, Labk;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lky;->default_tooltip_arrow_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Labk;->h:F

    .line 772
    :cond_1
    iget v0, p0, Labk;->i:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 773
    iget-object v0, p0, Labk;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lky;->default_tooltip_arrow_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Labk;->i:F

    .line 775
    :cond_2
    iget-object v0, p0, Labk;->o:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 776
    new-instance v0, Laba;

    iget v1, p0, Labk;->d:I

    iget v2, p0, Labk;->c:I

    invoke-direct {v0, v1, v2}, Laba;-><init>(II)V

    iput-object v0, p0, Labk;->o:Landroid/graphics/drawable/Drawable;

    .line 778
    :cond_3
    iget v0, p0, Labk;->j:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    .line 779
    iget-object v0, p0, Labk;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lky;->default_tooltip_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Labk;->j:F

    .line 781
    :cond_4
    iget v0, p0, Labk;->k:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    .line 782
    iget-object v0, p0, Labk;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lky;->default_tooltip_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Labk;->k:F

    .line 784
    :cond_5
    new-instance v0, Labb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labb;-><init>(Labk;Labc;)V

    return-object v0
.end method

.method public a(F)Labk;
    .locals 0

    .prologue
    .line 516
    iput p1, p0, Labk;->g:F

    .line 517
    return-object p0
.end method

.method public a(FF)Labk;
    .locals 0

    .prologue
    .line 713
    iput p1, p0, Labk;->m:F

    .line 714
    iput p2, p0, Labk;->n:F

    .line 715
    return-object p0
.end method

.method public a(I)Labk;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 497
    iput p1, p0, Labk;->d:I

    .line 498
    return-object p0
.end method

.method public a(IF)Labk;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 701
    iget-object v0, p0, Labk;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Labk;->m:F

    .line 702
    iput p2, p0, Labk;->n:F

    .line 703
    return-object p0
.end method

.method public a(Labm;)Labk;
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Labk;->u:Labm;

    .line 735
    return-object p0
.end method

.method public a(Labn;)Labk;
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Labk;->w:Labn;

    .line 755
    return-object p0
.end method

.method public a(Labo;)Labk;
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Labk;->v:Labo;

    .line 745
    return-object p0
.end method

.method public a(Landroid/graphics/Typeface;)Labk;
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Labk;->r:Landroid/graphics/Typeface;

    .line 725
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Labk;
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Labk;->o:Landroid/graphics/drawable/Drawable;

    .line 574
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Labk;
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Labk;->p:Ljava/lang/CharSequence;

    .line 651
    return-object p0
.end method

.method public a(Z)Labk;
    .locals 0

    .prologue
    .line 477
    iput-boolean p1, p0, Labk;->b:Z

    .line 478
    return-object p0
.end method

.method public b()Labb;
    .locals 1

    .prologue
    .line 791
    invoke-virtual {p0}, Labk;->a()Labb;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Labb;->b()V

    .line 793
    return-object v0
.end method

.method public b(F)Labk;
    .locals 0

    .prologue
    .line 535
    iput p1, p0, Labk;->h:F

    .line 536
    return-object p0
.end method

.method public b(I)Labk;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 507
    iget-object v0, p0, Labk;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Labk;->a(F)Labk;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Labk;
    .locals 0

    .prologue
    .line 487
    iput-boolean p1, p0, Labk;->a:Z

    .line 488
    return-object p0
.end method

.method public c(F)Labk;
    .locals 0

    .prologue
    .line 554
    iput p1, p0, Labk;->i:F

    .line 555
    return-object p0
.end method

.method public c(I)Labk;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 526
    iget-object v0, p0, Labk;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Labk;->b(F)Labk;

    move-result-object v0

    return-object v0
.end method

.method public d(F)Labk;
    .locals 0

    .prologue
    .line 592
    iput p1, p0, Labk;->j:F

    .line 593
    return-object p0
.end method

.method public d(I)Labk;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 545
    iget-object v0, p0, Labk;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Labk;->c(F)Labk;

    move-result-object v0

    return-object v0
.end method

.method public e(F)Labk;
    .locals 0

    .prologue
    .line 621
    iput p1, p0, Labk;->k:F

    .line 622
    return-object p0
.end method

.method public e(I)Labk;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 564
    iget-object v0, p0, Labk;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Labk;->a(Landroid/graphics/drawable/Drawable;)Labk;

    move-result-object v0

    return-object v0
.end method

.method public f(F)Labk;
    .locals 2

    .prologue
    .line 670
    const/4 v0, 0x2

    iget-object v1, p0, Labk;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Labk;->l:F

    .line 671
    return-object p0
.end method

.method public f(I)Labk;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 583
    iget-object v0, p0, Labk;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Labk;->d(F)Labk;

    move-result-object v0

    return-object v0
.end method

.method public g(I)Labk;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 602
    iput p1, p0, Labk;->e:I

    .line 603
    return-object p0
.end method

.method public h(I)Labk;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 612
    iget-object v0, p0, Labk;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Labk;->e(F)Labk;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Labk;
    .locals 0

    .prologue
    .line 631
    iput p1, p0, Labk;->c:I

    .line 632
    return-object p0
.end method

.method public j(I)Labk;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 641
    iget-object v0, p0, Labk;->s:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Labk;->a(Ljava/lang/CharSequence;)Labk;

    move-result-object v0

    return-object v0
.end method

.method public k(I)Labk;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 660
    iget-object v0, p0, Labk;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Labk;->l:F

    .line 661
    return-object p0
.end method

.method public l(I)Labk;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 680
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Labk;->q:Landroid/content/res/ColorStateList;

    .line 681
    return-object p0
.end method

.method public m(I)Labk;
    .locals 0

    .prologue
    .line 690
    iput p1, p0, Labk;->f:I

    .line 691
    return-object p0
.end method
