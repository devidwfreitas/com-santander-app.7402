.class public Lacy;
.super Lacr;
.source "SourceFile"


# instance fields
.field protected a:Lacg;

.field protected c:Lace;

.field protected d:Ljava/lang/Boolean;

.field protected e:Ljava/lang/Boolean;

.field protected f:Ljava/lang/Boolean;

.field private g:Landroid/support/v7/widget/RecyclerView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/view/View;

.field private m:Lte;

.field private n:Lou;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lack;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 36
    new-instance v0, Lou;

    invoke-direct {v0}, Lou;-><init>()V

    iput-object v0, p0, Lacy;->n:Lou;

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lacy;->d:Ljava/lang/Boolean;

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lacy;->e:Ljava/lang/Boolean;

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lacy;->f:Ljava/lang/Boolean;

    .line 55
    invoke-virtual {p0}, Lacy;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_conta:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lacy;->h:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0}, Lacy;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_conta_saldo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lacy;->i:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0}, Lacy;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_conta_saldo_total:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lacy;->j:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p0}, Lacy;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_conta_selector:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lacy;->k:Landroid/widget/ImageButton;

    .line 59
    invoke-virtual {p0}, Lacy;->e()Lack;

    move-result-object v0

    sget v1, Lla;->rv_lista_contas:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lacy;->g:Landroid/support/v7/widget/RecyclerView;

    .line 60
    invoke-virtual {p0}, Lacy;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_conta_selecionada:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lacy;->l:Landroid/view/View;

    .line 62
    new-instance v0, Lte;

    invoke-virtual {p1}, Lack;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lte;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lacy;->m:Lte;

    .line 63
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->b()Lach;

    move-result-object v0

    invoke-virtual {v0}, Lach;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lacy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lacy;->o:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lacy;->k:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 66
    invoke-virtual {p1}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Lacy;->a:Lacg;

    .line 68
    return-void
.end method

.method static synthetic a(Lacy;)Lou;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lacy;->n:Lou;

    return-object v0
.end method

.method static synthetic b(Lacy;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lacy;->k:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private b(Ltj;)V
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->c()Lou;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->c()Lou;

    move-result-object v0

    invoke-virtual {v0}, Lou;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lacy;->f:Ljava/lang/Boolean;

    .line 84
    iget-object v0, p0, Lacy;->m:Lte;

    iget-object v1, p0, Lacy;->o:Ljava/lang/String;

    new-instance v2, Lacz;

    invoke-direct {v2, p0, p1}, Lacz;-><init>(Lacy;Ltj;)V

    invoke-virtual {v0, v1, v2}, Lte;->a(Ljava/lang/String;Ltj;)V

    .line 140
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->c()Lou;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lacy;->n:Lou;

    invoke-virtual {v0}, Lou;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lou;->g(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lacy;->n:Lou;

    invoke-virtual {v0}, Lou;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lou;->a(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lacy;->a:Lacg;

    invoke-virtual {v0}, Lacg;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 125
    iget-object v2, p0, Lacy;->n:Lou;

    invoke-virtual {v2}, Lou;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lou;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    iget-object v1, p0, Lacy;->c:Lace;

    invoke-virtual {v1, v0}, Lace;->a(Lou;)V

    .line 131
    :cond_3
    invoke-virtual {p0}, Lacy;->g()V

    .line 133
    iget-object v0, p0, Lacy;->k:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lacy;->k:Landroid/widget/ImageButton;

    new-instance v1, Ladb;

    invoke-direct {v1, p0}, Ladb;-><init>(Lacy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lacy;->n:Lou;

    invoke-interface {p1, v0}, Ltj;->a(Labv;)V

    goto :goto_0
.end method

.method static synthetic c(Lacy;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lacy;->d()V

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    invoke-static {p1}, Laat;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lacy;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lacy;->k:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 184
    iget-object v0, p0, Lacy;->g:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 199
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lacy;->a()V

    .line 187
    iget-object v0, p0, Lacy;->k:Landroid/widget/ImageButton;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 188
    iget-object v0, p0, Lacy;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget-object v0, p0, Lacy;->a:Lacg;

    invoke-virtual {v0}, Lacg;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 192
    invoke-virtual {v0}, Lou;->c()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    :cond_2
    new-instance v0, Laco;

    iget-object v2, p0, Lacy;->a:Lacg;

    invoke-direct {v0, v1, p0, v2}, Laco;-><init>(Ljava/util/ArrayList;Lacy;Lacg;)V

    .line 196
    iget-object v1, p0, Lacy;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 197
    iget-object v0, p0, Lacy;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lacy;->e()Lack;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0
.end method

.method static synthetic d(Lacy;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lacy;->l()V

    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lacy;->d:Ljava/lang/Boolean;

    .line 250
    new-instance v0, Lade;

    invoke-direct {v0, p0}, Lade;-><init>(Lacy;)V

    invoke-direct {p0, v0}, Lacy;->b(Ltj;)V

    .line 262
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lacy;->k:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 73
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lacy;->k:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 76
    :cond_0
    return-void
.end method

.method protected a(Lou;)V
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p1}, Lou;->g()V

    .line 170
    iput-object p1, p0, Lacy;->n:Lou;

    .line 171
    iget-object v0, p0, Lacy;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lou;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lou;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lacy;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Lou;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lacy;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lacy;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lou;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lacy;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lacy;->c:Lace;

    iget-object v1, p0, Lacy;->n:Lou;

    invoke-virtual {v0, v1}, Lace;->a(Lou;)V

    .line 175
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public g()V
    .locals 5

    .prologue
    .line 143
    iget-object v0, p0, Lacy;->k:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 144
    iget-object v0, p0, Lacy;->g:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 146
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lacy;->a:Lacg;

    invoke-virtual {v0}, Lacg;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 149
    invoke-virtual {v0}, Lou;->c()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-virtual {p0, v0}, Lacy;->a(Lou;)V

    .line 151
    const/4 v0, 0x1

    .line 156
    :goto_0
    if-nez v0, :cond_2

    .line 157
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->c()Lou;

    move-result-object v1

    .line 158
    iget-object v0, p0, Lacy;->a:Lacg;

    invoke-virtual {v0}, Lacg;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 159
    invoke-virtual {v0}, Lou;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lou;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    :goto_1
    invoke-virtual {p0, v0}, Lacy;->a(Lou;)V

    .line 166
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected goBack()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lacy;->a:Lacg;

    invoke-virtual {v0}, Lacg;->s()V

    .line 280
    invoke-virtual {p0}, Lacy;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->finish()V

    .line 281
    return-void
.end method

.method protected h()Lou;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lacy;->n:Lou;

    return-object v0
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lacy;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacy;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lacy;->b()V

    .line 209
    :cond_0
    return-void
.end method

.method protected j()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lacy;->a:Lacg;

    invoke-virtual {v0}, Lacg;->m()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacy;->a:Lacg;

    invoke-virtual {v0}, Lacg;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    new-instance v0, Loo;

    invoke-virtual {p0}, Lacy;->e()Lack;

    move-result-object v1

    invoke-direct {v0, v1}, Loo;-><init>(Landroid/content/Context;)V

    .line 214
    new-instance v1, Ladc;

    invoke-direct {v1, p0}, Ladc;-><init>(Lacy;)V

    .line 241
    invoke-virtual {v0, v1}, Loo;->a(Lot;)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-direct {p0}, Lacy;->l()V

    goto :goto_0
.end method

.method protected k()V
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lacy;->e()Lack;

    move-result-object v0

    new-instance v1, Ladf;

    invoke-direct {v1, p0}, Ladf;-><init>(Lacy;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 276
    return-void
.end method
