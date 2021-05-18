.class public Ljpy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfzi;


# instance fields
.field final synthetic a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Ljpy;->a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 210
    check-cast p1, Lfyi;

    .line 211
    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {p1}, Lfyi;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljpy;->a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    invoke-static {v1}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->a(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    const-string v1, "codRetorno"

    iget-object v2, p0, Ljpy;->a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    invoke-static {v2}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->b(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v1, p0, Ljpy;->a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    invoke-static {v1}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->a(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 222
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Ljpy;->a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    invoke-virtual {p1}, Lfyi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->a(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Ljpy;->a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->a(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
