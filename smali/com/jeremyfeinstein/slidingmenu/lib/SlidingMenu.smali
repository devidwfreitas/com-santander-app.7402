.class public Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field private static final i:Ljava/lang/String; = "SlidingMenu"


# instance fields
.field private j:Z

.field private k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

.field private l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

.field private m:Lfce;

.field private n:Lfce;

.field private o:Lfcc;

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const v6, 0x3ea8f5c3    # 0.33f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->j:Z

    .line 1001
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->p:Landroid/os/Handler;

    .line 205
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 206
    new-instance v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-direct {v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    .line 207
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {p0, v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 209
    new-instance v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-direct {v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    .line 210
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {p0, v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V

    .line 213
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setCustomViewAbove(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)V

    .line 214
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    new-instance v1, Lfbz;

    invoke-direct {v1, p0}, Lfbz;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setOnPageChangeListener(Lfbj;)V

    .line 234
    sget-object v0, Lfby;->SlidingMenu:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 236
    sget v1, Lfby;->SlidingMenu_mode:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 237
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 238
    sget v1, Lfby;->SlidingMenu_viewAbove:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 239
    if-eq v1, v3, :cond_0

    .line 240
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(I)V

    .line 244
    :goto_0
    sget v1, Lfby;->SlidingMenu_viewBehind:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 245
    if-eq v1, v3, :cond_1

    .line 246
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    .line 250
    :goto_1
    sget v1, Lfby;->SlidingMenu_touchModeAbove:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 251
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 252
    sget v1, Lfby;->SlidingMenu_touchModeBehind:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 253
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeBehind(I)V

    .line 255
    sget v1, Lfby;->SlidingMenu_behindOffset:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 256
    sget v2, Lfby;->SlidingMenu_behindWidth:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    .line 257
    if-eq v1, v3, :cond_2

    if-eq v2, v3, :cond_2

    .line 258
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set both behindOffset and behindWidth for a SlidingMenu"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    goto :goto_0

    .line 248
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V

    goto :goto_1

    .line 259
    :cond_2
    if-eq v1, v3, :cond_5

    .line 260
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 265
    :goto_2
    sget v1, Lfby;->SlidingMenu_behindScrollScale:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 266
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindScrollScale(F)V

    .line 267
    sget v1, Lfby;->SlidingMenu_shadowDrawable:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 268
    if-eq v1, v3, :cond_3

    .line 269
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 271
    :cond_3
    sget v1, Lfby;->SlidingMenu_shadowWidth:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 272
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V

    .line 273
    sget v1, Lfby;->SlidingMenu_fadeEnabled:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 274
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeEnabled(Z)V

    .line 275
    sget v1, Lfby;->SlidingMenu_fadeDegree:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 276
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 277
    sget v1, Lfby;->SlidingMenu_selectorEnabled:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 278
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSelectorEnabled(Z)V

    .line 279
    sget v1, Lfby;->SlidingMenu_selectorDrawable:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 280
    if-eq v1, v3, :cond_4

    .line 281
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSelectorDrawable(I)V

    .line 282
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    return-void

    .line 261
    :cond_5
    if-eq v2, v3, :cond_6

    .line 262
    invoke-virtual {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    goto :goto_2

    .line 264
    :cond_6
    invoke-virtual {p0, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    goto :goto_2
.end method

.method public static synthetic a(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lfce;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->m:Lfce;

    return-object v0
.end method

.method public static synthetic b(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lfcc;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->o:Lfcc;

    return-object v0
.end method

.method public static synthetic c(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lfce;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->n:Lfce;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->h()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1005
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    const/4 v1, 0x1

    .line 1008
    :goto_1
    if-eqz v1, :cond_2

    const/4 v0, 0x2

    .line 1010
    :cond_2
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1011
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->p:Landroid/os/Handler;

    new-instance v2, Lfca;

    invoke-direct {v2, p0, v0}, Lfca;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    move v1, v0

    .line 1007
    goto :goto_1
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;IZ)V

    .line 293
    return-void
.end method

.method public a(Landroid/app/Activity;IZ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 303
    if-eqz p2, :cond_0

    if-eq p2, v1, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slideStyle must be either SLIDING_WINDOW or SLIDING_CONTENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This SlidingMenu appears to already be attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v1, [I

    const v2, 0x1010054

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 311
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 312
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 314
    packed-switch p2, :pswitch_data_0

    .line 338
    :cond_2
    :goto_0
    return-void

    .line 316
    :pswitch_0
    iput-boolean v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->j:Z

    .line 317
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 318
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 320
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 321
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 322
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 323
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    goto :goto_0

    .line 326
    :pswitch_1
    iput-boolean p3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->j:Z

    .line 328
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 329
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 331
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 332
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 334
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 335
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/View;)V

    .line 858
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 494
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b(Landroid/view/View;)V

    .line 867
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 512
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 528
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c(Z)V

    .line 548
    :goto_0
    return-void

    .line 546
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Z)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g()Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->e()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Z)V

    .line 485
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 990
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 991
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 992
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 993
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 994
    iget-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->j:Z

    if-nez v4, :cond_0

    .line 995
    const-string v4, "SlidingMenu"

    const-string v5, "setting padding!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setPadding(IIII)V

    .line 998
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b(Z)V

    .line 502
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c(Z)V

    .line 519
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d(Z)V

    .line 535
    return-void
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public m()F
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->f()F

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->i()I

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 979
    check-cast p1, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;

    .line 980
    invoke-virtual {p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 981
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 982
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 969
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 970
    new-instance v1, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;-><init>(Landroid/os/Parcelable;I)V

    .line 971
    return-object v1
.end method

.method public p()V
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c()V

    .line 874
    return-void
.end method

.method public setAboveOffset(I)V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setAboveOffset(I)V

    .line 609
    return-void
.end method

.method public setAboveOffsetRes(I)V
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 618
    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setAboveOffset(I)V

    .line 619
    return-void
.end method

.method public setBehindCanvasTransformer(Lfcb;)V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setCanvasTransformer(Lfcb;)V

    .line 699
    return-void
.end method

.method public setBehindOffset(I)V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setWidthOffset(I)V

    .line 589
    return-void
.end method

.method public setBehindOffsetRes(I)V
    .locals 1

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 599
    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 600
    return-void
.end method

.method public setBehindScrollScale(F)V
    .locals 2

    .prologue
    .line 687
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 688
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollScale must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setScrollScale(F)V

    .line 690
    return-void
.end method

.method public setBehindWidth(I)V
    .locals 5

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 630
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 632
    :try_start_0
    const-class v1, Landroid/view/Display;

    .line 633
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Point;

    aput-object v4, v2, v3

    .line 634
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 635
    const-string v4, "getSize"

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 636
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget v0, v3, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :goto_0
    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 642
    return-void

    .line 638
    :catch_0
    move-exception v1

    .line 639
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public setBehindWidthRes(I)V
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 652
    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    .line 653
    return-void
.end method

.method public setContent(I)V
    .locals 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 348
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setContent(Landroid/view/View;)V

    .line 357
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->h()V

    .line 358
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setFadeDegree(F)V

    .line 813
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setFadeEnabled(Z)V

    .line 803
    return-void
.end method

.method public setMenu(I)V
    .locals 2

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 376
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setContent(Landroid/view/View;)V

    .line 385
    return-void
.end method

.method public setMode(I)V
    .locals 2

    .prologue
    .line 447
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 448
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setMode(I)V

    .line 451
    return-void
.end method

.method public setOnCloseListener(Lfcc;)V
    .locals 0

    .prologue
    .line 904
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->o:Lfcc;

    .line 905
    return-void
.end method

.method public setOnClosedListener(Lfcd;)V
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setOnClosedListener(Lfcd;)V

    .line 923
    return-void
.end method

.method public setOnOpenListener(Lfce;)V
    .locals 0

    .prologue
    .line 883
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->m:Lfce;

    .line 884
    return-void
.end method

.method public setOnOpenedListener(Lfcf;)V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setOnOpenedListener(Lfcf;)V

    .line 914
    return-void
.end method

.method public setSecondaryMenu(I)V
    .locals 2

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSecondaryMenu(Landroid/view/View;)V

    .line 403
    return-void
.end method

.method public setSecondaryMenu(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSecondaryContent(Landroid/view/View;)V

    .line 413
    return-void
.end method

.method public setSecondaryOnOpenListner(Lfce;)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->n:Lfce;

    .line 895
    return-void
.end method

.method public setSecondaryShadowDrawable(I)V
    .locals 1

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 767
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 776
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSelectedView(Landroid/view/View;)V

    .line 831
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 849
    return-void
.end method

.method public setSelectorDrawable(I)V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 840
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSelectorEnabled(Z)V

    .line 822
    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 749
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 758
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setShadowWidth(I)V

    .line 794
    return-void
.end method

.method public setShadowWidthRes(I)V
    .locals 1

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V

    .line 785
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setSlidingEnabled(Z)V

    .line 431
    return-void
.end method

.method public setStatic(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 467
    if-eqz p1, :cond_0

    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V

    .line 470
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 478
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 475
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V

    .line 476
    invoke-virtual {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    goto :goto_0
.end method

.method public setTouchModeAbove(I)V
    .locals 2

    .prologue
    .line 718
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 720
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setTouchMode(I)V

    .line 724
    return-void
.end method

.method public setTouchModeBehind(I)V
    .locals 2

    .prologue
    .line 734
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 736
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setTouchMode(I)V

    .line 740
    return-void
.end method

.method public setTouchmodeMarginThreshold(I)V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setMarginThreshold(I)V

    .line 678
    return-void
.end method
