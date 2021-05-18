.class public Lamj;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;


# direct methods
.method public constructor <init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lamj;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 150
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 151
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 152
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 153
    if-nez v2, :cond_1

    .line 163
    :cond_0
    return-void

    .line 155
    :cond_1
    new-instance v3, Lamk;

    invoke-direct {v3, p0, v2}, Lamk;-><init>(Lamj;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
