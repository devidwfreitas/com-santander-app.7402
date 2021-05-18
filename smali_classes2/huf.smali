.class public Lhuf;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0xd8d8d8

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lhuf;->a:Landroid/graphics/drawable/ColorDrawable;

    .line 21
    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    .line 28
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lhue;

    .line 29
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    move v2, v3

    .line 30
    :goto_0
    if-ge v2, v5, :cond_2

    .line 31
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 33
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 34
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v6

    .line 35
    iget-object v6, p0, Lhuf;->a:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ColorDrawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v1

    .line 36
    invoke-virtual {v0}, Lhue;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 37
    iget-object v7, p0, Lhuf;->a:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7, v3, v1, v4, v6}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 38
    iget-object v7, p0, Lhuf;->a:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 42
    :cond_0
    iget-object v7, p0, Lhuf;->a:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7, v3, v1, v4, v6}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 43
    iget-object v1, p0, Lhuf;->a:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 30
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 39
    :cond_1
    add-int/lit8 v7, v5, -0x1

    if-ne v2, v7, :cond_0

    goto :goto_1

    .line 45
    :cond_2
    return-void
.end method
