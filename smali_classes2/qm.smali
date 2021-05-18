.class public Lqm;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/support/v7/widget/CardView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    sget v0, Lla;->configurar_investimentos_card_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lqm;->e:Landroid/support/v7/widget/CardView;

    .line 25
    sget v0, Lla;->configurar_investimento_recycler_view_titulo_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lqm;->c:Landroid/widget/TextView;

    .line 26
    sget v0, Lla;->configurar_investimento_recycler_view_conteudo_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lqm;->d:Landroid/widget/TextView;

    .line 27
    sget v0, Lla;->configurar_investimentos_recycler_view_icone_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lqm;->a:Landroid/widget/ImageView;

    .line 28
    sget v0, Lla;->configurar_investimentos_recycler_view_seta_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lqm;->b:Landroid/widget/ImageView;

    .line 29
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lqm;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/CardView;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lqm;->e:Landroid/support/v7/widget/CardView;

    .line 61
    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lqm;->a:Landroid/widget/ImageView;

    .line 37
    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lqm;->c:Landroid/widget/TextView;

    .line 45
    return-void
.end method

.method public b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lqm;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public b(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lqm;->b:Landroid/widget/ImageView;

    .line 65
    return-void
.end method

.method public b(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lqm;->d:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method public c()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lqm;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public d()Landroid/support/v7/widget/CardView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lqm;->e:Landroid/support/v7/widget/CardView;

    return-object v0
.end method

.method public e()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lqm;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
