.class public Lluf;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llud;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Llud;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lluf;->a:Llud;

    .line 70
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 71
    invoke-direct {p0, p2}, Lluf;->a(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method static synthetic a(Lluf;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lluf;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f1011b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lluf;->b:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f10067e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lluf;->c:Landroid/widget/ImageView;

    .line 77
    return-void
.end method

.method static synthetic b(Lluf;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lluf;->c:Landroid/widget/ImageView;

    return-object v0
.end method
