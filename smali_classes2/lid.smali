.class public Llid;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field final synthetic c:Llib;


# direct methods
.method public constructor <init>(Llib;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Llid;->c:Llib;

    .line 195
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 196
    invoke-direct {p0, p2}, Llid;->a(Landroid/view/View;)V

    .line 197
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 200
    const v0, 0x7f100e46

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llid;->a:Landroid/widget/TextView;

    .line 201
    const v0, 0x7f100e47

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llid;->b:Landroid/widget/TextView;

    .line 202
    return-void
.end method
