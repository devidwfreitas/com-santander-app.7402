.class public Lbr/com/zup/multistatelayout/MultiStateLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final a:I = -0x1

.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3

.field private static final f:I


# instance fields
.field private g:Landroid/view/LayoutInflater;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Laor;

.field private m:Landroid/view/animation/Animation;

.field private n:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    sget-object v0, Laor;->CONTENT:Laor;

    iput-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->l:Laor;

    .line 60
    invoke-direct {p0, p2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a(Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v0, Laor;->CONTENT:Laor;

    iput-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->l:Laor;

    .line 65
    invoke-direct {p0, p2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a(Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 69
    invoke-virtual {p0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->g:Landroid/view/LayoutInflater;

    .line 70
    invoke-virtual {p0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Laoy;->MultiStateLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    sget v1, Laoy;->MultiStateLayout_msl_loadingLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 73
    if-le v1, v3, :cond_0

    .line 74
    iget-object v2, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->g:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    .line 75
    iget-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    iget-object v2, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    :cond_0
    sget v1, Laoy;->MultiStateLayout_msl_emptyLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 79
    if-le v1, v3, :cond_1

    .line 80
    iget-object v2, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->g:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    .line 81
    iget-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    iget-object v2, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    :cond_1
    sget v1, Laoy;->MultiStateLayout_msl_errorLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 85
    if-le v1, v3, :cond_2

    .line 86
    iget-object v2, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->g:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    iget-object v2, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    :cond_2
    sget v1, Laoy;->MultiStateLayout_msl_state:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 91
    if-eq v1, v3, :cond_3

    .line 92
    packed-switch v1, :pswitch_data_0

    .line 111
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laot;->fade_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->m:Landroid/view/animation/Animation;

    .line 112
    invoke-virtual {p0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laot;->fade_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->n:Landroid/view/animation/Animation;

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    return-void

    .line 94
    :pswitch_0
    sget-object v1, Laor;->CONTENT:Laor;

    iput-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->l:Laor;

    goto :goto_0

    .line 98
    :pswitch_1
    sget-object v1, Laor;->EMPTY:Laor;

    iput-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->l:Laor;

    goto :goto_0

    .line 102
    :pswitch_2
    sget-object v1, Laor;->EMPTY:Laor;

    iput-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->l:Laor;

    goto :goto_0

    .line 106
    :pswitch_3
    sget-object v1, Laor;->LOADING:Laor;

    iput-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->l:Laor;

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 233
    sget-object v0, Laoq;->a:[I

    iget-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->l:Laor;

    invoke-virtual {v1}, Laor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 285
    :pswitch_0
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    if-nez v0, :cond_c

    .line 287
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Content View"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :pswitch_1
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Loading View"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 241
    if-eqz p1, :cond_5

    .line 242
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :cond_1
    :goto_0
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :cond_2
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :cond_3
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 252
    invoke-virtual {p0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->requestLayout()V

    .line 253
    invoke-virtual {p0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->invalidate()V

    .line 254
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 255
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 257
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    iget-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 300
    :cond_4
    :goto_1
    return-void

    .line 244
    :cond_5
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    if-nez v0, :cond_6

    .line 263
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Empty View"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_6
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    :cond_7
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :cond_8
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 273
    :pswitch_3
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    if-nez v0, :cond_9

    .line 274
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Error View"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_9
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :cond_a
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_b
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 290
    :cond_c
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 292
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    iget-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->n:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 293
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :cond_d
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :cond_e
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 309
    iget-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    if-eq v1, p1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Laor;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 178
    sget-object v0, Laoq;->a:[I

    invoke-virtual {p1}, Laor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 192
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 180
    :pswitch_0
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    goto :goto_0

    .line 189
    :pswitch_3
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a()Laor;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->l:Laor;

    return-object v0
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    .line 131
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 132
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    .line 137
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 138
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    .line 155
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 156
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    .line 143
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 144
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    .line 149
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    .line 161
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    .line 167
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 120
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content view is not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a(Z)V

    .line 123
    return-void
.end method

.method public setState(Laor;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->l:Laor;

    if-eq p1, v0, :cond_0

    .line 212
    iput-object p1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->l:Laor;

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a(Z)V

    .line 215
    :cond_0
    return-void
.end method

.method public setState(Laor;Z)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->l:Laor;

    if-eq p1, v0, :cond_0

    .line 224
    iput-object p1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->l:Laor;

    .line 225
    invoke-direct {p0, p2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->a(Z)V

    .line 227
    :cond_0
    return-void
.end method

.method public setViewForState(ILaor;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setViewForState(ILaor;Z)V

    .line 384
    return-void
.end method

.method public setViewForState(ILaor;Z)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 371
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->g:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->g:Landroid/view/LayoutInflater;

    .line 372
    :cond_0
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->g:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 373
    invoke-virtual {p0, v0, p2, p3}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setViewForState(Landroid/view/View;Laor;Z)V

    .line 374
    return-void
.end method

.method public setViewForState(Landroid/view/View;Laor;)V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setViewForState(Landroid/view/View;Laor;Z)V

    .line 361
    return-void
.end method

.method public setViewForState(Landroid/view/View;Laor;Z)V
    .locals 2

    .prologue
    .line 324
    sget-object v0, Laoq;->a:[I

    invoke-virtual {p2}, Laor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 350
    :goto_0
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;Z)V

    .line 351
    :cond_0
    return-void

    .line 326
    :pswitch_0
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->removeView(Landroid/view/View;)V

    .line 327
    :cond_1
    iput-object p1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    .line 328
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    invoke-virtual {p0, v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->removeView(Landroid/view/View;)V

    .line 333
    :cond_2
    iput-object p1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    .line 334
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->k:Landroid/view/View;

    invoke-virtual {p0, v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 338
    :pswitch_2
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->removeView(Landroid/view/View;)V

    .line 339
    :cond_3
    iput-object p1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    .line 340
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 344
    :pswitch_3
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->removeView(Landroid/view/View;)V

    .line 345
    :cond_4
    iput-object p1, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    .line 346
    iget-object v0, p0, Lbr/com/zup/multistatelayout/MultiStateLayout;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lbr/com/zup/multistatelayout/MultiStateLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
