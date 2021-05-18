.class public Lhoa;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field final synthetic d:Lhnz;


# direct methods
.method public constructor <init>(Lhnz;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Lhoa;->d:Lhnz;

    .line 64
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 65
    const v0, 0x7f100fad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lhoa;->a:Landroid/widget/LinearLayout;

    .line 66
    const v0, 0x7f100fae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhoa;->b:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f100faf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhoa;->c:Landroid/widget/TextView;

    .line 68
    return-void
.end method
