.class public Ljhv;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 75
    const v0, 0x7f1004a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljhv;->a:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f1004a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljhv;->b:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f1004a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljhv;->c:Landroid/widget/ImageView;

    .line 79
    return-void
.end method

.method static synthetic a(Ljhv;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ljhv;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Ljhv;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ljhv;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Ljhv;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ljhv;->c:Landroid/widget/ImageView;

    return-object v0
.end method
