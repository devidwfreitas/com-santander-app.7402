.class public Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljdw;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/santander/app/components/view/SantanderButtonView;

.field private d:Landroid/app/Activity;

.field private e:Ljdw;

.field private f:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;)Ljdw;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->e:Ljdw;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;Ljdw;)Ljdw;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->e:Ljdw;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;)Lcom/santander/app/components/view/SantanderButtonView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->c:Lcom/santander/app/components/view/SantanderButtonView;

    return-object v0
.end method

.method private c()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Ljgf;

    invoke-direct {v0, p0}, Ljgf;-><init>(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;)V

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Ljif;

    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->c()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljif;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 113
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljdw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->b:Ljava/util/List;

    .line 148
    new-instance v0, Ljdw;

    invoke-direct {v0}, Ljdw;-><init>()V

    .line 149
    const-string v1, "Menor Valor"

    invoke-virtual {v0, v1}, Ljdw;->a(Ljava/lang/String;)V

    .line 150
    sget-object v1, Ljdv;->MENOR_VALOR:Ljdv;

    invoke-virtual {v0, v1}, Ljdw;->a(Ljdv;)V

    .line 151
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Ljdw;

    invoke-direct {v0}, Ljdw;-><init>()V

    .line 154
    const-string v1, "Maior Valor"

    invoke-virtual {v0, v1}, Ljdw;->a(Ljava/lang/String;)V

    .line 155
    sget-object v1, Ljdv;->MAIOR_VALOR:Ljdv;

    invoke-virtual {v0, v1}, Ljdw;->a(Ljdv;)V

    .line 156
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Ljdw;

    invoke-direct {v0}, Ljdw;-><init>()V

    .line 159
    const-string v1, "Menor Rentabilidade"

    invoke-virtual {v0, v1}, Ljdw;->a(Ljava/lang/String;)V

    .line 160
    sget-object v1, Ljdv;->MENOR_RENTABILIDADE:Ljdv;

    invoke-virtual {v0, v1}, Ljdw;->a(Ljdv;)V

    .line 161
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Ljdw;

    invoke-direct {v0}, Ljdw;-><init>()V

    .line 164
    const-string v1, "Maior Rentabilidade"

    invoke-virtual {v0, v1}, Ljdw;->a(Ljava/lang/String;)V

    .line 165
    sget-object v1, Ljdv;->MAIOR_RENTABILIDADE:Ljdv;

    invoke-virtual {v0, v1}, Ljdw;->a(Ljdv;)V

    .line 166
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 51
    iput-object p0, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->d:Landroid/app/Activity;

    .line 52
    const v0, 0x7f040066

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->setContentView(I)V

    .line 53
    const v0, 0x7f100308

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->c:Lcom/santander/app/components/view/SantanderButtonView;

    .line 54
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->c:Lcom/santander/app/components/view/SantanderButtonView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 58
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0906ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->e:Ljdw;

    .line 63
    const v0, 0x7f100307

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 65
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 67
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 69
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->a()V

    .line 71
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->c:Lcom/santander/app/components/view/SantanderButtonView;

    new-instance v1, Ljge;

    invoke-direct {v1, p0}, Ljge;-><init>(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 89
    const v1, 0x7f12000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 91
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->f:Landroid/view/MenuItem;

    .line 92
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->f:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 94
    invoke-super {p0, p1}, Lgrs;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 102
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->finish()V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x7f101209
        :pswitch_0
    .end packed-switch
.end method
