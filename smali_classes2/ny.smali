.class public Lny;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lnx;


# direct methods
.method public constructor <init>(Lnx;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Lny;->c:Lnx;

    .line 44
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    sget v0, Lla;->item_comprovante_efetivacao_recycler_label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lny;->a:Landroid/widget/TextView;

    .line 46
    sget v0, Lla;->item_comprovante_efetivacao_recycler_value:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lny;->b:Landroid/widget/TextView;

    .line 47
    return-void
.end method
