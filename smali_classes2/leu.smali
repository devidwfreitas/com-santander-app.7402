.class public Lleu;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llet;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Llet;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lleu;->a:Llet;

    .line 101
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 102
    invoke-direct {p0, p2}, Lleu;->a(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method static synthetic a(Lleu;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lleu;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f1004eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lleu;->b:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f1004ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lleu;->c:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f1004ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lleu;->d:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f1004ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lleu;->f:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f1004ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lleu;->g:Landroid/view/View;

    .line 111
    const v0, 0x7f1004ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lleu;->e:Landroid/widget/TextView;

    .line 112
    return-void
.end method

.method static synthetic b(Lleu;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lleu;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lleu;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lleu;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lleu;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lleu;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lleu;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lleu;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lleu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lleu;->g:Landroid/view/View;

    return-object v0
.end method
