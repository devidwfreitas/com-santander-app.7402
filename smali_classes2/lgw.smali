.class public Llgw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkud;

.field final synthetic b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Lkud;)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Llgw;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    iput-object p2, p0, Llgw;->a:Lkud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 674
    iget-object v0, p0, Llgw;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->l(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llgw;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->m(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Llgw;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    iget-object v1, p0, Llgw;->a:Lkud;

    iget-object v2, p0, Llgw;->a:Lkud;

    invoke-virtual {v2}, Lkud;->d()Lktr;

    move-result-object v2

    invoke-virtual {v2}, Lktr;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->J(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Lkud;I)V

    .line 690
    :goto_0
    return-void

    .line 677
    :cond_0
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 678
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llgw;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    const-class v2, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 679
    iget-object v1, p0, Llgw;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->m(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 680
    sget-object v1, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a:Ljava/lang/String;

    iget-object v2, p0, Llgw;->a:Lkud;

    invoke-virtual {v2}, Lkud;->d()Lktr;

    move-result-object v2

    invoke-virtual {v2}, Lktr;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    const-string v1, "Seguros_Contratacao_Vida_Acao"

    const-string v2, "BotaoContratar"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_1
    :goto_1
    iget-object v1, p0, Llgw;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 682
    :cond_2
    iget-object v1, p0, Llgw;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->l(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    sget-object v1, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a:Ljava/lang/String;

    iget-object v2, p0, Llgw;->a:Lkud;

    invoke-virtual {v2}, Lkud;->d()Lktr;

    move-result-object v2

    invoke-virtual {v2}, Lktr;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 687
    :cond_3
    iget-object v0, p0, Llgw;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lmhj;->c(Landroid/content/Context;)V

    goto :goto_0
.end method
