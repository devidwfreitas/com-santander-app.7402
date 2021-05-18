.class public Llhq;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llho;

.field private b:Landroid/widget/ImageButton;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Llho;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Llhq;->a:Llho;

    .line 89
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 90
    invoke-direct {p0, p2}, Llhq;->a(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method static synthetic a(Llhq;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Llhq;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f100f7a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llhq;->b:Landroid/widget/ImageButton;

    .line 95
    const v0, 0x7f1010b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llhq;->c:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f1010b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llhq;->d:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f1010af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llhq;->e:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f10095d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llhq;->f:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f1004f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llhq;->g:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f1010b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llhq;->h:Landroid/view/View;

    .line 101
    const v0, 0x7f1010b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llhq;->i:Landroid/widget/TextView;

    .line 102
    return-void
.end method

.method static synthetic b(Llhq;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Llhq;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Llhq;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Llhq;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Llhq;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Llhq;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Llhq;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Llhq;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Llhq;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Llhq;->b:Landroid/widget/ImageButton;

    return-object v0
.end method
