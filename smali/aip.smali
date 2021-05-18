.class public Laip;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Laiq;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:[Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;

.field private g:Z

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lajw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/app/Activity;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;",
            "Landroid/app/Activity;",
            "Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1308"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "1309"

    aput-object v2, v0, v1

    iput-object v0, p0, Laip;->d:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Laip;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Laip;->e:Ljava/util/List;

    iput-boolean v3, p0, Laip;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laip;->h:Ljava/util/ArrayList;

    iput-object p2, p0, Laip;->b:Landroid/content/Context;

    iput-object p1, p0, Laip;->a:Ljava/util/List;

    iput-boolean p3, p0, Laip;->c:Z

    return-void
.end method

.method private a(Lajw;)I
    .locals 6

    invoke-virtual {p1}, Lajw;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lajw;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    div-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method static synthetic a(Laip;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laip;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Laip;Z)Z
    .locals 0

    iput-boolean p1, p0, Laip;->g:Z

    return p1
.end method

.method static synthetic b(Laip;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Laip;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Laip;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laip;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Laiq;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lagi;->remanejamento_contract_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Laip;->b:Landroid/content/Context;

    new-instance v1, Laiq;

    invoke-direct {v1, p0, v0}, Laiq;-><init>(Laip;Landroid/view/View;)V

    return-object v1
.end method

.method public a(I)V
    .locals 2

    iget-boolean v0, p0, Laip;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Laip;->g:Z

    iget-object v0, p0, Laip;->f:Landroid/os/Handler;

    new-instance v1, Lais;

    invoke-direct {v1, p0, p1}, Lais;-><init>(Laip;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Laiq;I)V
    .locals 9

    const/16 v8, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Laip;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajw;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Laip;->f:Landroid/os/Handler;

    iget-object v1, p1, Laiq;->f:Landroid/widget/TextView;

    iget-object v4, p0, Laip;->b:Landroid/content/Context;

    sget v5, Lagl;->botao_alterar:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Laip;->c:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v0}, Lajw;->h()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lajx;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_1
    or-int/2addr v1, v4

    if-eqz v1, :cond_0

    iget-object v1, p1, Laiq;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-virtual {v0}, Lajw;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lajt;->USO_DE_LIMITE_DE_CONTA:Lajt;

    invoke-virtual {v4}, Lajt;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Laiq;->a:Landroid/widget/TextView;

    sget v4, Lagl;->remanejamento_label_cheque:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p1, Laiq;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lajx;->b(Lajw;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_2
    iget-object v1, p1, Laiq;->d:Landroid/widget/TextView;

    iget-object v4, p0, Laip;->b:Landroid/content/Context;

    sget v5, Lagl;->money_value:I

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lajw;->i()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Laiq;->e:Landroid/widget/TextView;

    iget-object v4, p0, Laip;->b:Landroid/content/Context;

    sget v5, Lagl;->disponivel_ajuste:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lajw;->n()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Laiq;->g:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0}, Laip;->a(Lajw;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Laip;->e:Ljava/util/List;

    invoke-virtual {v0}, Lajw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Laiq;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p1, Laiq;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Laiq;->d:Landroid/widget/TextView;

    sget v2, Lagl;->sem_limites:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    invoke-virtual {v0}, Lajw;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lajw;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lajt;->CARTAO:Lajt;

    invoke-virtual {v2}, Lajt;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Laip;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_3

    iget-object v1, p0, Laip;->a:Ljava/util/List;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajw;

    invoke-virtual {v1}, Lajw;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lajw;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p1, Laiq;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p1, Laiq;->c:Landroid/widget/TextView;

    invoke-static {v1}, Lajx;->a(Lajw;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Laip;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Laip;->a(I)V

    :cond_3
    :goto_3
    iget-object v1, p1, Laiq;->f:Landroid/widget/TextView;

    new-instance v2, Lair;

    invoke-direct {v2, p0, v0}, Lair;-><init>(Laip;Lajw;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    move v1, v3

    goto/16 :goto_0

    :cond_5
    move v4, v3

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v0}, Lajw;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lajt;->CARTAO:Lajt;

    invoke-virtual {v4}, Lajt;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Laiq;->a:Landroid/widget/TextView;

    sget v4, Lagl;->remanejamento_label_cartao:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p1, Laiq;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lajx;->a(Lajw;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    iget-object v1, p1, Laiq;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Laip;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Laiq;

    invoke-virtual {p0, p1, p2}, Laip;->a(Laiq;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Laip;->a(Landroid/view/ViewGroup;I)Laiq;

    move-result-object v0

    return-object v0
.end method
