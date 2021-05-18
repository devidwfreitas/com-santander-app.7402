.class public Llhx;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llhw;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Llhw;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Llhx;->a:Llhw;

    .line 76
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 77
    invoke-direct {p0, p2}, Llhx;->a(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method static synthetic a(Llhx;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Llhx;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f1004f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llhx;->b:Landroid/widget/LinearLayout;

    .line 82
    const v0, 0x7f10012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llhx;->c:Landroid/view/View;

    .line 83
    const v0, 0x7f1010b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llhx;->d:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f1010b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llhx;->e:Landroid/widget/TextView;

    .line 85
    return-void
.end method

.method static synthetic b(Llhx;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Llhx;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Llhx;)Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Llhx;->c:Landroid/view/View;

    return-object v0
.end method
