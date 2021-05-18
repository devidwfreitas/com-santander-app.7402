.class Lglk;
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
    .line 387
    iput-object p1, p0, Lglk;->b:Lglf;

    iput p2, p0, Lglk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 390
    iget-object v0, p0, Lglk;->b:Lglf;

    iget-object v0, v0, Lglf;->b:Ljava/util/List;

    iget-object v1, p0, Lglk;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-virtual {v1}, Lgld;->c()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 391
    iget-object v1, p0, Lglk;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-virtual {v1, v0}, Lgld;->a(Ljava/lang/Object;)V

    .line 392
    iget-object v1, p0, Lglk;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->f(Lgld;)Lghu;

    move-result-object v1

    if-nez v1, :cond_0

    .line 393
    iget-object v1, p0, Lglk;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-virtual {v1, v0}, Lgld;->a(Ljava/lang/Object;)V

    .line 396
    :cond_0
    iget-object v1, p0, Lglk;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    iget v2, p0, Lglk;->a:I

    invoke-virtual {v1, v2}, Lgld;->a(I)V

    .line 399
    invoke-virtual {v0}, Lghu;->z()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 400
    invoke-static {}, Lmzr;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    iget-object v0, p0, Lglk;->b:Lglf;

    iget-object v0, v0, Lglf;->c:Lgld;

    iget-object v1, p0, Lglk;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->g(Lgld;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lgld;->a(Lgld;Landroid/content/Context;)V

    .line 432
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v1, p0, Lglk;->b:Lglf;

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

    .line 406
    iget-object v1, p0, Lglk;->b:Lglf;

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

    .line 407
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 408
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lghu;

    .line 409
    invoke-virtual {v0}, Lghu;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lghu;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v3, v2

    .line 415
    :cond_2
    const-string v0, "Cartoes_Home_Acao"

    const-string v1, "DesbloqueieAgora"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lglk;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->g(Lgld;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    const-string v1, "indexCartao"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    iget-object v1, p0, Lglk;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->g(Lgld;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 407
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 423
    :cond_4
    iget-object v1, p0, Lglk;->b:Lglf;

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

    .line 424
    iget-object v1, p0, Lglk;->b:Lglf;

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

    .line 428
    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lglk;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->g(Lgld;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 429
    const-string v1, "indexCartao"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    iget-object v1, p0, Lglk;->b:Lglf;

    iget-object v1, v1, Lglf;->c:Lgld;

    invoke-static {v1}, Lgld;->g(Lgld;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
