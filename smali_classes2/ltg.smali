.class public Lltg;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lltd;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lltd;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lltg;->a:Lltd;

    .line 129
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 130
    invoke-direct {p0, p2}, Lltg;->a(Landroid/view/View;)V

    .line 131
    return-void
.end method

.method static synthetic a(Lltg;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lltg;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 134
    const v0, 0x7f1004d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lltg;->b:Landroid/widget/FrameLayout;

    .line 135
    const v0, 0x7f1004d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lltg;->c:Landroid/widget/TextView;

    .line 136
    return-void
.end method

.method static synthetic b(Lltg;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lltg;->c:Landroid/widget/TextView;

    return-object v0
.end method
