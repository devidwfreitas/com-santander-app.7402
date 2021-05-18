.class public Llia;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llhz;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/view/View;

.field private d:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Llhz;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Llia;->a:Llhz;

    .line 80
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 81
    invoke-direct {p0, p2}, Llia;->a(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method static synthetic a(Llia;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Llia;->c:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f1004f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llia;->b:Landroid/widget/LinearLayout;

    .line 86
    const v0, 0x7f100a50

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llia;->c:Landroid/view/View;

    .line 87
    const v0, 0x7f10012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    iput-object v0, p0, Llia;->d:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    .line 88
    const v0, 0x7f100a51

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llia;->e:Landroid/view/View;

    .line 89
    const v0, 0x7f100a52

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Llia;->f:Landroid/widget/RelativeLayout;

    .line 90
    const v0, 0x7f10038a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llia;->g:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f1010b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llia;->h:Landroid/widget/TextView;

    .line 92
    return-void
.end method

.method static synthetic b(Llia;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Llia;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Llia;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Llia;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic d(Llia;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Llia;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Llia;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Llia;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Llia;)Lcom/santander/app/seguros/ui/widgets/CircleImageView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Llia;->d:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    return-object v0
.end method
