.class public Lltx;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lltu;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lltu;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lltx;->a:Lltu;

    .line 76
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 77
    invoke-direct {p0, p2}, Lltx;->a(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method static synthetic a(Lltx;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lltx;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f10089d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lltx;->b:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f10089e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lltx;->c:Landroid/widget/ImageView;

    .line 83
    return-void
.end method

.method static synthetic b(Lltx;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lltx;->c:Landroid/widget/ImageView;

    return-object v0
.end method
