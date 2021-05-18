.class public Lltk;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llth;

.field private b:Landroid/widget/FrameLayout;

.field private c:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Llth;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lltk;->a:Llth;

    .line 111
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 112
    invoke-direct {p0, p2}, Lltk;->a(Landroid/view/View;)V

    .line 113
    return-void
.end method

.method static synthetic a(Lltk;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lltk;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 116
    const v0, 0x7f100433

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lltk;->b:Landroid/widget/FrameLayout;

    .line 117
    const v0, 0x7f100796

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    iput-object v0, p0, Lltk;->c:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    .line 118
    const v0, 0x7f1010ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lltk;->d:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f100348

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lltk;->e:Landroid/view/View;

    .line 120
    const v0, 0x7f1010b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lltk;->f:Landroid/widget/ImageButton;

    .line 121
    return-void
.end method

.method static synthetic b(Lltk;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lltk;->f:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic c(Lltk;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lltk;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lltk;)Lcom/santander/app/seguros/ui/widgets/CircleImageView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lltk;->c:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    return-object v0
.end method
