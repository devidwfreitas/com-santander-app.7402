.class public Lbfg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private b:Lbfe;

.field private c:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private d:Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    .line 238
    return-void
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView;)Lbfg;
    .locals 1
    .param p0    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 241
    new-instance v0, Lbfg;

    invoke-direct {v0, p0}, Lbfg;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-object v0
.end method

.method static synthetic a(Lbfg;)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lbfg;->f()V

    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Z)I
    .locals 1

    .prologue
    .line 264
    if-eqz p1, :cond_0

    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    goto :goto_0
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lbfg;->b:Lbfe;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lbfg;->b:Lbfe;

    invoke-virtual {v0, p1}, Lbfe;->b(I)V

    .line 247
    iget-object v0, p0, Lbfg;->b:Lbfe;

    invoke-virtual {v0, p2}, Lbfe;->a(I)V

    .line 248
    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lbfh;

    invoke-direct {v1, p0}, Lbfh;-><init>(Lbfg;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 255
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lbfg;->d()V

    .line 305
    iput-object p1, p0, Lbfg;->d:Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 306
    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbfg;->d:Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 307
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lbfg;->c()V

    .line 292
    iput-object p1, p0, Lbfg;->c:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 293
    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbfg;->c:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 294
    return-void
.end method

.method public final a(Lbfe;)V
    .locals 3

    .prologue
    .line 278
    invoke-virtual {p0}, Lbfg;->b()V

    .line 279
    iput-object p1, p0, Lbfg;->b:Lbfe;

    .line 280
    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbfg;->b:Lbfe;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V

    .line 281
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final b(Z)I
    .locals 2

    .prologue
    .line 268
    if-eqz p1, :cond_0

    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    .line 269
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget-object v1, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 270
    :goto_0
    return v0

    .line 269
    :cond_0
    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    .line 270
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v0

    iget-object v1, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lbfg;->b:Lbfe;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbfg;->b:Lbfe;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lbfg;->b:Lbfe;

    .line 288
    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lbfg;->c:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbfg;->c:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lbfg;->c:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 301
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lbfg;->d:Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lbfg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbfg;->d:Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lbfg;->d:Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 314
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 317
    invoke-virtual {p0}, Lbfg;->b()V

    .line 318
    invoke-virtual {p0}, Lbfg;->c()V

    .line 319
    invoke-virtual {p0}, Lbfg;->d()V

    .line 320
    return-void
.end method
