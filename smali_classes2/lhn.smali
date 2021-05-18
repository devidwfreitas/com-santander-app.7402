.class public Llhn;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llhm;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/support/v7/widget/AppCompatSeekBar;


# direct methods
.method public constructor <init>(Llhm;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Llhn;->a:Llhm;

    .line 75
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 76
    invoke-direct {p0, p2}, Llhn;->a(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method static synthetic a(Llhn;)Landroid/support/v7/widget/AppCompatSeekBar;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Llhn;->h:Landroid/support/v7/widget/AppCompatSeekBar;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f10095d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llhn;->b:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f1010ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llhn;->c:Landroid/widget/ImageButton;

    .line 82
    const v0, 0x7f1004f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llhn;->d:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f100043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llhn;->e:Landroid/widget/LinearLayout;

    .line 84
    const v0, 0x7f1010ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llhn;->f:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f1010af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llhn;->g:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f1010b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSeekBar;

    iput-object v0, p0, Llhn;->h:Landroid/support/v7/widget/AppCompatSeekBar;

    .line 87
    return-void
.end method

.method static synthetic b(Llhn;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Llhn;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Llhn;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Llhn;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Llhn;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Llhn;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Llhn;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Llhn;->d:Landroid/widget/TextView;

    return-object v0
.end method
