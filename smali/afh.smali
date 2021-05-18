.class public Lafh;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/Button;

.field private e:Laeg;

.field private f:Laei;

.field private g:Laer;

.field private h:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafh;->a:Landroid/app/Activity;

    new-instance v0, Laeg;

    invoke-direct {v0}, Laeg;-><init>()V

    iput-object v0, p0, Lafh;->e:Laeg;

    new-instance v0, Laei;

    invoke-direct {v0}, Laei;-><init>()V

    iput-object v0, p0, Lafh;->f:Laei;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lafh;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lafh;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lafh;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lafh;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lafh;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lafh;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lafh;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lafh;->a:Landroid/app/Activity;

    invoke-static {v0}, Lano;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iget-object v0, p0, Lafh;->a:Landroid/app/Activity;

    sget v2, Ladr;->layout_title:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lafh;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lafh;->c:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lafh;->f:Laei;

    new-instance v2, Lafq;

    invoke-direct {v2, p0, v1, p1}, Lafq;-><init>(Lafh;Landroid/app/Dialog;Lorg/json/JSONObject;)V

    invoke-virtual {v0, p1, v2}, Laei;->a(Lorg/json/JSONObject;Laej;)V

    return-void
.end method

.method static synthetic b(Lafh;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lafh;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lafh;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Laey;

    iget-object v1, p0, Lafh;->h:Ljava/util/List;

    invoke-virtual {v0}, Laey;->a()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laeb;

    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v1

    const-string v2, "Pagamentos_DDA_Acao"

    invoke-static {}, Laea;->a()Laea;

    move-result-object v3

    invoke-virtual {v3}, Laea;->d()Lji;

    move-result-object v3

    invoke-virtual {v0}, Laeb;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ladh;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v1

    const-string v2, "Pagamentos_DDA_Acao"

    const-string v3, "Pagar"

    invoke-virtual {v1, v2, v3}, Ladh;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lafh;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lafh;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".pagamentos.titulos.presentation.PagamentosCodigoBarrasActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "codigoBarrasDDA"

    invoke-virtual {v0}, Laeb;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "dda"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lafh;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lafh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lafh;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Lafh;)V
    .locals 0

    invoke-direct {p0}, Lafh;->e()V

    return-void
.end method

.method static synthetic d(Lafh;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lafh;->h:Ljava/util/List;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lafh;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic e(Lafh;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lafh;->b:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lafh;->a:Landroid/app/Activity;

    sget v1, Ladr;->list_titles:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lafh;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lafh;->a:Landroid/app/Activity;

    sget v1, Ladr;->button_buy:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lafh;->d:Landroid/widget/Button;

    iget-object v0, p0, Lafh;->d:Landroid/widget/Button;

    new-instance v1, Laft;

    invoke-direct {v1, p0}, Laft;-><init>(Lafh;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lafh;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lafh;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lafh;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Laey;

    iget-object v3, p0, Lafh;->h:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Laey;-><init>(Lafh;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lafh;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lafu;

    invoke-direct {v2, p0, v0}, Lafu;-><init>(Lafh;Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v2, p0, Lafh;->g:Laer;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    invoke-direct {p0}, Lafh;->d()V

    return-void
.end method

.method static synthetic f(Lafh;)Laer;
    .locals 1

    iget-object v0, p0, Lafh;->g:Laer;

    return-object v0
.end method

.method static synthetic g(Lafh;)V
    .locals 0

    invoke-direct {p0}, Lafh;->c()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lafh;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public a(Laeb;)V
    .locals 4

    iget-object v0, p0, Lafh;->a:Landroid/app/Activity;

    invoke-static {v0}, Lano;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v1

    const-string v2, "Pagamentos_DDA_Detalhe_Acao"

    const-string v3, "Detalhe"

    invoke-virtual {v1, v2, v3}, Ladh;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lafh;->e:Laeg;

    new-instance v2, Lafs;

    invoke-direct {v2, p0, v0}, Lafs;-><init>(Lafh;Landroid/app/Dialog;)V

    invoke-virtual {v1, p1, v2}, Laeg;->a(Laeb;Laeh;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lafh;->d:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
