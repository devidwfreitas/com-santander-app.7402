.class Llam;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llak;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Llak;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Llam;->a:Llak;

    .line 125
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 127
    const v0, 0x7f1009c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llam;->b:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f100737

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llam;->c:Landroid/widget/TextView;

    .line 129
    return-void
.end method


# virtual methods
.method public a(Lkpo;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Llam;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lkpo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Llam;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lkpo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method
