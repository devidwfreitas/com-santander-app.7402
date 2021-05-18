.class public Loc;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Lob;


# direct methods
.method public constructor <init>(Lob;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Loc;->b:Lob;

    .line 56
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 57
    sget v0, Lla;->notas_item_nome:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Loc;->a:Landroid/widget/TextView;

    .line 58
    return-void
.end method
