.class public Lcom/santander/app/dpp/DPPValidacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lnau;


# instance fields
.field private a:Lheq;

.field private b:I

.field private c:Landroid/app/Dialog;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->d:Z

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPValidacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->c:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPValidacaoActivity;)Lheq;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->a:Lheq;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->d:Z

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Valor"

    iget-object v1, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->a:Lheq;

    invoke-virtual {v1}, Lheq;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lfrq;->a(Ljava/lang/String;D)V

    .line 248
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Dia"

    iget-object v1, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->a:Lheq;

    invoke-virtual {v1}, Lheq;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_DataDeInicio"

    iget-object v1, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->a:Lheq;

    invoke-virtual {v1}, Lheq;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_NumeroDeMeses"

    iget-object v1, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->a:Lheq;

    invoke-virtual {v1}, Lheq;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_0
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_ReferOper"

    iget-object v1, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->a:Lheq;

    invoke-virtual {v1}, Lheq;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void

    .line 252
    :cond_0
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_Terceiros_Valor"

    iget-object v1, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->a:Lheq;

    invoke-virtual {v1}, Lheq;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_Terceiros_Dia"

    iget-object v1, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->a:Lheq;

    invoke-virtual {v1}, Lheq;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_Terceiros_DataDeInicio"

    iget-object v1, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->a:Lheq;

    invoke-virtual {v1}, Lheq;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_Terceiros_NumeroDeMeses"

    iget-object v1, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->a:Lheq;

    invoke-virtual {v1}, Lheq;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/dpp/DPPValidacaoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/dpp/DPPValidacaoActivity;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->b:I

    return v0
.end method

.method public static synthetic d(Lcom/santander/app/dpp/DPPValidacaoActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/santander/app/dpp/DPPValidacaoActivity;->a()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iget v0, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->b:I

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 81
    :pswitch_0
    new-instance v0, Lhei;

    invoke-direct {v0, p0}, Lhei;-><init>(Lcom/santander/app/dpp/DPPValidacaoActivity;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lhei;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 85
    :pswitch_1
    new-instance v0, Lheg;

    invoke-direct {v0, p0}, Lheg;-><init>(Lcom/santander/app/dpp/DPPValidacaoActivity;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lheg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 89
    :pswitch_2
    new-instance v0, Lheh;

    invoke-direct {v0, p0}, Lheh;-><init>(Lcom/santander/app/dpp/DPPValidacaoActivity;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lheh;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f100544

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f040219

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPValidacaoActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/santander/app/dpp/DPPValidacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 49
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 52
    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/santander/app/dpp/DPPValidacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 55
    const-string v0, "dpp"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lheq;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->a:Lheq;

    .line 56
    const-string v0, "opcao"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->b:I

    .line 57
    const-string v0, "isProprioCliente"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/santander/app/dpp/DPPValidacaoActivity;->d:Z

    .line 59
    invoke-virtual {p0}, Lcom/santander/app/dpp/DPPValidacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 61
    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 63
    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 66
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 67
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 69
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 57
    goto :goto_0
.end method
