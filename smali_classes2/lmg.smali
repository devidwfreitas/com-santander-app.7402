.class public Llmg;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llme;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Llme;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Llmg;->a:Llme;

    .line 77
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 78
    invoke-direct {p0, p2}, Llmg;->a(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method static synthetic a(Llmg;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Llmg;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f100776

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llmg;->b:Landroid/view/View;

    .line 84
    const v0, 0x7f10067d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llmg;->c:Landroid/view/View;

    .line 85
    const v0, 0x7f100683

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Llmg;->d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 86
    const v0, 0x7f100684

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llmg;->e:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f100682

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llmg;->f:Landroid/widget/LinearLayout;

    .line 88
    return-void
.end method

.method static synthetic b(Llmg;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Llmg;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method
