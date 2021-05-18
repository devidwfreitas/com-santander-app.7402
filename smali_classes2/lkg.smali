.class public Llkg;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llke;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Llke;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Llkg;->a:Llke;

    .line 75
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 76
    invoke-direct {p0, p2}, Llkg;->a(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method static synthetic a(Llkg;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Llkg;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f1010f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llkg;->b:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f100433

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llkg;->c:Landroid/widget/FrameLayout;

    .line 82
    return-void
.end method

.method static synthetic b(Llkg;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Llkg;->b:Landroid/widget/TextView;

    return-object v0
.end method
