.class public Lgtv;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 83
    const v0, 0x7f1011ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgtv;->a:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f1011ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgtv;->b:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f1011ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgtv;->c:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f1011af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgtv;->d:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f1011b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lgtv;->e:Landroid/widget/Button;

    .line 89
    return-void
.end method

.method static synthetic a(Lgtv;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lgtv;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lgtv;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lgtv;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lgtv;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lgtv;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lgtv;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lgtv;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lgtv;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lgtv;->e:Landroid/widget/Button;

    return-object v0
.end method
