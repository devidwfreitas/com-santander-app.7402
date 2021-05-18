.class public Lfkl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lfsy;

.field final synthetic b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Lfsy;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    iput-object p2, p0, Lfkl;->a:Lfsy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 284
    iget-object v0, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->b(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 286
    iget-object v0, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 289
    :cond_0
    iget-object v0, p0, Lfkl;->a:Lfsy;

    iget-object v1, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->d(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lfsy;

    move-result-object v1

    invoke-virtual {v1}, Lfsy;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->d(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lfkl;->a:Lfsy;

    iget-object v1, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->e(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lfsy;->a(Z)V

    .line 291
    iget-object v0, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v0

    iget-object v1, p0, Lfkl;->a:Lfsy;

    invoke-virtual {v0, v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lfsy;)V

    .line 293
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 294
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 297
    new-instance v3, Lgvb;

    invoke-direct {v3}, Lgvb;-><init>()V

    .line 298
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 300
    iget-object v0, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->i(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lfsy;

    move-result-object v0

    invoke-virtual {v0}, Lfsy;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v0

    const v5, 0x7f09085c

    invoke-virtual {v0, v5}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 306
    :goto_0
    new-instance v0, Lgky;

    const-string v5, "Transa\u00e7\u00e3o:"

    const-string v6, "Aplica\u00e7\u00e3o"

    invoke-direct {v0, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v0, Lgky;

    const-string v5, "Titular:"

    iget-object v6, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v6}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->i(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lfsy;

    move-result-object v6

    invoke-virtual {v6}, Lfsy;->j()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v0, Lgky;

    const-string v5, "CPF:"

    iget-object v6, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v6}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->i(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lfsy;

    move-result-object v6

    invoke-virtual {v6}, Lfsy;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v0, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->d(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lfsy;

    move-result-object v0

    invoke-virtual {v0}, Lfsy;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->d(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lfsy;

    move-result-object v0

    invoke-virtual {v0}, Lfsy;->o()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    :cond_1
    iget-object v0, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->d(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lfsy;

    move-result-object v0

    invoke-virtual {v0}, Lfsy;->c()Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_1
    new-instance v5, Lgky;

    const-string v6, "Conta Poupan\u00e7a:"

    invoke-direct {v5, v6, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v0, Lgky;

    const-string v5, "Valor:"

    iget-object v6, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v6}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->i(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lfsy;

    move-result-object v6

    invoke-virtual {v6}, Lfsy;->k()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v0, Lgky;

    const-string v5, "Data Cont\u00e1bil:"

    iget-object v6, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v6}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnak;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-virtual {v3, v4}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 320
    iget-object v0, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v0

    const v4, 0x7f0900cc

    invoke-virtual {v0, v4}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v4}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->i(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lfsy;

    move-result-object v4

    invoke-virtual {v4}, Lfsy;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnak;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 323
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {v3, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->i(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lfsy;

    move-result-object v0

    invoke-virtual {v0}, Lfsy;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v3, v7}, Lgvb;->f(Z)V

    .line 327
    const-string v0, "Dep\u00f3sito Programado em Poupan\u00e7a"

    invoke-virtual {v3, v0}, Lgvb;->k(Ljava/lang/String;)V

    .line 328
    const-class v0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-virtual {v3, v0}, Lgvb;->a(Ljava/lang/Class;)V

    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 331
    const-string v1, "opcao"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-virtual {v3, v0}, Lgvb;->a(Ljava/util/HashMap;)V

    .line 334
    const-string v0, "telaApliPoupancaOK.end"

    invoke-virtual {v3, v0}, Lgvb;->i(Ljava/lang/String;)V

    .line 335
    const-string v0, "apliPoupancaTitShare"

    invoke-virtual {v3, v0}, Lgvb;->j(Ljava/lang/String;)V

    .line 336
    const-string v0, "InvestPoup.botaoDPP"

    invoke-virtual {v3, v0}, Lgvb;->l(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v3, v7}, Lgvb;->l(Z)V

    .line 340
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 342
    iget-object v1, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 343
    return-void

    .line 303
    :cond_2
    iget-object v0, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v0

    const v5, 0x7f09085e

    invoke-virtual {v0, v5}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgvb;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    :cond_3
    iget-object v0, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->i(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lfsy;

    move-result-object v0

    invoke-virtual {v0}, Lfsy;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lfkl;->b:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    invoke-static {v5}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->i(Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;)Lfsy;

    move-result-object v5

    invoke-virtual {v5}, Lfsy;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method
