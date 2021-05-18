.class public Llkc;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llka;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Llka;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Llkc;->a:Llka;

    .line 85
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 86
    invoke-direct {p0, p2}, Llkc;->a(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method static synthetic a(Llkc;)Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Llkc;->e:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f10067e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llkc;->b:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f10067f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llkc;->c:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f1004ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llkc;->d:Landroid/widget/ImageView;

    .line 94
    const v0, 0x7f1004ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llkc;->e:Landroid/view/View;

    .line 96
    return-void
.end method

.method static synthetic b(Llkc;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Llkc;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Llkc;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Llkc;->b:Landroid/widget/ImageView;

    return-object v0
.end method
