.class public Lhoi;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field final synthetic e:Lhoh;


# direct methods
.method public constructor <init>(Lhoh;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    iput-object p1, p0, Lhoi;->e:Lhoh;

    .line 58
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 59
    const v0, 0x7f100faa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhoi;->a:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f100fab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhoi;->b:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f10052d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhoi;->c:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f100fac

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhoi;->d:Landroid/widget/TextView;

    .line 64
    return-void
.end method
