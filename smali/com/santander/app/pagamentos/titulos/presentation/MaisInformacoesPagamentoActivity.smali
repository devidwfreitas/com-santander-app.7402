.class public Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljve;


# instance fields
.field private a:Ljwd;

.field private b:Ljsr;

.field private c:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f100cee

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;->c:Landroid/widget/LinearLayout;

    .line 51
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/LinearLayout;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;->b:Ljsr;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f040097

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 35
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 37
    iput-object p0, p0, Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;->i:Landroid/app/Activity;

    .line 39
    const v1, 0x7f090a8b

    invoke-virtual {p0, v1}, Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ConsultaTitulos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljsr;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;->b:Ljsr;

    .line 43
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;->a()V

    .line 45
    new-instance v0, Ljwe;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;->i:Landroid/app/Activity;

    iget-object v2, p0, Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;->b:Ljsr;

    invoke-direct {v0, v1, v2, p0}, Ljwe;-><init>(Landroid/app/Activity;Ljsr;Ljve;)V

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/MaisInformacoesPagamentoActivity;->a:Ljwd;

    .line 46
    return-void
.end method
