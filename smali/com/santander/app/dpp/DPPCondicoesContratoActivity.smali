.class public Lcom/santander/app/dpp/DPPCondicoesContratoActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private a:Lcom/santander/app/dpp/DPPCondicoesContratoActivity;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Lheq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPCondicoesContratoActivity;)Lheq;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->d:Lheq;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0401a7

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->setContentView(I)V

    .line 40
    iput-object p0, p0, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->a:Lcom/santander/app/dpp/DPPCondicoesContratoActivity;

    .line 41
    invoke-virtual {p0}, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 45
    const v1, 0x7f0903e3

    invoke-virtual {p0, v1}, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 47
    const v0, 0x7f1007f6

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->b:Landroid/widget/Button;

    .line 48
    const v0, 0x7f1007f5

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->c:Landroid/widget/Button;

    .line 50
    invoke-virtual {p0}, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    const-string v1, "dpp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lheq;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->d:Lheq;

    .line 53
    iget-object v0, p0, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->b:Landroid/widget/Button;

    new-instance v1, Lhdd;

    invoke-direct {v1, p0}, Lhdd;-><init>(Lcom/santander/app/dpp/DPPCondicoesContratoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->c:Landroid/widget/Button;

    new-instance v1, Lhde;

    invoke-direct {v1, p0}, Lhde;-><init>(Lcom/santander/app/dpp/DPPCondicoesContratoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method
