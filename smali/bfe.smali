.class public Lbfe;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;)V
    .locals 1

    .prologue
    .line 200
    iput-object p1, p0, Lbfe;->a:Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 201
    invoke-static {p1}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->c(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;)Lbff;

    move-result-object v0

    invoke-virtual {v0}, Lbff;->a()I

    move-result v0

    iput v0, p0, Lbfe;->d:I

    .line 202
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lbfe;->c:I

    .line 206
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 209
    iput p1, p0, Lbfe;->b:I

    .line 210
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 215
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lbfe;->d:I

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    move v2, v1

    .line 216
    :goto_0
    if-eqz v2, :cond_2

    iget-object v1, p0, Lbfe;->a:Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;

    invoke-static {v1}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->d(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lbfe;->b:I

    .line 217
    :goto_1
    if-eqz v2, :cond_0

    iget-object v2, p0, Lbfe;->a:Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;

    invoke-static {v2}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->d(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v0, p0, Lbfe;->c:I

    .line 218
    :cond_0
    iget-object v2, p0, Lbfe;->a:Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;

    invoke-static {v2}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->c(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;)Lbff;

    move-result-object v2

    invoke-virtual {v2}, Lbff;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 219
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 220
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 225
    :goto_2
    return-void

    :cond_1
    move v2, v0

    .line 215
    goto :goto_0

    :cond_2
    move v1, v0

    .line 216
    goto :goto_1

    .line 222
    :cond_3
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 223
    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2
.end method
