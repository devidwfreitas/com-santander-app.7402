.class public Ljpx;
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
    .line 186
    iput-object p1, p0, Ljpx;->a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 189
    check-cast p1, Lfyi;

    .line 190
    if-eqz p1, :cond_2

    .line 191
    invoke-virtual {p1}, Lfyi;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lfyi;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljpx;->a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    invoke-static {v1}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->a(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    iget-object v1, p0, Ljpx;->a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    invoke-static {v1}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->a(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 204
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p1}, Lfyi;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p1}, Lfyi;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljpx;->a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    invoke-static {v1}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->a(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/meuperfil/activity/CadastroAtencaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    iget-object v1, p0, Ljpx;->a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    invoke-static {v1}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->a(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Ljpx;->a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    invoke-virtual {p1}, Lfyi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->a(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Ljpx;->a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->a(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
