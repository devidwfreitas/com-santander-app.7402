.class public Lmj;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field a:Lace;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/view/View;

.field j:Landroid/view/View;

.field k:Landroid/widget/Button;

.field l:Landroid/widget/Button;

.field m:Landroid/support/v7/widget/RecyclerView;

.field n:Landroid/widget/RelativeLayout;

.field final synthetic o:Lma;


# direct methods
.method public constructor <init>(Lma;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 302
    iput-object p1, p0, Lmj;->o:Lma;

    .line 303
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 304
    sget v0, Lla;->car_card_family_color:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmj;->i:Landroid/view/View;

    .line 305
    sget v0, Lla;->car_card_product_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmj;->b:Landroid/widget/TextView;

    .line 306
    sget v0, Lla;->car_card_contract_info:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmj;->c:Landroid/widget/TextView;

    .line 307
    sget v0, Lla;->car_card_titular_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmj;->d:Landroid/widget/TextView;

    .line 308
    sget v0, Lla;->car_card_btn_remove:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmj;->k:Landroid/widget/Button;

    .line 309
    sget v0, Lla;->car_card_btn_edit:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmj;->l:Landroid/widget/Button;

    .line 310
    sget v0, Lla;->car_card_api_titulo:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmj;->e:Landroid/widget/TextView;

    .line 311
    sget v0, Lla;->car_card_api_message:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmj;->f:Landroid/widget/TextView;

    .line 312
    sget v0, Lla;->car_card_leia_mais:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmj;->g:Landroid/widget/TextView;

    .line 313
    sget v0, Lla;->car_card_api_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmj;->j:Landroid/view/View;

    .line 314
    sget v0, Lla;->car_card_visualizar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmj;->h:Landroid/widget/TextView;

    .line 315
    sget v0, Lla;->rcl_item_carrinho_propriedades:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lmj;->m:Landroid/support/v7/widget/RecyclerView;

    .line 316
    sget v0, Lla;->carrinho_card_terms_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmj;->n:Landroid/widget/RelativeLayout;

    .line 318
    return-void
.end method
