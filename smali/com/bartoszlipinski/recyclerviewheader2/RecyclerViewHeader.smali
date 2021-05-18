.class public Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lbfg;

.field private h:Lbff;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->a:I

    .line 41
    iput-boolean v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->c:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->a:I

    .line 41
    iput-boolean v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->c:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->a:I

    .line 41
    iput-boolean v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->c:Z

    .line 58
    return-void
.end method

.method public static synthetic a(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->b()V

    return-void
.end method

.method static synthetic a(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;I)V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public static synthetic b(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;)Lbfg;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->g:Lbfg;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->g:Lbfg;

    invoke-virtual {v0}, Lbfg;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->h:Lbff;

    invoke-virtual {v0}, Lbff;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->c:Z

    .line 112
    iget-boolean v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->c:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_1
    invoke-static {p0, v0}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->a(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;I)V

    .line 113
    iget-boolean v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->c:Z

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->c()I

    move-result v0

    .line 115
    iget-boolean v1, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->e:Z

    if-eqz v1, :cond_3

    .line 116
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->setTranslationY(F)V

    .line 121
    :cond_0
    :goto_2
    return-void

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :cond_2
    iget v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->a:I

    goto :goto_1

    .line 118
    :cond_3
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->setTranslationX(F)V

    goto :goto_2
.end method

.method private b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Be sure to attach RecyclerViewHeader after setting your RecyclerView\'s LayoutManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    return-void
.end method

.method private c()I
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->g:Lbfg;

    iget-boolean v1, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->e:Z

    invoke-virtual {v0, v1}, Lbfg;->a(Z)I

    move-result v1

    .line 125
    iget-object v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->h:Lbff;

    invoke-virtual {v0}, Lbff;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->g:Lbfg;

    iget-boolean v2, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->e:Z

    invoke-virtual {v0, v2}, Lbfg;->b(Z)I

    move-result v0

    .line 126
    :goto_0
    sub-int/2addr v0, v1

    return v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;)Lbff;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->h:Lbff;

    return-object v0
.end method

.method public static synthetic d(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->e:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    iget-boolean v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->f:Z

    if-eqz v0, :cond_0

    .line 102
    iput-boolean v1, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->f:Z

    .line 103
    iput-boolean v1, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->d:Z

    .line 104
    iget-object v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->g:Lbfg;

    invoke-virtual {v0}, Lbfg;->e()V

    .line 105
    iput-object v2, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->g:Lbfg;

    .line 106
    iput-object v2, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->h:Lbff;

    .line 108
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 68
    invoke-static {p1}, Lbfg;->a(Landroid/support/v7/widget/RecyclerView;)Lbfg;

    move-result-object v0

    iput-object v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->g:Lbfg;

    .line 69
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Lbff;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Lbff;

    move-result-object v0

    iput-object v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->h:Lbff;

    .line 70
    iget-object v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->h:Lbff;

    invoke-virtual {v0}, Lbff;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->e:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->f:Z

    .line 72
    iget-object v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->g:Lbfg;

    new-instance v1, Lbfe;

    invoke-direct {v1, p0}, Lbfe;-><init>(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;)V

    invoke-virtual {v0, v1}, Lbfg;->a(Lbfe;)V

    .line 73
    iget-object v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->g:Lbfg;

    new-instance v1, Lbfb;

    invoke-direct {v1, p0}, Lbfb;-><init>(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;)V

    invoke-virtual {v0, v1}, Lbfg;->a(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 79
    iget-object v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->g:Lbfg;

    new-instance v1, Lbfc;

    invoke-direct {v1, p0, p1}, Lbfc;-><init>(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Lbfg;->a(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 95
    return-void
.end method

.method public final getVisibility()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->a:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    iget-boolean v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->g:Lbfg;

    invoke-virtual {v0, p1}, Lbfg;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->d:Z

    .line 163
    iget-boolean v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->c()I

    move-result v0

    iput v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->b:I

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->d:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    :cond_3
    move v0, v2

    .line 162
    goto :goto_0
.end method

.method protected final onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 146
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->f:Z

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 151
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 152
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    .line 154
    :goto_0
    iget-object v2, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->g:Lbfg;

    invoke-virtual {p0}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Lbfg;->a(II)V

    .line 155
    invoke-direct {p0}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->b()V

    .line 157
    :cond_0
    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 172
    iget-boolean v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->d:Z

    if-eqz v0, :cond_2

    .line 173
    iget v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->b:I

    invoke-direct {p0}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 174
    iget-boolean v1, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->e:Z

    if-eqz v1, :cond_0

    move v6, v0

    .line 175
    :goto_0
    iget-boolean v1, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->e:Z

    if-eqz v1, :cond_1

    move v5, v8

    .line 177
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v5, v5

    sub-float v5, v7, v5

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v6, v6

    sub-float v6, v7, v6

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    .line 177
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->g:Lbfg;

    invoke-virtual {v1, v0}, Lbfg;->b(Landroid/view/MotionEvent;)Z

    .line 186
    :goto_2
    return v8

    :cond_0
    move v6, v8

    .line 174
    goto :goto_0

    :cond_1
    move v5, v0

    .line 175
    goto :goto_1

    .line 186
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_2
.end method

.method public final setVisibility(I)V
    .locals 1

    .prologue
    .line 131
    iput p1, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->a:I

    .line 132
    iget-boolean v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->c:Z

    if-nez v0, :cond_0

    .line 133
    iget v0, p0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->a:I

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 135
    :cond_0
    return-void
.end method
