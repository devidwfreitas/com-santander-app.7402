.class public Lwh;
.super Lacr;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/view/View$OnClickListener;

.field private a:Landroid/widget/ImageButton;

.field private c:Landroid/app/Activity;

.field private d:Lwc;

.field private e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/support/v7/widget/RecyclerView;

.field private p:Landroid/support/v7/widget/RecyclerView;

.field private q:Lwf;

.field private r:Lwf;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/Button;

.field private v:Lacg;

.field private w:Lace;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lace;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lack;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwh;->x:Ljava/util/List;

    .line 266
    new-instance v0, Lwn;

    invoke-direct {v0, p0}, Lwn;-><init>(Lwh;)V

    iput-object v0, p0, Lwh;->B:Landroid/view/View$OnClickListener;

    .line 67
    iput-object p1, p0, Lwh;->c:Landroid/app/Activity;

    .line 69
    invoke-direct {p0}, Lwh;->a()V

    .line 70
    invoke-direct {p0}, Lwh;->b()V

    .line 71
    return-void
.end method

.method static synthetic a(Lwh;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 75
    invoke-virtual {p0}, Lwh;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lwh;->a:Landroid/widget/ImageButton;

    .line 76
    iget-object v0, p0, Lwh;->a:Landroid/widget/ImageButton;

    new-instance v1, Lwi;

    invoke-direct {v1, p0}, Lwi;-><init>(Lwh;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lwh;->a:Landroid/widget/ImageButton;

    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 83
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    sget v1, Lla;->header_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwh;->n:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lwh;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lwh;->c:Landroid/app/Activity;

    sget v2, Llg;->recomendacao_investimento_header:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    sget v1, Lla;->recomendacao_loading_state:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lwh;->s:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    sget v1, Lla;->recomendacao_content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lwh;->t:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lwh;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lwh;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    sget v1, Lla;->recomendacao_text_view_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwh;->g:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    sget v1, Lla;->recomendacao_text_view_info:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwh;->j:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    sget v1, Lla;->recomendacao_text_view_titulo_valor_total:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwh;->h:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    sget v1, Lla;->recomendacao_text_view_valor_total:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwh;->i:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    sget v1, Lla;->recomendacao_text_view_central_informacoes:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwh;->k:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lwh;->k:Landroid/widget/TextView;

    new-instance v1, Lwj;

    invoke-direct {v1, p0}, Lwj;-><init>(Lwh;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    sget v1, Lla;->recomendacao_text_view_1_ano:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwh;->l:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    sget v1, Lla;->recomendacao_text_view_mais_anos:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwh;->m:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    sget v1, Lla;->recomendacao_recycler_view_curto_prazo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lwh;->o:Landroid/support/v7/widget/RecyclerView;

    .line 106
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    sget v1, Lla;->recomendacao_recycler_view_longo_prazo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lwh;->p:Landroid/support/v7/widget/RecyclerView;

    .line 108
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    sget v1, Lla;->recomendacao_button_continuar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lwh;->u:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lwh;->u:Landroid/widget/Button;

    iget-object v1, p0, Lwh;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lwh;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwh;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 112
    iget-object v0, p0, Lwh;->o:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lwh;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 113
    iget-object v0, p0, Lwh;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 114
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lwh;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwh;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 115
    iget-object v0, p0, Lwh;->p:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lwh;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 116
    iget-object v0, p0, Lwh;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 118
    new-instance v0, Lwf;

    iget-object v1, p0, Lwh;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lwf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwh;->q:Lwf;

    .line 119
    new-instance v0, Lwf;

    iget-object v1, p0, Lwh;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lwf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwh;->r:Lwf;

    .line 121
    iget-object v0, p0, Lwh;->o:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lwh;->q:Lwf;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 122
    iget-object v0, p0, Lwh;->p:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lwh;->r:Lwf;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 124
    invoke-virtual {p0}, Lwh;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Lwh;->v:Lacg;

    .line 125
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "recomendacaoApplicationEntity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v1, Leju;

    invoke-direct {v1}, Leju;-><init>()V

    invoke-virtual {v1}, Leju;->j()Lejm;

    move-result-object v1

    const-class v2, Lace;

    invoke-virtual {v1, v0, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    iput-object v0, p0, Lwh;->w:Lace;

    .line 128
    new-instance v0, Lwc;

    iget-object v1, p0, Lwh;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lwc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwh;->d:Lwc;

    .line 130
    iget-object v0, p0, Lwh;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lwh;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "recomendacaoValorTotalInvestimento"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laat;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tipoRecomendacao"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwh;->y:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "recomendacaoValorTotalInvestimento"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laat;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwh;->z:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lwh;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "recomendacaoValorParcialInvestimento"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laat;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwh;->A:Ljava/lang/String;

    .line 135
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lvx;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 226
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lvx;

    .line 228
    invoke-virtual {v6}, Lvx;->a()Lwe;

    move-result-object v5

    .line 231
    new-instance v1, Lto;

    invoke-virtual {v5}, Lwe;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lwe;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lwe;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lwe;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v0, Lace;

    .line 236
    invoke-virtual {v5}, Lwe;->h()Lvy;

    move-result-object v2

    invoke-virtual {v2}, Lvy;->b()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v5}, Lwe;->h()Lvy;

    move-result-object v3

    invoke-virtual {v3}, Lvy;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    .line 239
    invoke-virtual {v5}, Lwe;->h()Lvy;

    move-result-object v5

    invoke-virtual {v5}, Lvy;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lace;-><init>(Lto;Ljava/lang/String;Ljava/lang/Integer;Ltk;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lwh;->w:Lace;

    invoke-virtual {v1}, Lace;->h()Lou;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->a(Lou;)V

    .line 242
    invoke-virtual {v6}, Lvx;->c()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->a(Ljava/lang/Double;)V

    .line 243
    const-string v1, ""

    invoke-virtual {v0, v1}, Lace;->c(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v6}, Lvx;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 251
    :goto_1
    invoke-virtual {v0, v1}, Lace;->a(Ljava/lang/Integer;)V

    .line 253
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 254
    invoke-virtual {v6}, Lvx;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 255
    array-length v3, v2

    if-le v3, v8, :cond_0

    .line 256
    aget-object v3, v2, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v2, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/Calendar;->set(III)V

    .line 258
    :cond_0
    invoke-virtual {v0, v1}, Lace;->a(Ljava/util/Calendar;)V

    .line 259
    invoke-virtual {v0, v8}, Lace;->f(Z)V

    .line 261
    iget-object v1, p0, Lwh;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 249
    :cond_1
    invoke-virtual {v6}, Lvx;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 264
    :cond_2
    return-void
.end method

.method private a(Lwa;)V
    .locals 3

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lwh;->b(Lwa;)V

    .line 181
    :try_start_0
    iget-object v0, p0, Lwh;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lwa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lwh;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lwa;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lwh;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lwa;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lwh;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Lwa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lwa;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laat;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {p1}, Lwa;->f()Lwb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p1}, Lwa;->f()Lwb;

    move-result-object v0

    invoke-virtual {v0}, Lwb;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p1}, Lwa;->f()Lwb;

    move-result-object v0

    invoke-virtual {v0}, Lwb;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lwh;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lwa;->f()Lwb;

    move-result-object v1

    invoke-virtual {v1}, Lwb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lwh;->q:Lwf;

    invoke-virtual {p1}, Lwa;->f()Lwb;

    move-result-object v1

    invoke-virtual {v1}, Lwb;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwf;->a(Ljava/util/List;)V

    .line 196
    :goto_0
    invoke-virtual {p1}, Lwa;->g()Lwb;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p1}, Lwa;->g()Lwb;

    move-result-object v0

    invoke-virtual {v0}, Lwb;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p1}, Lwa;->g()Lwb;

    move-result-object v0

    invoke-virtual {v0}, Lwb;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lwh;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Lwa;->g()Lwb;

    move-result-object v1

    invoke-virtual {v1}, Lwb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lwh;->r:Lwf;

    invoke-virtual {p1}, Lwa;->g()Lwb;

    move-result-object v1

    invoke-virtual {v1}, Lwb;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwf;->a(Ljava/util/List;)V

    .line 206
    :goto_1
    iget-object v0, p0, Lwh;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lwh;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    :goto_2
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lwh;->o:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lwh;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    goto :goto_2

    .line 202
    :cond_1
    iget-object v0, p0, Lwh;->p:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lwh;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lwh;Lwa;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lwh;->a(Lwa;)V

    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lwh;->d:Lwc;

    iget-object v1, p0, Lwh;->y:Ljava/lang/String;

    iget-object v2, p0, Lwh;->A:Ljava/lang/String;

    iget-object v3, p0, Lwh;->z:Ljava/lang/String;

    new-instance v4, Lwk;

    invoke-direct {v4, p0}, Lwk;-><init>(Lwh;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lwc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvz;)V

    .line 176
    return-void
.end method

.method private b(Lwa;)V
    .locals 3

    .prologue
    .line 215
    invoke-virtual {p1}, Lwa;->g()Lwb;

    move-result-object v0

    invoke-virtual {v0}, Lwb;->a()Ljava/util/List;

    move-result-object v0

    .line 216
    invoke-virtual {p1}, Lwa;->f()Lwb;

    move-result-object v1

    invoke-virtual {v1}, Lwb;->a()Ljava/util/List;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lwh;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 219
    invoke-direct {p0, v1}, Lwh;->a(Ljava/util/List;)V

    .line 220
    invoke-direct {p0, v0}, Lwh;->a(Ljava/util/List;)V

    .line 222
    iget-object v0, p0, Lwh;->v:Lacg;

    iget-object v1, p0, Lwh;->x:Ljava/util/List;

    invoke-virtual {v0, v1}, Lacg;->b(Ljava/util/List;)V

    .line 223
    return-void
.end method

.method static synthetic b(Lwh;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lwh;->b()V

    return-void
.end method

.method static synthetic c(Lwh;)Lacg;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lwh;->v:Lacg;

    return-object v0
.end method
