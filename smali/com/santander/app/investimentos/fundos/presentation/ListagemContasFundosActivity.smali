.class public Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljdx;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljdx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 62
    const v0, 0x7f100365

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->b:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contas fundo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->d:Ljdx;

    invoke-virtual {v2}, Ljdx;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v0, 0x7f100366

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 66
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 67
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 69
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->b()V

    .line 70
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->d:Ljdx;

    invoke-virtual {v0}, Ljdx;->t()Ljdk;

    move-result-object v0

    sget-object v1, Ljdk;->REAPLICAR:Ljdk;

    if-ne v0, v1, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->d()V

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->c()V

    .line 78
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Ljhn;

    iget-object v2, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->d:Ljdx;

    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->e()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljhn;-><init>(Ljava/util/ArrayList;Ljdx;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 79
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 82
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->d:Ljdx;

    invoke-virtual {v0}, Ljdx;->g()Ljdu;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljdu;

    invoke-direct {v0}, Ljdu;-><init>()V

    .line 84
    invoke-virtual {v0, v1}, Ljdu;->a(Z)V

    .line 85
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->d:Ljdx;

    invoke-virtual {v1, v0}, Ljdx;->a(Ljdu;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->d:Ljdx;

    invoke-virtual {v0}, Ljdx;->g()Ljdu;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljdu;->a(Z)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljdu;

    invoke-direct {v0}, Ljdu;-><init>()V

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljdu;->b(Z)V

    .line 96
    new-instance v1, Ljdx;

    invoke-direct {v1}, Ljdx;-><init>()V

    .line 97
    invoke-virtual {v1, v0}, Ljdx;->a(Ljdu;)V

    .line 98
    const-string v0, "Nova"

    invoke-virtual {v1, v0}, Ljdx;->b(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method private e()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Ljgz;

    invoke-direct {v0, p0}, Ljgz;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;)V

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 122
    const v0, 0x7f050014

    const v1, 0x7f050016

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->overridePendingTransition(II)V

    .line 123
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f04007e

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "lista_contas_fundo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->c:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "conta_fundo_selected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljdx;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->d:Ljdx;

    .line 44
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 46
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 49
    sget-object v1, Ljha;->a:[I

    iget-object v2, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->d:Ljdx;

    invoke-virtual {v2}, Ljdx;->t()Ljdk;

    move-result-object v2

    invoke-virtual {v2}, Ljdk;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 58
    :goto_0
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->a()V

    .line 59
    return-void

    .line 51
    :pswitch_0
    const v1, 0x7f090636

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :pswitch_1
    const v1, 0x7f0906ca

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
