.class public Lgge;
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
    .line 75
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 77
    const v0, 0x7f100491

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgge;->a:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f1003ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgge;->b:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f100492

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgge;->c:Landroid/widget/ImageView;

    .line 80
    return-void
.end method

.method static synthetic a(Lgge;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lgge;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lgge;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lgge;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lgge;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lgge;->c:Landroid/widget/ImageView;

    return-object v0
.end method
