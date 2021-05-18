.class public Lvo;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field a:Landroid/support/v7/widget/CardView;

.field b:Landroid/support/v7/widget/CardView;

.field c:Landroid/support/v7/widget/CardView;

.field d:Landroid/support/v7/widget/CardView;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/ImageView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 252
    sget v0, Lla;->list_subp_item_card_full:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lvo;->a:Landroid/support/v7/widget/CardView;

    .line 253
    sget v0, Lla;->card_subp_nome_subproduto:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvo;->g:Landroid/widget/TextView;

    .line 254
    sget v0, Lla;->card_subp_lbl_valor_rentabilidade:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvo;->m:Landroid/widget/TextView;

    .line 255
    sget v0, Lla;->card_subp_valor_rentabilidade:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvo;->h:Landroid/widget/TextView;

    .line 256
    sget v0, Lla;->card_subp_lbl_valor_minimo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvo;->l:Landroid/widget/TextView;

    .line 257
    sget v0, Lla;->card_subp_valor_minimo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvo;->i:Landroid/widget/TextView;

    .line 258
    sget v0, Lla;->card_subp_lbl_risco:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvo;->j:Landroid/widget/TextView;

    .line 259
    sget v0, Lla;->card_subp_img_risco:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lvo;->k:Landroid/widget/ImageView;

    .line 260
    sget v0, Lla;->card_subp_cor_familia:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lvo;->e:Landroid/view/View;

    .line 261
    sget v0, Lla;->list_subp_item_card_corretora:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lvo;->b:Landroid/support/v7/widget/CardView;

    .line 262
    sget v0, Lla;->card_corretora_nome_familia:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvo;->n:Landroid/widget/TextView;

    .line 263
    sget v0, Lla;->card_corretora_cor_familia:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lvo;->f:Landroid/view/View;

    .line 264
    sget v0, Lla;->list_subp_lnk_corretora:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvo;->o:Landroid/widget/TextView;

    .line 265
    sget v0, Lla;->list_subp_item_card_prev:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lvo;->d:Landroid/support/v7/widget/CardView;

    .line 266
    sget v0, Lla;->list_subp_prev_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvo;->p:Landroid/widget/TextView;

    .line 267
    sget v0, Lla;->list_subp_item_card_coe:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lvo;->c:Landroid/support/v7/widget/CardView;

    .line 268
    sget v0, Lla;->list_subp_coe_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvo;->q:Landroid/widget/TextView;

    .line 269
    sget v0, Lla;->card_subp_aplicar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lvo;->r:Landroid/widget/ImageButton;

    .line 271
    return-void
.end method
