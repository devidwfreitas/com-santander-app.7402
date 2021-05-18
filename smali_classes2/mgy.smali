.class public Lmgy;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZII)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 23
    int-to-float v0, p4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lmgy;->a:I

    .line 24
    int-to-float v0, p5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lmgy;->b:I

    .line 25
    iput-boolean p2, p0, Lmgy;->c:Z

    .line 26
    iput-boolean p3, p0, Lmgy;->d:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmgy;->c:Z

    if-eqz v0, :cond_0

    .line 32
    iget v0, p0, Lmgy;->a:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 35
    :cond_0
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lmgy;->d:Z

    if-eqz v0, :cond_2

    .line 36
    :cond_1
    iget v0, p0, Lmgy;->a:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 40
    :cond_2
    iget v0, p0, Lmgy;->b:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 41
    iget v0, p0, Lmgy;->b:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 42
    return-void
.end method
