.class public Ljpu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Ljpu;->a:Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 112
    check-cast p1, Lfnz;

    .line 114
    invoke-virtual {p1}, Lfnz;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljpu;->a:Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;

    const-class v2, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const-string v1, "codRetorno"

    const-string v2, "104"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Ljpu;->a:Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    iget-object v0, p0, Ljpu;->a:Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;

    invoke-virtual {v0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->finish()V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Ljpu;->a:Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;->a(Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lfnz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method
