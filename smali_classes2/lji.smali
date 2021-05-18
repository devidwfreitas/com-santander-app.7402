.class public Llji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Llji;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llji;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;

    const-class v2, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Llji;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->startActivity(Landroid/content/Intent;)V

    .line 176
    const-string v0, "family-key"

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    const-string v0, "Seguros_Contratacao_Vida_Comprovante_Acao"

    const-string v1, "BotaoIrParaHome"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_0
    iget-object v0, p0, Llji;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->finish()V

    .line 184
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Llji;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->b(Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "Seguros_Contratacao_AP_Comprovante_Acao"

    const-string v1, "BotaoIrParaHome"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
