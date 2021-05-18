.class Lrs;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    sget v0, Lla;->det_subp_card_filho_lista_beneficiarios_nome:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lrs;->a:Landroid/widget/TextView;

    .line 36
    sget v0, Lla;->det_subp_card_filho_lista_beneficiarios_valor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lrs;->b:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lrr;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lrs;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lrs;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lrs;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lrs;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lrs;->b:Landroid/widget/TextView;

    return-object v0
.end method
