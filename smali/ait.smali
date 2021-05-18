.class public Lait;
.super Lakb;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/Dialog;

.field private c:Lajv;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private f:Z

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/support/v4/widget/NestedScrollView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0, p1}, Lakb;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lait;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lait;->d()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lagg;->header_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lagl;->ajustar_limites:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Laim;

    iget-object v1, p0, Lait;->a:Landroid/app/Activity;

    new-instance v2, Laiu;

    invoke-direct {v2, p0}, Laiu;-><init>(Lait;)V

    invoke-direct {v0, v1, v2}, Laim;-><init>(Landroid/content/Context;Lain;)V

    invoke-virtual {v0}, Laim;->a()V

    iget-object v0, p0, Lait;->a:Landroid/app/Activity;

    invoke-static {v0}, Lano;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lait;->b:Landroid/app/Dialog;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    const-string v0, "[.]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ",00"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lait;Lajv;)Lajv;
    .locals 0

    iput-object p1, p0, Lait;->c:Lajv;

    return-object p1
.end method

.method static synthetic a(Lait;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lait;->b:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lait;->c:Lajv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lait;->c:Lajv;

    invoke-virtual {v0}, Lajv;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lait;->c:Lajv;

    invoke-virtual {v0}, Lajv;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lait;->a:Landroid/app/Activity;

    sget v1, Lagg;->remanejamento_sem_produto:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lait;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lait;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lait;->a:Landroid/app/Activity;

    sget v1, Lagg;->layout_remanejamento_main:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lait;->k:Landroid/support/v4/widget/NestedScrollView;

    iget-object v0, p0, Lait;->k:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    iget-object v0, p0, Lait;->a:Landroid/app/Activity;

    sget v1, Lagg;->total_limit_value_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lait;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lait;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lait;->a:Landroid/app/Activity;

    sget v2, Lagl;->money_value:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lait;->c:Lajv;

    invoke-virtual {v4}, Lajv;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lait;->a:Landroid/app/Activity;

    sget v1, Lagg;->suggestion_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lait;->h:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lait;->a:Landroid/app/Activity;

    sget v1, Lagg;->suggestion_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lait;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lait;->a:Landroid/app/Activity;

    sget v1, Lagg;->icon_suggestion:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lait;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lait;->c:Lajv;

    invoke-virtual {v0}, Lajv;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lait;->a(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lait;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lait;->a:Landroid/app/Activity;

    sget v2, Lagl;->voce_tem_x_liberado:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lait;->c:Lajv;

    invoke-virtual {v4}, Lajv;->i()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lait;->a:Landroid/app/Activity;

    sget v1, Lagg;->main_contracts_list:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lait;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lait;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lait;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lait;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v0, p0, Lait;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lait;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lait;->c:Lajv;

    invoke-virtual {v0}, Lajv;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lajx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v6, p0, Lait;->f:Z

    :goto_2
    new-instance v0, Laip;

    iget-object v1, p0, Lait;->c:Lajv;

    invoke-virtual {v1}, Lajv;->j()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lait;->a:Landroid/app/Activity;

    iget-boolean v3, p0, Lait;->f:Z

    invoke-direct {v0, v1, v2, v3}, Laip;-><init>(Ljava/util/List;Landroid/app/Activity;Z)V

    iget-object v1, p0, Lait;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lait;->c:Lajv;

    invoke-virtual {v0}, Lajv;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lait;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lajd;->a()Lajd;

    move-result-object v0

    invoke-virtual {v0}, Lajd;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    iget-object v0, p0, Lait;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lait;->a:Landroid/app/Activity;

    sget v2, Lagl;->voce_pode_alterar:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lait;->j:Landroid/widget/ImageView;

    sget v1, Lagf;->remanejamento_ic_ajuste_nao_disponivel:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    iput-boolean v5, p0, Lait;->f:Z

    goto :goto_2
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lait;->a:Landroid/app/Activity;

    sget v1, Lagg;->remanejamento_servico_indisponivel:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lait;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lait;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
