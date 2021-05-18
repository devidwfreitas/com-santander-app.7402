.class public Lrz;
.super Lacr;
.source "SourceFile"


# instance fields
.field private a:Lacg;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltk;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/support/v7/widget/RecyclerView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Lre;

.field private u:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 74
    check-cast p1, Lack;

    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrz;->c:Ljava/util/List;

    .line 75
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Lrz;->a:Lacg;

    .line 76
    invoke-direct {p0}, Lrz;->a()V

    .line 77
    invoke-direct {p0}, Lrz;->c()V

    .line 78
    return-void
.end method

.method static synthetic a(Lrz;)Lacg;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lrz;->a:Lacg;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lrz;->d:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_titulo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lrz;->k:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Lla;->inv2_det_supp_produto:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lrz;->e:Landroid/widget/TextView;

    .line 85
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Lla;->inv2_det_subp_data_ultima_atualizacao:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lrz;->n:Landroid/widget/TextView;

    .line 86
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Lla;->inv2_det_supp_valor_investido:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lrz;->f:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Lla;->inv2_det_subp_valor_disponivel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lrz;->g:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Lla;->det_subp_lista_detalhe:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lrz;->h:Landroid/support/v7/widget/RecyclerView;

    .line 89
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Lla;->inv2_det_subp_bottomcontainer:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lrz;->m:Landroid/widget/LinearLayout;

    .line 90
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Lla;->det_subp_botao_aplicar:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lrz;->i:Landroid/widget/Button;

    .line 91
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Lla;->icon_info:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lrz;->j:Landroid/widget/ImageButton;

    .line 92
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Lla;->det_subp_total_contracts:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lrz;->l:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Lla;->ll_container_valor_resgate:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lrz;->o:Landroid/widget/LinearLayout;

    .line 94
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Lla;->ll_container_text_corretora:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lrz;->p:Landroid/widget/RelativeLayout;

    .line 95
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Lla;->det_subp_text_corretora:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lrz;->r:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Lla;->inv2_det_subp_lbl_investido:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lrz;->s:Landroid/widget/TextView;

    .line 97
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v0

    invoke-virtual {v0}, Lto;->t()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lrz;->c:Ljava/util/List;

    .line 98
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Lla;->inv2_det_subp_layout_loadinig:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lrz;->u:Landroid/widget/RelativeLayout;

    .line 99
    invoke-direct {p0}, Lrz;->b()V

    .line 100
    return-void
.end method

.method static synthetic a(Lrz;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lrz;->a([Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Llg;->app_corretora_url_prd:I

    new-array v2, v5, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {}, Labp;->b()Labp;

    move-result-object v1

    invoke-virtual {v1}, Labp;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Llg;->app_corretora_url_hk:I

    new-array v2, v5, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_0
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v1

    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lzs;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    const-string v1, "TRACE-MOD-VM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Via Browser:  PRODUTO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lrz;->a:Lacg;

    .line 112
    invoke-virtual {v3}, Lacg;->n()Lto;

    move-result-object v3

    invoke-virtual {v3}, Lto;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " PAREMETRO[0]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p1, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " PAREMETRO[1]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p1, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method static synthetic b(Lrz;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lrz;->u:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 122
    iget-object v0, p0, Lrz;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lrz;->a:Lacg;

    invoke-virtual {v1}, Lacg;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lrz;->d:Landroid/widget/ImageView;

    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    iget-object v0, p0, Lrz;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lrz;->a:Lacg;

    invoke-virtual {v1}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->s()Lsw;

    move-result-object v1

    invoke-virtual {v1}, Lsw;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lrz;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lrz;->a:Lacg;

    invoke-virtual {v1}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lrz;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lrz;->a:Lacg;

    invoke-virtual {v1}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->s()Lsw;

    move-result-object v1

    invoke-virtual {v1}, Lsw;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Laat;->b(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lrz;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lrz;->a:Lacg;

    invoke-virtual {v1}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->s()Lsw;

    move-result-object v1

    invoke-virtual {v1}, Lsw;->a()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Llg;->det_subp_lbl_qntd_contratos:I

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lrz;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lrz;->a:Lacg;

    invoke-virtual {v1}, Lacg;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "corretora"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    iget-object v1, p0, Lrz;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lrz;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v2

    sget v3, Llg;->det_subp_text_go_corretora:I

    invoke-virtual {v2, v3}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v2

    sget v3, Llg;->det_subp_label_app_corretora:I

    invoke-virtual {v2, v3}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v2

    sget v3, Llg;->det_subp_label_app_corretora:I

    invoke-virtual {v2, v3}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laat;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lrz;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lrz;->r:Landroid/widget/TextView;

    new-instance v2, Lsa;

    invoke-direct {v2, p0}, Lsa;-><init>(Lrz;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v1, p0, Lrz;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v1

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Llg;->det_subp_lbl_detalhe_operacao_plural:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    iget-object v1, p0, Lrz;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lrz;->a:Lacg;

    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "coe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lrz;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v1

    sget v2, Llg;->det_subp_lbl_valor_nominal:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lrz;->d:Landroid/widget/ImageView;

    new-instance v1, Lsc;

    invoke-direct {v1, p0}, Lsc;-><init>(Lrz;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lrz;->a:Lacg;

    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "coe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    iget-object v0, p0, Lrz;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lrz;->i:Landroid/widget/Button;

    new-instance v1, Lsd;

    invoke-direct {v1, p0}, Lsd;-><init>(Lrz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lrz;->i:Landroid/widget/Button;

    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v1

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Llg;->app_continuar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_1
    iget-object v0, p0, Lrz;->a:Lacg;

    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "poupan\u00e7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lrz;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lrz;->j:Landroid/widget/ImageButton;

    new-instance v1, Lsf;

    invoke-direct {v1, p0}, Lsf;-><init>(Lrz;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    :cond_1
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 269
    iget-object v1, p0, Lrz;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 270
    iget-object v0, p0, Lrz;->h:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 271
    new-instance v0, Lre;

    iget-object v1, p0, Lrz;->c:Ljava/util/List;

    iget-object v2, p0, Lrz;->a:Lacg;

    invoke-virtual {v2}, Lacg;->p()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lrz;->a:Lacg;

    .line 272
    invoke-virtual {v3}, Lacg;->n()Lto;

    move-result-object v3

    invoke-virtual {v3}, Lto;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lrz;->a:Lacg;

    invoke-virtual {v4}, Lacg;->n()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lre;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lrz;->t:Lre;

    .line 273
    iget-object v0, p0, Lrz;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lrz;->t:Lre;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 274
    iget-object v0, p0, Lrz;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 276
    return-void

    .line 157
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v1

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Llg;->det_subp_label_operacao_corretora_singular:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 159
    :cond_3
    iget-object v1, p0, Lrz;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lrz;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lrz;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v1

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Llg;->det_subp_lbl_detalhe_operacao_plural:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 162
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v1

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Llg;->det_subp_lbl_detalhe_operacao_singular:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 186
    :cond_5
    iget-object v0, p0, Lrz;->a:Lacg;

    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v0

    invoke-virtual {v0}, Lto;->m()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lrz;->a:Lacg;

    .line 187
    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v0

    invoke-virtual {v0}, Lto;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 188
    iget-object v0, p0, Lrz;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lrz;->i:Landroid/widget/Button;

    new-instance v1, Lse;

    invoke-direct {v1, p0}, Lse;-><init>(Lrz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 212
    :cond_6
    iget-object v0, p0, Lrz;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method static synthetic c(Lrz;)Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lrz;->c:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 279
    iget-object v0, p0, Lrz;->a:Lacg;

    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fundos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    new-instance v1, Lqw;

    invoke-virtual {p0}, Lrz;->e()Lack;

    move-result-object v0

    invoke-direct {v1, v0}, Lqw;-><init>(Landroid/content/Context;)V

    .line 281
    iget-object v0, p0, Lrz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltk;

    .line 282
    iget-object v3, p0, Lrz;->u:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 283
    iget-object v3, p0, Lrz;->a:Lacg;

    invoke-virtual {v3}, Lacg;->n()Lto;

    move-result-object v3

    invoke-virtual {v3}, Lto;->j()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lsh;

    invoke-direct {v4, p0, v0}, Lsh;-><init>(Lrz;Ltk;)V

    invoke-virtual {v1, v3, v0, v4}, Lqw;->a(Ljava/lang/String;Ltk;Lqy;)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lrz;->u:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 312
    :cond_1
    return-void
.end method

.method static synthetic d(Lrz;)Lre;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lrz;->t:Lre;

    return-object v0
.end method

.method static synthetic e(Lrz;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lrz;->c()V

    return-void
.end method
