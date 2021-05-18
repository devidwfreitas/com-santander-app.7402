.class public Lwt;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/support/v7/widget/CardView;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 81
    iput-object p1, p0, Lwt;->b:Landroid/view/View;

    .line 83
    sget v0, Lla;->txt_rentabilidade:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwt;->e:Landroid/widget/TextView;

    .line 84
    sget v0, Lla;->txt_num_contrato:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwt;->f:Landroid/widget/TextView;

    .line 85
    sget v0, Lla;->txt_contract_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwt;->h:Landroid/widget/TextView;

    .line 86
    sget v0, Lla;->txt_valor_resgate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwt;->c:Landroid/widget/TextView;

    .line 87
    sget v0, Lla;->txt_product_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwt;->g:Landroid/widget/TextView;

    .line 88
    sget v0, Lla;->txt_contract_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwt;->d:Landroid/widget/TextView;

    .line 89
    sget v0, Lla;->txt_deadline:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwt;->i:Landroid/widget/TextView;

    .line 90
    sget v0, Lla;->txt_due_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwt;->j:Landroid/widget/TextView;

    .line 91
    sget v0, Lla;->txt_quotas_amount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwt;->k:Landroid/widget/TextView;

    .line 93
    sget v0, Lla;->portifolio_cor_familia:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lwt;->a:Landroid/view/View;

    .line 94
    sget v0, Lla;->finaliza_resgate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lwt;->l:Landroid/widget/ImageButton;

    .line 96
    sget v0, Lla;->layout_cdb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lwt;->n:Landroid/widget/RelativeLayout;

    .line 97
    sget v0, Lla;->layout_fundos:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lwt;->o:Landroid/widget/RelativeLayout;

    .line 98
    sget v0, Lla;->layout_poupanca:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lwt;->p:Landroid/widget/RelativeLayout;

    .line 99
    sget v0, Lla;->layout_cdb_savings_commons:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lwt;->q:Landroid/widget/RelativeLayout;

    .line 101
    sget v0, Lla;->inv2_portifolio_produtos_card_View_resgate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lwt;->m:Landroid/support/v7/widget/CardView;

    .line 102
    return-void
.end method

.method static synthetic a(Lwt;)Landroid/support/v7/widget/CardView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lwt;->m:Landroid/support/v7/widget/CardView;

    return-object v0
.end method

.method static synthetic b(Lwt;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lwt;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic c(Lwt;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lwt;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lwt;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lwt;->p:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic e(Lwt;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lwt;->q:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic f(Lwt;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lwt;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lwt;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lwt;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lwt;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lwt;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lwt;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lwt;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lwt;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lwt;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lwt;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lwt;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lwt;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lwt;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lwt;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lwt;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lwt;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lwt;->c:Landroid/widget/TextView;

    return-object v0
.end method
