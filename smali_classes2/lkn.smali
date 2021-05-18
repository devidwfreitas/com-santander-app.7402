.class Llkn;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llkm;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Llkm;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Llkn;->a:Llkm;

    .line 67
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 68
    invoke-direct {p0, p2}, Llkn;->a(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method static synthetic a(Llkn;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Llkn;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f10095d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llkn;->b:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f100578

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llkn;->c:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f1010b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llkn;->d:Landroid/widget/TextView;

    .line 75
    return-void
.end method

.method static synthetic b(Llkn;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Llkn;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Llkn;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Llkn;->d:Landroid/widget/TextView;

    return-object v0
.end method
