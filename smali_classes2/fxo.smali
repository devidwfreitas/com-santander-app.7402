.class public Lfxo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfzi;


# instance fields
.field final synthetic a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lfxo;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 361
    check-cast p1, Lfyf;

    .line 362
    if-eqz p1, :cond_3

    .line 363
    invoke-virtual {p1}, Lfyf;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 364
    invoke-virtual {p1}, Lfyf;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@ERSNE2015"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lfxo;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f04016e

    invoke-static {v0, v1}, Lmxn;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    .line 406
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {p1}, Lfyf;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lfxo;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Landroid/app/Activity;

    move-result-object v0

    .line 370
    invoke-virtual {p1}, Lfyf;->d()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-static {v0, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/app/Dialog;

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lfxo;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Sistema indispon\u00edvel. Por favor, entre em contato com a Central de Atendimento Santander."

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    .line 378
    :cond_2
    iget-object v0, p0, Lfxo;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    new-instance v1, Lfxv;

    new-instance v2, Lfxp;

    invoke-direct {v2, p0, p1}, Lfxp;-><init>(Lfxo;Lfyf;)V

    iget-object v3, p0, Lfxo;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    .line 396
    invoke-static {v3}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040313

    invoke-virtual {p1}, Lfyf;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lfxv;-><init>(Lfye;Landroid/content/Context;ILjava/util/List;)V

    .line 378
    invoke-static {v0, v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;Lfxv;)Lfxv;

    .line 397
    invoke-virtual {p1}, Lfyf;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lfxo;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->i(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lfxo;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->g(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Lfxv;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 400
    iget-object v0, p0, Lfxo;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->h(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)V

    goto :goto_0

    .line 404
    :cond_3
    iget-object v0, p0, Lfxo;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0, v2}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;I)V

    goto :goto_0
.end method
