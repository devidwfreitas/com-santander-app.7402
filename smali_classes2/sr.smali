.class public Lsr;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field a:Lace;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/ProgressBar;

.field g:Landroid/widget/ImageView;

.field final synthetic h:Lsp;


# direct methods
.method public constructor <init>(Lsp;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Lsr;->h:Lsp;

    .line 100
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 101
    sget v0, Lla;->efe_divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsr;->b:Landroid/view/View;

    .line 102
    sget v0, Lla;->efe_nome_produto:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsr;->d:Landroid/widget/TextView;

    .line 103
    sget v0, Lla;->efe_contrato:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsr;->e:Landroid/widget/TextView;

    .line 104
    sget v0, Lla;->efe_progress:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lsr;->f:Landroid/widget/ProgressBar;

    .line 105
    sget v0, Lla;->efe_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lsr;->g:Landroid/widget/ImageView;

    .line 106
    sget v0, Lla;->efe_cor_familia:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsr;->c:Landroid/view/View;

    .line 107
    return-void
.end method
