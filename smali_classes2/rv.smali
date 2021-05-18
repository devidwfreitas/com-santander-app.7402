.class Lrv;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 36
    sget v0, Lla;->card_carrinho_propriedades_descricao:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lrv;->a:Landroid/widget/TextView;

    .line 37
    sget v0, Lla;->card_carrinho_propriedades_valor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lrv;->b:Landroid/widget/TextView;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lru;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lrv;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lrv;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lrv;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lrv;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lrv;->b:Landroid/widget/TextView;

    return-object v0
.end method
