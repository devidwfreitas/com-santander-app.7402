.class Llax;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Landroid/support/v7/widget/CardView;

.field c:Landroid/widget/ImageButton;

.field d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 141
    const v0, 0x7f100f78

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llax;->a:Landroid/widget/LinearLayout;

    .line 142
    const v0, 0x7f100574

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Llax;->b:Landroid/support/v7/widget/CardView;

    .line 143
    const v0, 0x7f100f79

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llax;->c:Landroid/widget/ImageButton;

    .line 144
    const v0, 0x7f10030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llax;->d:Landroid/widget/TextView;

    .line 145
    return-void
.end method
