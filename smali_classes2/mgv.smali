.class public Lmgv;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmgv;->c:Z

    .line 22
    iput p1, p0, Lmgv;->a:I

    .line 23
    iput p2, p0, Lmgv;->b:I

    .line 24
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lmgv;->a:I

    int-to-float v1, v1

    iget v2, p0, Lmgv;->b:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lmgv;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 29
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    iget v2, p0, Lmgv;->b:I

    div-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v0

    .line 31
    iget v2, p0, Lmgv;->b:I

    if-ge v0, v2, :cond_0

    .line 32
    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 36
    :goto_0
    iget v2, p0, Lmgv;->b:I

    rem-int v2, v0, v2

    if-nez v2, :cond_1

    .line 37
    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 38
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmgv;->c:Z

    .line 61
    :goto_1
    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 62
    return-void

    .line 34
    :cond_0
    iget v2, p0, Lmgv;->a:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 40
    :cond_1
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lmgv;->b:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 41
    iput-boolean v4, p0, Lmgv;->c:Z

    .line 42
    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 43
    iput v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 44
    :cond_2
    iget-boolean v2, p0, Lmgv;->c:Z

    if-eqz v2, :cond_4

    .line 45
    iput-boolean v4, p0, Lmgv;->c:Z

    .line 46
    iget v2, p0, Lmgv;->a:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 47
    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Lmgv;->b:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 48
    iget v0, p0, Lmgv;->a:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 50
    :cond_3
    iget v0, p0, Lmgv;->a:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 52
    :cond_4
    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Lmgv;->b:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_5

    .line 53
    iput-boolean v4, p0, Lmgv;->c:Z

    .line 54
    iget v0, p0, Lmgv;->a:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 55
    iget v0, p0, Lmgv;->a:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 57
    :cond_5
    iput-boolean v4, p0, Lmgv;->c:Z

    .line 58
    iget v0, p0, Lmgv;->a:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 59
    iget v0, p0, Lmgv;->a:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1
.end method
