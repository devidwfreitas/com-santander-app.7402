.class public Lllc;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field a:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lllb;


# direct methods
.method public constructor <init>(Lllb;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lllc;->c:Lllb;

    .line 71
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 72
    invoke-direct {p0, p2}, Lllc;->a(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f101093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lllc;->a:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 78
    const v0, 0x7f101094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lllc;->b:Landroid/widget/TextView;

    .line 79
    return-void
.end method
