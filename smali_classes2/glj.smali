.class Lglj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lglf;


# direct methods
.method constructor <init>(Lglf;I)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lglj;->b:Lglf;

    iput p2, p0, Lglj;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 335
    iget-object v0, p0, Lglj;->b:Lglf;

    iget-object v0, v0, Lglf;->b:Ljava/util/List;

    iget-object v1, p0, Lglj;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-virtual {v1}, Lgld;->c()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 336
    iget-object v1, p0, Lglj;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-virtual {v1, v0}, Lgld;->a(Ljava/lang/Object;)V

    .line 337
    iget-object v1, p0, Lglj;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->f(Lgld;)Lghu;

    move-result-object v1

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lglj;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-virtual {v1, v0}, Lgld;->a(Ljava/lang/Object;)V

    .line 341
    :cond_0
    iget-object v1, p0, Lglj;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    iget v2, p0, Lglj;->a:I

    invoke-virtual {v1, v2}, Lgld;->a(I)V

    .line 345
    invoke-virtual {v0}, Lghu;->z()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 346
    invoke-static {}, Lmzr;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    iget-object v0, p0, Lglj;->b:Lglf;

    iget-object v0, v0, Lglf;->c:Lgld;

    iget-object v1, p0, Lglj;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->g(Lgld;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lgld;->a(Lgld;Landroid/content/Context;)V

    .line 379
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v1, p0, Lglj;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->h(Lgld;)Lmip;

    move-result-object v1

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p0, Lglj;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->h(Lgld;)Lmip;

    move-result-object v1

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->b()Ljava/util/List;

    move-result-object v4

    move v2, v3

    .line 353
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 354
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lghu;

    .line 355
    invoke-virtual {v0}, Lghu;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lghu;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v3, v2

    .line 361
    :cond_2
    const-string v0, "Cartoes_Home_Acao"

    const-string v1, "DesbloqueieAgora"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lglj;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->g(Lgld;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    const-string v1, "indexCartao"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    iget-object v1, p0, Lglj;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->g(Lgld;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 353
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 369
    :cond_4
    iget-object v1, p0, Lglj;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->h(Lgld;)Lmip;

    move-result-object v1

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 370
    iget-object v1, p0, Lglj;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->h(Lgld;)Lmip;

    move-result-object v1

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 373
    :cond_5
    const-string v0, "Cartoes_Home_Acao"

    const-string v1, "CliqueNoSelecionarCartao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lglj;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->g(Lgld;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    const-string v1, "indexCartao"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    iget-object v1, p0, Lglj;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->g(Lgld;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
