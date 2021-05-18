.class public Lmr;
.super Lacr;
.source "SourceFile"


# instance fields
.field public a:Llk;

.field private c:Llo;

.field private d:Lacg;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/support/v4/widget/NestedScrollView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/Button;

.field private l:Landroid/support/v7/widget/RecyclerView;

.field private m:Landroid/support/v7/widget/RecyclerView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Z

.field private s:Z

.field private t:Lmn;


# direct methods
.method public constructor <init>(Lack;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 66
    iput-boolean v2, p0, Lmr;->r:Z

    .line 73
    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Lmr;->d:Lacg;

    .line 74
    new-instance v0, Llo;

    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v3

    invoke-direct {v0, v3}, Llo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmr;->c:Llo;

    .line 75
    iget-object v0, p0, Lmr;->d:Lacg;

    invoke-virtual {v0}, Lacg;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmr;->s:Z

    .line 77
    invoke-virtual {p1}, Lack;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    const-string v3, "KD"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "KD"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lmr;->r:Z

    .line 80
    invoke-direct {p0}, Lmr;->c()V

    .line 81
    iget-object v0, p0, Lmr;->d:Lacg;

    invoke-virtual {v0}, Lacg;->v()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmr;->d:Lacg;

    invoke-virtual {v0}, Lacg;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    :cond_0
    invoke-direct {p0}, Lmr;->i()V

    .line 87
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 75
    goto :goto_0

    :cond_2
    move v1, v2

    .line 78
    goto :goto_1

    .line 84
    :cond_3
    invoke-direct {p0}, Lmr;->j()V

    goto :goto_2
.end method

.method static synthetic a(Lmr;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lmr;->h()V

    return-void
.end method

.method static synthetic b(Lmr;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lmr;->s:Z

    return v0
.end method

.method static synthetic c(Lmr;)Lacg;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmr;->d:Lacg;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 94
    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmr;->e:Landroid/widget/ImageButton;

    .line 95
    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->carinho_layout_tela:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lmr;->f:Landroid/support/v4/widget/NestedScrollView;

    .line 96
    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->carrinho_layout_botao:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmr;->g:Landroid/widget/LinearLayout;

    .line 97
    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->inv2_portifolio_layout_loadinig:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmr;->h:Landroid/widget/RelativeLayout;

    .line 98
    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->car_terms_container:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmr;->i:Landroid/widget/LinearLayout;

    .line 100
    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_titulo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmr;->j:Landroid/widget/TextView;

    .line 101
    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->car_lista:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lmr;->l:Landroid/support/v7/widget/RecyclerView;

    .line 102
    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->car_lista_termos:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lmr;->m:Landroid/support/v7/widget/RecyclerView;

    .line 103
    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->empty_btn_voltar:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmr;->k:Landroid/widget/Button;

    .line 104
    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->carr_empty:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmr;->n:Landroid/view/View;

    .line 106
    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->car_text_content:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmr;->p:Landroid/widget/TextView;

    .line 107
    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->car_text_disclaimer:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmr;->q:Landroid/widget/TextView;

    .line 109
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v1

    sget v2, Llg;->car_texto_termo_recusa_completo:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 112
    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->car_btn_finalizar_contratacao:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmr;->o:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Lmr;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lmr;->f:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lmr;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    return-void
.end method

.method static synthetic d(Lmr;)Lmn;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmr;->t:Lmn;

    return-object v0
.end method

.method private d()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 123
    iget-boolean v0, p0, Lmr;->s:Z

    if-nez v0, :cond_3

    .line 124
    sget v0, Llg;->tit_revisao:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 130
    :goto_0
    iget-object v1, p0, Lmr;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 131
    iget-object v0, p0, Lmr;->e:Landroid/widget/ImageButton;

    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 133
    iget-object v0, p0, Lmr;->d:Lacg;

    invoke-virtual {v0}, Lacg;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v0

    sget v1, Llg;->app_msg_sucesso:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmr;->b(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lmr;->d:Lacg;

    invoke-virtual {v0, v6}, Lacg;->e(Z)V

    .line 138
    :cond_0
    iget-object v0, p0, Lmr;->l:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 139
    iget-object v0, p0, Lmr;->l:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lma;

    iget-object v2, p0, Lmr;->d:Lacg;

    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v3

    invoke-virtual {v3}, Lack;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Lma;-><init>(Lacg;Lmr;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 140
    iget-object v0, p0, Lmr;->l:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 141
    iget-object v0, p0, Lmr;->l:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-boolean v0, p0, Lmr;->s:Z

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lmr;->d:Lacg;

    invoke-virtual {v0}, Lacg;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    invoke-virtual {v0}, Lace;->x()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 150
    iget-object v0, p0, Lmr;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lmr;->m:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 152
    new-instance v0, Lmn;

    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v2

    iget-object v3, p0, Lmr;->d:Lacg;

    invoke-direct {p0}, Lmr;->k()Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lmr;->o:Landroid/widget/Button;

    invoke-direct/range {v0 .. v5}, Lmn;-><init>(Ljava/util/List;Landroid/content/Context;Lacg;Ljava/lang/Boolean;Landroid/widget/Button;)V

    iput-object v0, p0, Lmr;->t:Lmn;

    .line 153
    iget-object v0, p0, Lmr;->m:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lmr;->t:Lmn;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 154
    iget-object v0, p0, Lmr;->m:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 155
    iget-object v0, p0, Lmr;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 164
    :cond_2
    :goto_1
    iget-object v0, p0, Lmr;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lmr;->f:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v6}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lmr;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    invoke-direct {p0}, Lmr;->g()V

    .line 169
    return-void

    .line 126
    :cond_3
    sget v0, Llg;->resgate_titulo:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lmr;->o:Landroid/widget/Button;

    sget v2, Llg;->app_finalizar_resgate:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 157
    :cond_4
    iget-object v0, p0, Lmr;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    invoke-direct {p0}, Lmr;->k()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    iget-object v0, p0, Lmr;->o:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lmr;->o:Landroid/widget/Button;

    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v1

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkx;->inv_white_three:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1
.end method

.method static synthetic e(Lmr;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lmr;->i()V

    return-void
.end method

.method static synthetic f(Lmr;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lmr;->d()V

    return-void
.end method

.method static synthetic g(Lmr;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmr;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lmr;->e:Landroid/widget/ImageButton;

    new-instance v1, Lms;

    invoke-direct {v1, p0}, Lms;-><init>(Lmr;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lmr;->k:Landroid/widget/Button;

    new-instance v1, Lmt;

    invoke-direct {v1, p0}, Lmt;-><init>(Lmr;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lmr;->o:Landroid/widget/Button;

    new-instance v1, Lmu;

    invoke-direct {v1, p0}, Lmu;-><init>(Lmr;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    return-void
.end method

.method static synthetic h(Lmr;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmr;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    iget-object v1, p0, Lmr;->d:Lacg;

    invoke-virtual {v1}, Lacg;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Llg;->car_card_tit_dialog_abandonar:I

    .line 224
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Llg;->car_card_msg_dialog_remover:I

    .line 225
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Llg;->app_sim:I

    new-instance v3, Lmw;

    invoke-direct {v3, p0, v0}, Lmw;-><init>(Lmr;Ljava/util/ArrayList;)V

    .line 226
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_cancelar:I

    new-instance v2, Lmv;

    invoke-direct {v2, p0}, Lmv;-><init>(Lmr;)V

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 239
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v1

    invoke-virtual {p0}, Lmr;->e()Lack;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lzs;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 248
    new-instance v0, Lmx;

    invoke-direct {v0, p0}, Lmx;-><init>(Lmr;)V

    .line 334
    iget-boolean v1, p0, Lmr;->r:Z

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lmr;->c:Llo;

    invoke-virtual {v1, v0}, Llo;->a(Llt;)V

    .line 341
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-boolean v1, p0, Lmr;->s:Z

    if-nez v1, :cond_1

    .line 337
    iget-object v1, p0, Lmr;->c:Llo;

    iget-object v2, p0, Lmr;->d:Lacg;

    invoke-virtual {v2}, Lacg;->l()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Llo;->a(Ljava/util/List;Llt;)V

    goto :goto_0

    .line 339
    :cond_1
    iget-object v1, p0, Lmr;->c:Llo;

    iget-object v2, p0, Lmr;->d:Lacg;

    invoke-virtual {v2}, Lacg;->w()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Llo;->b(Ljava/util/List;Llt;)V

    goto :goto_0
.end method

.method private j()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lmr;->d:Lacg;

    invoke-virtual {v0}, Lacg;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lmr;->d:Lacg;

    iget-object v2, p0, Lmr;->d:Lacg;

    invoke-virtual {v2}, Lacg;->v()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lacg;->b(Ljava/util/List;)V

    .line 349
    :goto_0
    iget-object v0, p0, Lmr;->d:Lacg;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2}, Lacg;->d(Ljava/util/List;)V

    .line 351
    invoke-direct {p0}, Lmr;->d()V

    .line 353
    iget-object v0, p0, Lmr;->d:Lacg;

    invoke-virtual {v0}, Lacg;->x()Ljava/util/List;

    move-result-object v3

    .line 354
    const-string v0, ""

    move v2, v1

    move-object v1, v0

    .line 356
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 357
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacb;

    invoke-virtual {v0}, Lacb;->e()Ljava/lang/String;

    move-result-object v0

    const-string v4, "header"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v4, p0, Lmr;->p:Landroid/widget/TextView;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacb;

    invoke-virtual {v0}, Lacb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacb;

    invoke-virtual {v0}, Lacb;->e()Ljava/lang/String;

    move-result-object v0

    const-string v4, "disclaimer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacb;

    invoke-virtual {v0}, Lacb;->b()Ljava/lang/String;

    move-result-object v0

    .line 356
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    .line 347
    :cond_1
    iget-object v2, p0, Lmr;->d:Lacg;

    iget-object v0, p0, Lmr;->d:Lacg;

    invoke-virtual {v0}, Lacg;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    invoke-virtual {v2, v0}, Lacg;->c(Lace;)V

    goto :goto_0

    .line 362
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacb;

    invoke-virtual {v0}, Lacb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 366
    :cond_3
    iget-object v0, p0, Lmr;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private k()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 372
    iget-object v0, p0, Lmr;->d:Lacg;

    invoke-virtual {v0}, Lacg;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lmr;->d:Lacg;

    invoke-virtual {v0}, Lacg;->l()Ljava/util/List;

    move-result-object v0

    .line 378
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    .line 379
    invoke-virtual {v0}, Lace;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 384
    :goto_1
    return-object v0

    .line 375
    :cond_1
    iget-object v0, p0, Lmr;->d:Lacg;

    invoke-virtual {v0}, Lacg;->w()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()Lacg;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmr;->d:Lacg;

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lmr;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    return-void
.end method
