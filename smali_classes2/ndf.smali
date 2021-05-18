.class Lndf;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Landroid/widget/TextView;

.field final synthetic b:Lnde;


# direct methods
.method constructor <init>(Lnde;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Lndf;->b:Lnde;

    .line 64
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 66
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v0, 0x7f10047f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lndf;->a:Landroid/widget/TextView;

    .line 69
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lndf;->b:Lnde;

    invoke-static {v0}, Lnde;->a(Lnde;)Lndg;

    move-result-object v0

    invoke-virtual {p0}, Lndf;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lndg;->a(Landroid/view/View;I)V

    .line 74
    return-void
.end method
