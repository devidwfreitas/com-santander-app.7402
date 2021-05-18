.class public Llgt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llir;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Llgt;->a:Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lktq;)V
    .locals 4

    .prologue
    const v2, 0x7f090362

    .line 68
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lktq;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lktq;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 72
    invoke-virtual {p1}, Lktq;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lktq;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    invoke-virtual {p1}, Lktq;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->J(Ljava/lang/String;)I

    move-result v1

    .line 74
    const/4 v0, -0x1

    if-gt v1, v0, :cond_2

    .line 75
    iget-object v0, p0, Llgt;->a:Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    iget-object v1, p0, Llgt;->a:Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Llgt;->a:Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    const v2, 0x7f090134

    .line 78
    invoke-virtual {v0, v2}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_1
    iget-object v2, p0, Llgt;->a:Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    iget-object v3, p0, Llgt;->a:Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    invoke-virtual {v3}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lmhj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_3
    iget-object v0, p0, Llgt;->a:Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    const v2, 0x7f090133

    .line 79
    invoke-virtual {v0, v2}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 94
    :cond_4
    invoke-static {}, Lmhj;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    iget-object v0, p0, Llgt;->a:Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    iget-object v1, p0, Llgt;->a:Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_5
    const-string v1, "00000109"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 98
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 99
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llgt;->a:Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    const-class v2, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    invoke-virtual {p1}, Lktq;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 101
    const-string v1, "Seguros_Contratacao_Vida_Acao"

    const-string v2, "BotaoContratar"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_6
    sget-object v1, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lktq;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Llgt;->a:Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 106
    :cond_7
    iget-object v0, p0, Llgt;->a:Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    invoke-static {v0}, Lmhj;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 110
    :cond_8
    iget-object v0, p0, Llgt;->a:Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    iget-object v1, p0, Llgt;->a:Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
