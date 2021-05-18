.class public Lwg;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 29
    sget v0, Lla;->recomendacao_card_view_color:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lwg;->a:Landroid/view/View;

    .line 30
    sget v0, Lla;->recomendacao_card_text_view_produto:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwg;->b:Landroid/widget/TextView;

    .line 31
    sget v0, Lla;->recomendacao_card_text_view_familia_produtos:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwg;->c:Landroid/widget/TextView;

    .line 32
    sget v0, Lla;->recomendacao_card_text_view_risco:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwg;->e:Landroid/widget/TextView;

    .line 33
    sget v0, Lla;->recomendacao_card_text_view_percentual:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwg;->d:Landroid/widget/TextView;

    .line 34
    sget v0, Lla;->recomendacao_card_text_view_valor_aplicado:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwg;->f:Landroid/widget/TextView;

    .line 35
    sget v0, Lla;->recomendacao_card_image_view_risco:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lwg;->g:Landroid/widget/ImageView;

    .line 37
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lwg;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lwg;->a:Landroid/view/View;

    .line 45
    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lwg;->g:Landroid/widget/ImageView;

    .line 93
    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lwg;->b:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method public b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lwg;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public b(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lwg;->c:Landroid/widget/TextView;

    .line 61
    return-void
.end method

.method public c()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lwg;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public c(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lwg;->d:Landroid/widget/TextView;

    .line 69
    return-void
.end method

.method public d()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lwg;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public d(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lwg;->e:Landroid/widget/TextView;

    .line 77
    return-void
.end method

.method public e()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lwg;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public e(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lwg;->f:Landroid/widget/TextView;

    .line 85
    return-void
.end method

.method public f()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lwg;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public g()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lwg;->g:Landroid/widget/ImageView;

    return-object v0
.end method
