.class Lfkx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lfts;

.field final synthetic b:Lfkw;


# direct methods
.method constructor <init>(Lfkw;Lfts;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lfkx;->b:Lfkw;

    iput-object p2, p0, Lfkx;->a:Lfts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lfkx;->b:Lfkw;

    iget-object v0, v0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    iget-object v0, v0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkx;->b:Lfkw;

    iget-object v0, v0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    iget-object v0, v0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lfkx;->b:Lfkw;

    iget-object v0, v0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    iget-object v0, v0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 271
    iget-object v0, p0, Lfkx;->b:Lfkw;

    iget-object v0, v0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->a:Landroid/app/Dialog;

    .line 274
    :cond_0
    iget-object v0, p0, Lfkx;->a:Lfts;

    invoke-virtual {v0}, Lfts;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfkx;->a:Lfts;

    invoke-virtual {v0}, Lfts;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 275
    iget-object v0, p0, Lfkx;->a:Lfts;

    iget-object v1, p0, Lfkx;->b:Lfkw;

    iget-object v1, v1, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lfts;

    move-result-object v1

    invoke-virtual {v1}, Lfts;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->l(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lfkx;->a:Lfts;

    iget-object v1, p0, Lfkx;->b:Lfkw;

    iget-object v1, v1, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lfts;

    move-result-object v1

    invoke-virtual {v1}, Lfts;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->o(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lfkx;->b:Lfkw;

    iget-object v0, v0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    iget-object v1, p0, Lfkx;->a:Lfts;

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->a(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;Lfts;)Lfts;

    .line 278
    iget-object v0, p0, Lfkx;->b:Lfkw;

    iget-object v0, v0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->a(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 279
    iget-object v0, p0, Lfkx;->b:Lfkw;

    iget-object v0, v0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->e(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)V

    .line 290
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lfkx;->a:Lfts;

    iget-object v1, p0, Lfkx;->b:Lfkw;

    iget-object v1, v1, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lfts;

    move-result-object v1

    invoke-virtual {v1}, Lfts;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->l(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lfkx;->a:Lfts;

    iget-object v1, p0, Lfkx;->b:Lfkw;

    iget-object v1, v1, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lfts;

    move-result-object v1

    invoke-virtual {v1}, Lfts;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->o(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lfkx;->a:Lfts;

    iget-object v1, p0, Lfkx;->b:Lfkw;

    iget-object v1, v1, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lfts;

    move-result-object v1

    invoke-virtual {v1}, Lfts;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->p(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lfkx;->a:Lfts;

    iget-object v1, p0, Lfkx;->b:Lfkw;

    iget-object v1, v1, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lfts;

    move-result-object v1

    invoke-virtual {v1}, Lfts;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->x(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lfkx;->a:Lfts;

    iget-object v1, p0, Lfkx;->b:Lfkw;

    iget-object v1, v1, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lfts;

    move-result-object v1

    invoke-virtual {v1}, Lfts;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->j(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lfkx;->a:Lfts;

    iget-object v1, p0, Lfkx;->b:Lfkw;

    iget-object v1, v1, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->c(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)Lfts;

    move-result-object v1

    invoke-virtual {v1}, Lfts;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->f(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lfkx;->b:Lfkw;

    iget-object v0, v0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    iget-object v1, p0, Lfkx;->a:Lfts;

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->a(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;Lfts;)Lfts;

    .line 288
    iget-object v0, p0, Lfkx;->b:Lfkw;

    iget-object v0, v0, Lfkw;->a:Lcom/santander/app/PoupancaResgateConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateConfirmacaoActivity;->d(Lcom/santander/app/PoupancaResgateConfirmacaoActivity;)V

    goto :goto_0
.end method
