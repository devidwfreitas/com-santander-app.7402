.class public Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:Lamh;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/view/View;

.field private i:Lamr;

.field private j:Z

.field private k:Z

.field private l:Lamt;

.field private m:I

.field private n:Landroid/support/v7/widget/RecyclerView$ItemDecoration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->m:I

    .line 48
    new-instance v0, Lami;

    invoke-direct {v0, p0}, Lami;-><init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V

    iput-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a:Lamh;

    .line 146
    new-instance v0, Lamj;

    invoke-direct {v0, p0}, Lamj;-><init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V

    iput-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->n:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 168
    invoke-direct {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b()V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->m:I

    .line 48
    new-instance v0, Lami;

    invoke-direct {v0, p0}, Lami;-><init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V

    iput-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a:Lamh;

    .line 146
    new-instance v0, Lamj;

    invoke-direct {v0, p0}, Lamj;-><init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V

    iput-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->n:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 173
    invoke-direct {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b()V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->m:I

    .line 48
    new-instance v0, Lami;

    invoke-direct {v0, p0}, Lami;-><init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V

    iput-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a:Lamh;

    .line 146
    new-instance v0, Lamj;

    invoke-direct {v0, p0}, Lamj;-><init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V

    iput-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->n:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 178
    invoke-direct {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b()V

    .line 179
    return-void
.end method

.method public static synthetic a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->m:I

    return p1
.end method

.method public static synthetic a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Lamr;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->i:Lamr;

    return-object v0
.end method

.method public static synthetic a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->j:Z

    return p1
.end method

.method public static synthetic b(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lalu;->santander_view_drop_down:I

    invoke-static {v0, v1, p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 184
    sget v0, Lals;->root_drop_down_container:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b:Landroid/view/View;

    .line 185
    sget v0, Lals;->drop_down_container:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->c:Landroid/widget/FrameLayout;

    .line 186
    sget v0, Lals;->recycler_view_container:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->d:Landroid/widget/FrameLayout;

    .line 187
    sget v0, Lals;->content_container:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->e:Landroid/widget/FrameLayout;

    .line 188
    sget v0, Lals;->recycler_view:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->f:Landroid/support/v7/widget/RecyclerView;

    .line 189
    sget v0, Lals;->arrow_image:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->g:Landroid/widget/ImageView;

    .line 190
    sget v0, Lals;->shadow:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->h:Landroid/view/View;

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->k:Z

    .line 194
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b:Landroid/view/View;

    new-instance v1, Laml;

    invoke-direct {v1, p0}, Laml;-><init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->h:Landroid/view/View;

    new-instance v1, Lamm;

    invoke-direct {v1, p0}, Lamm;-><init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->f:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 211
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 212
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->n:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 214
    new-instance v0, Lamn;

    invoke-direct {v0, p0}, Lamn;-><init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 231
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 234
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 236
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 237
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 241
    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->removeView(Landroid/view/View;)V

    .line 242
    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->addView(Landroid/view/View;)V

    .line 244
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 245
    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->removeView(Landroid/view/View;)V

    .line 246
    iget-object v1, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 247
    return-void
.end method

.method public static synthetic c(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->f()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 250
    invoke-direct {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->e()V

    .line 251
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b:Landroid/view/View;

    new-instance v1, Lamo;

    invoke-direct {v1, p0}, Lamo;-><init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 257
    return-void
.end method

.method public static synthetic d(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->k:Z

    return v0
.end method

.method public static synthetic e(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Lamt;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->l:Lamt;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    .line 263
    iget-object v1, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    .line 267
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 271
    float-to-int v0, v0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 272
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic f(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->i:Lamr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a:Lamh;

    invoke-interface {v0}, Lamh;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-direct {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->g()V

    .line 279
    invoke-direct {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->h()V

    .line 280
    invoke-direct {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->i()V

    .line 281
    iget-boolean v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->k:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->k:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-boolean v1, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->k:Z

    .line 286
    if-nez v1, :cond_0

    .line 287
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 288
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 290
    :cond_0
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 291
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz v1, :cond_1

    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->d:Landroid/widget/FrameLayout;

    .line 292
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lamp;

    invoke-direct {v2, p0, v1}, Lamp;-><init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;Z)V

    .line 293
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 311
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public static synthetic g(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->c()V

    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 314
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 315
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-boolean v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 316
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 318
    return-void

    .line 315
    :cond_0
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0
.end method

.method public static synthetic h(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->d()V

    return-void
.end method

.method public static synthetic i(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->m:I

    return v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 321
    iget-boolean v1, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->k:Z

    .line 322
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 323
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-boolean v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 324
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lamq;

    invoke-direct {v2, p0, v1}, Lamq;-><init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;Z)V

    .line 325
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 343
    return-void

    .line 323
    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0
.end method

.method public static synthetic j(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->e()V

    return-void
.end method

.method public static synthetic k(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static synthetic l(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->h:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a()Lamr;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->i:Lamr;

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 413
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 348
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DropDownView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 352
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 356
    invoke-virtual {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DropDownView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 361
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DropDownView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 379
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 366
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DropDownView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    return-void
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 432
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public setAdapter(Lamr;)V
    .locals 2
    .param p1    # Lamr;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 382
    iput-object p1, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->i:Lamr;

    .line 383
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->i:Lamr;

    iget-object v1, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a:Lamh;

    invoke-static {v0, v1}, Lamr;->a(Lamr;Lamh;)Lamh;

    .line 384
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 386
    iget-boolean v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->j:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a:Lamh;

    invoke-interface {v0}, Lamh;->g()V

    .line 388
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a:Lamh;

    invoke-interface {v0}, Lamh;->a()V

    .line 390
    :cond_0
    return-void
.end method

.method public setCurrentItem(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->i:Lamr;

    invoke-static {v0}, Lamr;->c(Lamr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 398
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 399
    iget-boolean v1, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->j:Z

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a:Lamh;

    invoke-interface {v1, v0}, Lamh;->a(I)V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iput v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->m:I

    goto :goto_0
.end method

.method public setOnItemSelectedListener(Lamt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lamt",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 408
    iput-object p1, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->l:Lamt;

    .line 409
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b:Landroid/view/View;

    if-nez v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 421
    iget-object v1, p0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b:Landroid/view/View;

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 422
    invoke-direct {p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->e()V

    goto :goto_0

    .line 421
    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method
