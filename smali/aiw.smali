.class public Laiw;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field final synthetic f:Laiv;


# direct methods
.method public constructor <init>(Laiv;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Laiw;->f:Laiv;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lagg;->tipo_produto_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laiw;->a:Landroid/widget/TextView;

    sget v0, Lagg;->subproduto_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laiw;->b:Landroid/widget/TextView;

    sget v0, Lagg;->compartilhado_product_specifics_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laiw;->c:Landroid/widget/TextView;

    sget v0, Lagg;->limite_anterior_value_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laiw;->d:Landroid/widget/TextView;

    sget v0, Lagg;->novo_limite_value_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laiw;->e:Landroid/widget/TextView;

    return-void
.end method
