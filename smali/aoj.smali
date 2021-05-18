.class public final Laoj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Laol;

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

.field private o:F

.field private p:Z

.field private q:I

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Ljava/lang/CharSequence;

.field private t:Landroid/content/res/ColorStateList;

.field private u:Landroid/graphics/Typeface;

.field private v:Landroid/content/Context;

.field private w:Landroid/view/View;

.field private x:Laok;

.field private y:Laon;

.field private z:Laom;


# direct methods
.method public constructor <init>(Landroid/view/MenuItem;)V
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 552
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Laoj;-><init>(Landroid/view/MenuItem;I)V

    .line 553
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
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoj;->n:F

    .line 541
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Laoj;->u:Landroid/graphics/Typeface;

    .line 556
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    .line 557
    if-eqz v1, :cond_1

    .line 558
    instance-of v0, v1, Lbr/com/santander/uisdk/tooltip/TooltipView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 559
    check-cast v0, Lbr/com/santander/uisdk/tooltip/TooltipView;

    .line 560
    invoke-virtual {v0, p1}, Lbr/com/santander/uisdk/tooltip/TooltipView;->a(Landroid/view/MenuItem;)V

    .line 563
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1, p2}, Laoj;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 567
    return-void

    .line 565
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
    .line 570
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Laoj;-><init>(Landroid/view/View;I)V

    .line 571
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
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoj;->n:F

    .line 541
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Laoj;->u:Landroid/graphics/Typeface;

    .line 574
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Laoj;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 575
    return-void
.end method

.method static synthetic A(Laoj;)Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Laoj;->p:Z

    return v0
.end method

.method private a(Ljava/lang/String;II)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 980
    const/4 v0, 0x0

    .line 981
    if-eqz p1, :cond_0

    .line 982
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 983
    if-eqz v0, :cond_0

    .line 998
    :goto_0
    return-object v0

    .line 987
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 989
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 992
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 995
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 987
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
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    .line 578
    iput-object p1, p0, Laoj;->v:Landroid/content/Context;

    .line 579
    iput-object p2, p0, Laoj;->w:Landroid/view/View;

    .line 581
    sget-object v0, Lalx;->SantanderTooltip:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 583
    sget v1, Lalx;->SantanderTooltip_cancelable:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Laoj;->b:Z

    .line 584
    sget v1, Lalx;->SantanderTooltip_dismissOnClick:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Laoj;->a:Z

    .line 585
    sget v1, Lalx;->SantanderTooltip_backgroundColor:I

    const v2, -0x777778

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Laoj;->d:I

    .line 586
    sget v1, Lalx;->SantanderTooltip_cornerRadius:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Laoj;->g:F

    .line 587
    sget v1, Lalx;->SantanderTooltip_arrowHeight:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Laoj;->h:F

    .line 588
    sget v1, Lalx;->SantanderTooltip_arrowWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Laoj;->i:F

    .line 589
    sget v1, Lalx;->SantanderTooltip_arrowDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Laoj;->r:Landroid/graphics/drawable/Drawable;

    .line 590
    sget v1, Lalx;->SantanderTooltip_margin:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Laoj;->j:F

    .line 591
    sget v1, Lalx;->SantanderTooltip_textAppearance:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Laoj;->e:I

    .line 592
    sget v1, Lalx;->SantanderTooltip_android_padding:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Laoj;->k:F

    .line 593
    sget v1, Lalx;->SantanderTooltip_android_gravity:I

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Laoj;->c:I

    .line 594
    sget v1, Lalx;->SantanderTooltip_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laoj;->s:Ljava/lang/CharSequence;

    .line 595
    sget v1, Lalx;->SantanderTooltip_android_textSize:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Laoj;->l:F

    .line 596
    sget v1, Lalx;->SantanderTooltip_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Laoj;->t:Landroid/content/res/ColorStateList;

    .line 597
    sget v1, Lalx;->SantanderTooltip_android_textStyle:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Laoj;->f:I

    .line 598
    sget v1, Lalx;->SantanderTooltip_android_lineSpacingExtra:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Laoj;->m:F

    .line 599
    sget v1, Lalx;->SantanderTooltip_android_lineSpacingMultiplier:I

    iget v2, p0, Laoj;->n:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Laoj;->n:F

    .line 600
    sget v1, Lalx;->SantanderTooltip_android_maxWidth:I

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Laoj;->o:F

    .line 601
    sget v1, Lalx;->SantanderTooltip_enableCloseButton:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Laoj;->p:Z

    .line 602
    sget v1, Lalx;->SantanderTooltip_closeButtonGravity:I

    const v2, 0x800005

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Laoj;->q:I

    .line 604
    sget v1, Lalx;->SantanderTooltip_android_fontFamily:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 605
    sget v2, Lalx;->SantanderTooltip_android_typeface:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 606
    iget v3, p0, Laoj;->f:I

    invoke-direct {p0, v1, v2, v3}, Laoj;->a(Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Laoj;->u:Landroid/graphics/Typeface;

    .line 608
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 609
    return-void
.end method

.method static synthetic a(Laoj;)Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Laoj;->b:Z

    return v0
.end method

.method static synthetic b(Laoj;)Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Laoj;->a:Z

    return v0
.end method

.method static synthetic c(Laoj;)I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Laoj;->c:I

    return v0
.end method

.method static synthetic d(Laoj;)F
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Laoj;->j:F

    return v0
.end method

.method static synthetic e(Laoj;)Landroid/view/View;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Laoj;->w:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Laoj;)Laok;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Laoj;->x:Laok;

    return-object v0
.end method

.method static synthetic g(Laoj;)Laon;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Laoj;->y:Laon;

    return-object v0
.end method

.method static synthetic h(Laoj;)Laom;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Laoj;->z:Laom;

    return-object v0
.end method

.method static synthetic i(Laoj;)Laol;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Laoj;->A:Laol;

    return-object v0
.end method

.method static synthetic j(Laoj;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Laoj;->v:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Laoj;)I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Laoj;->d:I

    return v0
.end method

.method static synthetic l(Laoj;)F
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Laoj;->g:F

    return v0
.end method

.method static synthetic m(Laoj;)F
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Laoj;->k:F

    return v0
.end method

.method static synthetic n(Laoj;)I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Laoj;->e:I

    return v0
.end method

.method static synthetic o(Laoj;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Laoj;->s:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic p(Laoj;)F
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Laoj;->o:F

    return v0
.end method

.method static synthetic q(Laoj;)I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Laoj;->q:I

    return v0
.end method

.method static synthetic r(Laoj;)F
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Laoj;->m:F

    return v0
.end method

.method static synthetic s(Laoj;)F
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Laoj;->n:F

    return v0
.end method

.method static synthetic t(Laoj;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Laoj;->u:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic u(Laoj;)I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Laoj;->f:I

    return v0
.end method

.method static synthetic v(Laoj;)F
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Laoj;->l:F

    return v0
.end method

.method static synthetic w(Laoj;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Laoj;->t:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic x(Laoj;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Laoj;->r:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic y(Laoj;)F
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Laoj;->i:F

    return v0
.end method

.method static synthetic z(Laoj;)F
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Laoj;->h:F

    return v0
.end method


# virtual methods
.method public a()Laoa;
    .locals 4

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    .line 948
    iget v0, p0, Laoj;->c:I

    invoke-static {v0}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Laoj;->c:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 949
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Gravity must have be START, END, TOP or BOTTOM."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :cond_0
    iget v0, p0, Laoj;->h:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 953
    iget-object v0, p0, Laoj;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lalq;->default_tooltip_arrow_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Laoj;->h:F

    .line 955
    :cond_1
    iget v0, p0, Laoj;->i:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 956
    iget-object v0, p0, Laoj;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lalq;->default_tooltip_arrow_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Laoj;->i:F

    .line 958
    :cond_2
    iget-object v0, p0, Laoj;->r:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 959
    new-instance v0, Lanz;

    iget v1, p0, Laoj;->d:I

    iget v2, p0, Laoj;->c:I

    invoke-direct {v0, v1, v2}, Lanz;-><init>(II)V

    iput-object v0, p0, Laoj;->r:Landroid/graphics/drawable/Drawable;

    .line 961
    :cond_3
    iget v0, p0, Laoj;->j:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    .line 962
    iget-object v0, p0, Laoj;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lalq;->default_tooltip_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Laoj;->j:F

    .line 964
    :cond_4
    iget v0, p0, Laoj;->k:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    .line 965
    iget-object v0, p0, Laoj;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lalq;->default_tooltip_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Laoj;->k:F

    .line 967
    :cond_5
    new-instance v0, Laoa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laoa;-><init>(Laoj;Laob;)V

    return-object v0
.end method

.method public a(F)Laoj;
    .locals 0

    .prologue
    .line 656
    iput p1, p0, Laoj;->g:F

    .line 657
    return-object p0
.end method

.method public a(FF)Laoj;
    .locals 0

    .prologue
    .line 863
    iput p1, p0, Laoj;->m:F

    .line 864
    iput p2, p0, Laoj;->n:F

    .line 865
    return-object p0
.end method

.method public a(I)Laoj;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 637
    iput p1, p0, Laoj;->d:I

    .line 638
    return-object p0
.end method

.method public a(IF)Laoj;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 851
    iget-object v0, p0, Laoj;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoj;->m:F

    .line 852
    iput p2, p0, Laoj;->n:F

    .line 853
    return-object p0
.end method

.method public a(Landroid/graphics/Typeface;)Laoj;
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, Laoj;->u:Landroid/graphics/Typeface;

    .line 875
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Laoj;
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Laoj;->r:Landroid/graphics/drawable/Drawable;

    .line 714
    return-object p0
.end method

.method public a(Laok;)Laoj;
    .locals 0

    .prologue
    .line 884
    iput-object p1, p0, Laoj;->x:Laok;

    .line 885
    return-object p0
.end method

.method public a(Laol;)Laoj;
    .locals 0

    .prologue
    .line 904
    iput-object p1, p0, Laoj;->A:Laol;

    .line 905
    return-object p0
.end method

.method public a(Laom;)Laoj;
    .locals 0

    .prologue
    .line 914
    iput-object p1, p0, Laoj;->z:Laom;

    .line 915
    return-object p0
.end method

.method public a(Laon;)Laoj;
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Laoj;->y:Laon;

    .line 895
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Laoj;
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Laoj;->s:Ljava/lang/CharSequence;

    .line 791
    return-object p0
.end method

.method public a(Z)Laoj;
    .locals 0

    .prologue
    .line 617
    iput-boolean p1, p0, Laoj;->b:Z

    .line 618
    return-object p0
.end method

.method public b()Laoa;
    .locals 1

    .prologue
    .line 974
    invoke-virtual {p0}, Laoj;->a()Laoa;

    move-result-object v0

    .line 975
    invoke-virtual {v0}, Laoa;->b()V

    .line 976
    return-object v0
.end method

.method public b(F)Laoj;
    .locals 0

    .prologue
    .line 675
    iput p1, p0, Laoj;->h:F

    .line 676
    return-object p0
.end method

.method public b(I)Laoj;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 647
    iget-object v0, p0, Laoj;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Laoj;->a(F)Laoj;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Laoj;
    .locals 0

    .prologue
    .line 627
    iput-boolean p1, p0, Laoj;->a:Z

    .line 628
    return-object p0
.end method

.method public c(F)Laoj;
    .locals 0

    .prologue
    .line 694
    iput p1, p0, Laoj;->i:F

    .line 695
    return-object p0
.end method

.method public c(I)Laoj;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 666
    iget-object v0, p0, Laoj;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Laoj;->b(F)Laoj;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)Laoj;
    .locals 0

    .prologue
    .line 925
    iput-boolean p1, p0, Laoj;->p:Z

    .line 926
    return-object p0
.end method

.method public d(F)Laoj;
    .locals 0

    .prologue
    .line 732
    iput p1, p0, Laoj;->j:F

    .line 733
    return-object p0
.end method

.method public d(I)Laoj;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 685
    iget-object v0, p0, Laoj;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Laoj;->c(F)Laoj;

    move-result-object v0

    return-object v0
.end method

.method public e(F)Laoj;
    .locals 0

    .prologue
    .line 761
    iput p1, p0, Laoj;->k:F

    .line 762
    return-object p0
.end method

.method public e(I)Laoj;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 704
    iget-object v0, p0, Laoj;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoj;->a(Landroid/graphics/drawable/Drawable;)Laoj;

    move-result-object v0

    return-object v0
.end method

.method public f(F)Laoj;
    .locals 2

    .prologue
    .line 810
    const/4 v0, 0x2

    iget-object v1, p0, Laoj;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Laoj;->l:F

    .line 811
    return-object p0
.end method

.method public f(I)Laoj;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 723
    iget-object v0, p0, Laoj;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Laoj;->d(F)Laoj;

    move-result-object v0

    return-object v0
.end method

.method public g(F)Laoj;
    .locals 0

    .prologue
    .line 840
    iput p1, p0, Laoj;->o:F

    .line 841
    return-object p0
.end method

.method public g(I)Laoj;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 742
    iput p1, p0, Laoj;->e:I

    .line 743
    return-object p0
.end method

.method public h(I)Laoj;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 752
    iget-object v0, p0, Laoj;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Laoj;->e(F)Laoj;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Laoj;
    .locals 0

    .prologue
    .line 771
    iput p1, p0, Laoj;->c:I

    .line 772
    return-object p0
.end method

.method public j(I)Laoj;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 781
    iget-object v0, p0, Laoj;->v:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoj;->a(Ljava/lang/CharSequence;)Laoj;

    move-result-object v0

    return-object v0
.end method

.method public k(I)Laoj;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 800
    iget-object v0, p0, Laoj;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Laoj;->l:F

    .line 801
    return-object p0
.end method

.method public l(I)Laoj;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 820
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Laoj;->t:Landroid/content/res/ColorStateList;

    .line 821
    return-object p0
.end method

.method public m(I)Laoj;
    .locals 0

    .prologue
    .line 830
    iput p1, p0, Laoj;->f:I

    .line 831
    return-object p0
.end method

.method public n(I)Laoj;
    .locals 0

    .prologue
    .line 937
    iput p1, p0, Laoj;->q:I

    .line 938
    return-object p0
.end method
