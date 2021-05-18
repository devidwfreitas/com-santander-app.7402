.class public Lre;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltk;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lack;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltk;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lre;->a:Ljava/util/List;

    .line 46
    iget-object v0, p0, Lre;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    check-cast p5, Lack;

    iput-object p5, p0, Lre;->b:Lack;

    .line 48
    iput-object p2, p0, Lre;->f:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lre;->g:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lre;->h:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic a(Lre;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lre;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lre;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lre;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lre;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lre;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lre;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lre;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lre;)Lack;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lre;->b:Lack;

    return-object v0
.end method

.method static synthetic f(Lre;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lre;->c:Z

    return v0
.end method

.method static synthetic g(Lre;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lre;->d:Z

    return v0
.end method

.method static synthetic h(Lre;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lre;->e:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lrp;
    .locals 4

    .prologue
    .line 125
    new-instance v0, Lrp;

    .line 126
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 125
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Llc;->layout_card_det_subproduto:I

    const/4 v3, 0x0

    .line 126
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrp;-><init>(Landroid/view/View;Lrf;)V

    .line 125
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lre;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    iget-object v0, p0, Lre;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    invoke-virtual {p0}, Lre;->notifyDataSetChanged()V

    .line 57
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lre;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v6, 0x8

    .line 131
    iget-object v0, p0, Lre;->b:Lack;

    invoke-virtual {v0}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    .line 133
    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "coe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 134
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->a(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lre;->b:Lack;

    sget v3, Llg;->det_subp_lbl_valor_nominal:I

    invoke-virtual {v2, v3}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "corretora"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 137
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->b(Lrp;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object v1, p1

    .line 138
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->a(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lre;->b:Lack;

    sget v3, Llg;->det_subp_lbl_valor_total:I

    invoke-virtual {v2, v3}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p1

    .line 139
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->c(Lrp;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object v1, p1

    .line 140
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->d(Lrp;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move-object v1, p1

    .line 143
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->e(Lrp;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lacg;->o()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v1, p1

    .line 144
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->f(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v2

    invoke-virtual {v2}, Lto;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p0, Lre;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltk;

    invoke-virtual {v1}, Ltk;->a()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 149
    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v1

    const-string v3, "POUPANCA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 150
    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v1

    const-string v3, "POUPAN\u00c7A"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    move-object v1, p1

    .line 151
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->g(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Laat;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v1, p1

    .line 160
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->h(Lrp;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lre;->a:Ljava/util/List;

    .line 161
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltk;

    invoke-virtual {v1}, Ltk;->c()Lsw;

    move-result-object v1

    invoke-virtual {v1}, Lsw;->b()Ljava/lang/Double;

    move-result-object v1

    .line 160
    invoke-static {v1}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p1

    .line 162
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->i(Lrp;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lre;->a:Ljava/util/List;

    .line 163
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltk;

    invoke-virtual {v1}, Ltk;->c()Lsw;

    move-result-object v1

    invoke-virtual {v1}, Lsw;->a()Ljava/lang/Double;

    move-result-object v1

    .line 162
    invoke-static {v1}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->m()Z

    move-result v1

    if-nez v1, :cond_7

    move-object v1, p1

    .line 166
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->j(Lrp;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object v1, p1

    .line 167
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->k(Lrp;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :goto_1
    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->p()Z

    move-result v1

    if-nez v1, :cond_9

    move-object v1, p1

    .line 195
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->n(Lrp;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v1, p1

    .line 196
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->o(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lre;->b:Lack;

    invoke-virtual {v2}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Llg;->inv_home_btn_resgatar:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p1

    .line 197
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->o(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lre;->b:Lack;

    invoke-virtual {v2}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lkx;->inv_warm_grey_two:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 199
    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    move-object v1, p1

    .line 200
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->n(Lrp;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lrh;

    invoke-direct {v2, p0, v0}, Lrh;-><init>(Lre;Lacg;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :goto_2
    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->n()Z

    move-result v1

    if-nez v1, :cond_3

    .line 253
    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->m()Z

    move-result v1

    if-nez v1, :cond_3

    .line 254
    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->p()Z

    move-result v1

    if-nez v1, :cond_3

    .line 256
    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "previd\u00eancia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v1, p1

    .line 257
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->j(Lrp;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object v1, p1

    .line 258
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->k(Lrp;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    move-object v1, p1

    .line 259
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->p(Lrp;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 288
    :cond_3
    :goto_3
    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 289
    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->m()Z

    move-result v1

    if-nez v1, :cond_4

    .line 290
    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->p()Z

    move-result v1

    if-nez v1, :cond_4

    move-object v1, p1

    .line 291
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->b(Lrp;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    move-object v1, p1

    .line 294
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->q(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lrn;

    invoke-direct {v2, p0, p1, v0}, Lrn;-><init>(Lre;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lacg;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, p1

    .line 329
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->v(Lrp;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lro;

    invoke-direct {v2, p0, p1}, Lro;-><init>(Lre;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, p1

    .line 354
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->u(Lrp;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lrg;

    invoke-direct {v2, p0, p1}, Lrg;-><init>(Lre;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v1, p0, Lre;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltk;

    invoke-virtual {v1}, Ltk;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labz;

    .line 381
    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lre;->b:Lack;

    invoke-direct {v6, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 383
    invoke-virtual {v1}, Labz;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UNIQUE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v2, p1

    .line 384
    check-cast v2, Lrp;

    invoke-static {v2}, Lrp;->r(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    move-object v2, p1

    .line 385
    check-cast v2, Lrp;

    invoke-static {v2}, Lrp;->r(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 387
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 389
    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "corretora"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 390
    invoke-virtual {v1}, Labz;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lacc;

    .line 391
    invoke-virtual {v2}, Lacc;->c()Ljava/lang/String;

    move-result-object v3

    const-string v8, "descricaoSubProduto"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object v3, p1

    .line 392
    check-cast v3, Lrp;

    invoke-static {v3}, Lrp;->f(Lrp;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lacc;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_6
    move-object v1, p1

    .line 155
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->g(Lrp;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v3

    invoke-virtual {v3}, Lto;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lre;->a:Ljava/util/List;

    .line 157
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltk;

    invoke-virtual {v1}, Ltk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    move-object v1, p1

    .line 169
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->j(Lrp;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object v1, p1

    .line 170
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->k(Lrp;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    move-object v1, p1

    .line 172
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->l(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lre;->b:Lack;

    sget v3, Llg;->inv_home_btn_aplicar:I

    invoke-virtual {v2, v3}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p1

    .line 173
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->l(Lrp;)Landroid/widget/TextView;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->l(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    move-object v1, p1

    .line 174
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->m(Lrp;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v1, p1

    .line 175
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->j(Lrp;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Lrf;

    invoke-direct {v2, p0, v0, p1}, Lrf;-><init>(Lre;Lacg;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_8
    move-object v1, p1

    .line 208
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->n(Lrp;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lri;

    invoke-direct {v2, p0}, Lri;-><init>(Lre;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 218
    :cond_9
    iget-object v1, p0, Lre;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltk;

    invoke-virtual {v1}, Ltk;->c()Lsw;

    move-result-object v1

    invoke-virtual {v1}, Lsw;->a()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_a

    move-object v1, p1

    .line 219
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->o(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lre;->b:Lack;

    invoke-virtual {v2}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Llg;->inv_home_btn_resgatar:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p1

    .line 220
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->o(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lre;->b:Lack;

    invoke-virtual {v2}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lkx;->inv_warm_grey_two:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v1, p1

    .line 221
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->n(Lrp;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v1, p1

    .line 222
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->n(Lrp;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lrj;

    invoke-direct {v2, p0}, Lrj;-><init>(Lre;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_a
    move-object v1, p1

    .line 230
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->o(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lre;->b:Lack;

    sget v3, Llg;->inv_home_btn_resgatar:I

    invoke-virtual {v2, v3}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p1

    .line 231
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->o(Lrp;)Landroid/widget/TextView;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->o(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    move-object v1, p1

    .line 232
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->n(Lrp;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v1, p1

    .line 233
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->o(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lrk;

    invoke-direct {v2, p0, v0, p1}, Lrk;-><init>(Lre;Lacg;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_b
    move-object v1, p1

    .line 261
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->j(Lrp;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object v1, p1

    .line 262
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->k(Lrp;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    move-object v1, p1

    .line 263
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->p(Lrp;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object v1, p1

    .line 264
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->o(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lre;->b:Lack;

    invoke-virtual {v2}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Llg;->app_operacoes_indisponiveis:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p1

    .line 265
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->o(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lre;->b:Lack;

    invoke-virtual {v2}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lkx;->inv_warm_grey_two:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v1, p1

    .line 266
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->n(Lrp;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    move-object v1, p1

    .line 269
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->n(Lrp;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lrl;

    invoke-direct {v2, p0, v0}, Lrl;-><init>(Lre;Lacg;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_c
    move-object v1, p1

    .line 276
    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->n(Lrp;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lrm;

    invoke-direct {v2, p0}, Lrm;-><init>(Lre;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 394
    :cond_d
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_e
    move-object v3, v4

    :goto_6
    move-object v2, p1

    .line 400
    check-cast v2, Lrp;

    invoke-static {v2}, Lrp;->r(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    new-instance v4, Lrt;

    invoke-direct {v4, v3}, Lrt;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 401
    iput-boolean v10, p0, Lre;->c:Z

    .line 404
    :cond_f
    invoke-virtual {v1}, Labz;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LISTA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 405
    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "coe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v2, p1

    .line 406
    check-cast v2, Lrp;

    invoke-static {v2}, Lrp;->y(Lrp;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Labz;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lacc;

    invoke-virtual {v2}, Lacc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, p1

    .line 407
    check-cast v2, Lrp;

    invoke-static {v2}, Lrp;->x(Lrp;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Labz;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lacc;

    invoke-virtual {v2}, Lacc;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    :cond_10
    :goto_7
    invoke-virtual {v1}, Labz;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TABELA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, p1

    .line 417
    check-cast v2, Lrp;

    invoke-static {v2}, Lrp;->t(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    move-object v2, p1

    .line 418
    check-cast v2, Lrp;

    invoke-static {v2}, Lrp;->t(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    move-object v2, p1

    .line 419
    check-cast v2, Lrp;

    invoke-static {v2}, Lrp;->t(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    new-instance v3, Lrq;

    invoke-virtual {v1}, Labz;->e()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Lrq;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 420
    iput-boolean v10, p0, Lre;->e:Z

    goto/16 :goto_4

    .line 398
    :cond_11
    invoke-virtual {v1}, Labz;->d()Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_6

    :cond_12
    move-object v2, p1

    .line 409
    check-cast v2, Lrp;

    invoke-static {v2}, Lrp;->s(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    move-object v2, p1

    .line 410
    check-cast v2, Lrp;

    invoke-static {v2}, Lrp;->s(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    move-object v2, p1

    .line 411
    check-cast v2, Lrp;

    invoke-static {v2}, Lrp;->s(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    new-instance v3, Lrw;

    invoke-virtual {v1}, Labz;->d()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lrw;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 412
    iput-boolean v10, p0, Lre;->d:Z

    goto :goto_7

    .line 423
    :cond_13
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lre;->a(Landroid/view/ViewGroup;I)Lrp;

    move-result-object v0

    return-object v0
.end method
