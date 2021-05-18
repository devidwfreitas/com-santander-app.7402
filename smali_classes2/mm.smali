.class Lmm;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    sget v0, Lla;->card_carrinho_propriedades_descricao:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmm;->a:Landroid/widget/TextView;

    .line 38
    sget v0, Lla;->card_carrinho_propriedades_valor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmm;->b:Landroid/widget/TextView;

    .line 39
    sget v0, Lla;->card_carrinho_propriedades_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmm;->c:Landroid/view/View;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lml;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lmm;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lmm;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmm;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lmm;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmm;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lmm;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmm;->c:Landroid/view/View;

    return-object v0
.end method
