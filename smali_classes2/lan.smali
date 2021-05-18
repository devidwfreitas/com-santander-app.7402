.class Llan;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llak;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;


# direct methods
.method constructor <init>(Llak;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 92
    iput-object p1, p0, Llan;->a:Llak;

    .line 93
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 95
    const v0, 0x7f10072e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llan;->b:Landroid/widget/Button;

    .line 96
    const v0, 0x7f100e2e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llan;->c:Landroid/widget/Button;

    .line 97
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Llan;->b:Landroid/widget/Button;

    new-instance v1, Llao;

    invoke-direct {v1, p0}, Llao;-><init>(Llan;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Llan;->c:Landroid/widget/Button;

    new-instance v1, Llap;

    invoke-direct {v1, p0}, Llap;-><init>(Llan;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method
