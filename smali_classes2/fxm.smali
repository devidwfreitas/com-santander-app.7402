.class Lfxm;
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
    .line 271
    iput-object p1, p0, Lfxm;->a:Lfxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 274
    check-cast p1, Lfyh;

    .line 275
    if-eqz p1, :cond_5

    .line 276
    invoke-virtual {p1}, Lfyh;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    sget-object v0, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 278
    invoke-virtual {p1}, Lfyh;->e()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->c:Ljava/util/List;

    .line 279
    sget-object v0, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 280
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfyl;

    .line 282
    invoke-virtual {v0}, Lfyl;->b()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {v0}, Lfyl;->a()Ljava/lang/String;

    move-result-object v0

    .line 284
    sget-object v3, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfxm;->a:Lfxl;

    iget-object v1, v1, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    const-string v1, "listaContas"

    sget-object v2, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 288
    const-string v1, "Nome"

    iget-object v2, p0, Lfxm;->a:Lfxl;

    iget-object v2, v2, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v2}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->e(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v1, "cpf"

    iget-object v2, p0, Lfxm;->a:Lfxl;

    iget-object v2, v2, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v2}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->f(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Lfxm;->a:Lfxl;

    iget-object v1, v1, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 310
    :goto_1
    return-void

    .line 292
    :cond_1
    invoke-virtual {p1}, Lfyh;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@SNE2024"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lfxm;->a:Lfxl;

    iget-object v0, v0, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0, v3}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;I)V

    goto :goto_1

    .line 296
    :cond_2
    invoke-virtual {p1}, Lfyh;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lfxm;->a:Lfxl;

    iget-object v0, v0, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0, v3}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;I)V

    goto :goto_1

    .line 299
    :cond_3
    invoke-virtual {p1}, Lfyh;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    iget-object v0, p0, Lfxm;->a:Lfxl;

    iget-object v0, v0, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;I)V

    goto :goto_1

    .line 304
    :cond_4
    iget-object v0, p0, Lfxm;->a:Lfxl;

    iget-object v0, v0, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0, v2}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;I)V

    goto :goto_1

    .line 308
    :cond_5
    iget-object v0, p0, Lfxm;->a:Lfxl;

    iget-object v0, v0, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0, v2}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;I)V

    goto :goto_1
.end method
