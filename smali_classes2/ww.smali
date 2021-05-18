.class public Lww;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ImageButton;

.field f:Landroid/support/v7/widget/CardView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    iput-object p1, p0, Lww;->b:Landroid/view/View;

    .line 50
    sget v0, Lla;->portifolio_cor_familia:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lww;->a:Landroid/view/View;

    .line 51
    sget v0, Lla;->apli_nome_familia:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lww;->d:Landroid/widget/TextView;

    .line 52
    sget v0, Lla;->portifolio_familia_valor_resgate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lww;->c:Landroid/widget/TextView;

    .line 53
    sget v0, Lla;->app_seta:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lww;->e:Landroid/widget/ImageButton;

    .line 54
    sget v0, Lla;->card_familia_resgate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lww;->f:Landroid/support/v7/widget/CardView;

    .line 55
    return-void
.end method
