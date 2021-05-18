.class public Ltz;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public a:Landroid/support/v7/widget/CardView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/view/View;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ImageButton;

.field public h:Landroid/widget/ImageButton;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/support/v7/widget/RecyclerView;

.field public k:Landroid/view/View;

.field public l:Landroid/widget/ImageView;

.field public m:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 56
    iput-object p1, p0, Ltz;->m:Landroid/view/View;

    .line 58
    sget v0, Lla;->portifolio_permite_aporte:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltz;->b:Landroid/widget/TextView;

    .line 59
    sget v0, Lla;->portifolio_cor_familia:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltz;->c:Landroid/view/View;

    .line 60
    sget v0, Lla;->apli_previdecia_nome_aplicacao:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltz;->d:Landroid/widget/TextView;

    .line 61
    sget v0, Lla;->apli_previdecia_check_aplicacao:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltz;->e:Landroid/widget/TextView;

    .line 62
    sget v0, Lla;->portifolio_familia_valor_investido:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltz;->f:Landroid/widget/TextView;

    .line 63
    sget v0, Lla;->portifolio_familia_ver_produtos_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Ltz;->g:Landroid/widget/ImageButton;

    .line 64
    sget v0, Lla;->portifolio_familia_ver_produtos_img_inver:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Ltz;->h:Landroid/widget/ImageButton;

    .line 65
    sget v0, Lla;->portifolio_familia_ver_produtos:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltz;->i:Landroid/widget/TextView;

    .line 66
    sget v0, Lla;->portifolio_familia_lista_produtos:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Ltz;->j:Landroid/support/v7/widget/RecyclerView;

    .line 67
    sget v0, Lla;->familia_name_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltz;->k:Landroid/view/View;

    .line 68
    sget v0, Lla;->im_info_familia:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltz;->l:Landroid/widget/ImageView;

    .line 70
    return-void
.end method
