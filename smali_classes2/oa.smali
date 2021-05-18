.class public Loa;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/support/v7/widget/RecyclerView;

.field final synthetic c:Lnz;


# direct methods
.method public constructor <init>(Lnz;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Loa;->c:Lnz;

    .line 55
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 56
    sget v0, Lla;->notas_nome_grupo:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Loa;->a:Landroid/widget/TextView;

    .line 57
    sget v0, Lla;->nota_lista_itens:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Loa;->b:Landroid/support/v7/widget/RecyclerView;

    .line 58
    return-void
.end method
