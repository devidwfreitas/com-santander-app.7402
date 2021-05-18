.class public Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lgcc;


# instance fields
.field private a:Lcom/santander/app/components/view/SantanderCheckBox;

.field private b:Lcom/santander/app/components/view/SantanderButtonView;

.field private c:Lgdg;

.field private d:Lgaq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cambio_dados"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgaq;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->d:Lgaq;

    .line 53
    const v0, 0x7f100aae

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->b:Lcom/santander/app/components/view/SantanderButtonView;

    .line 54
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->b:Lcom/santander/app/components/view/SantanderButtonView;

    invoke-virtual {v0, p0}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f100aad

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderCheckBox;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->a:Lcom/santander/app/components/view/SantanderCheckBox;

    .line 56
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->a:Lcom/santander/app/components/view/SantanderCheckBox;

    invoke-virtual {v0, p0}, Lcom/santander/app/components/view/SantanderCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    new-instance v0, Lgdh;

    invoke-direct {v0, p0}, Lgdh;-><init>(Lgcc;)V

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->c:Lgdg;

    .line 58
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->setResult(I)V

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioConfirmacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const-string v1, "cambio_dados"

    iget-object v2, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->d:Lgaq;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->setResult(I)V

    .line 94
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 95
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 63
    if-eqz p2, :cond_0

    .line 64
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->b:Lcom/santander/app/components/view/SantanderButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setVisibility(I)V

    .line 69
    :goto_0
    const-string v1, "ServicosInternacionais_Cambio_ClausulasContratuais_LiEConcordoComAsClausulasContratuais_Acao"

    if-eqz p2, :cond_1

    const-string v0, "Sim"

    :goto_1
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->b:Lcom/santander/app/components/view/SantanderButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setVisibility(I)V

    goto :goto_0

    .line 69
    :cond_1
    const-string v0, "Nao"

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 76
    :pswitch_0
    const-string v0, "ServicosInternacionais_Cambio_ClausulasContratuais_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->c:Lgdg;

    invoke-interface {v0}, Lgdg;->a()V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x7f100aae
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 44
    const v1, 0x7f0901ff

    invoke-virtual {p0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;->b()V

    .line 48
    return-void
.end method
