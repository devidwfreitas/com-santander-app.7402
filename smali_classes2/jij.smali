.class public Ljij;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 65
    const v0, 0x7f100478

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljij;->a:Landroid/widget/TextView;

    .line 66
    return-void
.end method

.method static synthetic a(Ljij;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Ljij;->a:Landroid/widget/TextView;

    return-object v0
.end method
