.class Lfxn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfzi;


# instance fields
.field final synthetic a:Lfxl;


# direct methods
.method constructor <init>(Lfxl;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lfxn;->a:Lfxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 317
    check-cast p1, Lfyh;

    .line 318
    if-eqz p1, :cond_4

    .line 319
    invoke-virtual {p1}, Lfyh;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "104"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p1}, Lfyh;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfxn;->a:Lfxl;

    iget-object v1, v1, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    const-string v1, "nome"

    iget-object v2, p0, Lfxn;->a:Lfxl;

    iget-object v2, v2, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v2}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->e(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v1, "cpf"

    iget-object v2, p0, Lfxn;->a:Lfxl;

    iget-object v2, v2, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v2}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->f(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v1, "cadastro"

    iget-object v2, p0, Lfxn;->a:Lfxl;

    iget-object v2, v2, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v2}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->c(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    const-string v1, "codRetorno"

    invoke-virtual {p1}, Lfyh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    iget-object v1, p0, Lfxn;->a:Lfxl;

    iget-object v1, v1, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 341
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-virtual {p1}, Lfyh;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lfxn;->a:Lfxl;

    iget-object v0, v0, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;I)V

    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {p1}, Lfyh;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lfxn;->a:Lfxl;

    iget-object v0, v0, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;I)V

    goto :goto_0

    .line 335
    :cond_3
    iget-object v0, p0, Lfxn;->a:Lfxl;

    iget-object v0, v0, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0, v2}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;I)V

    goto :goto_0

    .line 339
    :cond_4
    iget-object v0, p0, Lfxn;->a:Lfxl;

    iget-object v0, v0, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0, v2}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;I)V

    goto :goto_0
.end method
