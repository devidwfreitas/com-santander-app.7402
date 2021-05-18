.class public Lkbh;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Lkca;",
        "Ljava/lang/Void;",
        "Lkbu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

.field private b:Lkbu;

.field private c:Ljrn;

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Ljrn;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-direct {p0}, Lgne;-><init>()V

    .line 223
    iput-object p2, p0, Lkbh;->c:Ljrn;

    .line 224
    iput-object p3, p0, Lkbh;->d:Landroid/app/Activity;

    .line 225
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 216
    check-cast p1, [Lkca;

    invoke-virtual {p0, p1}, Lkbh;->a([Lkca;)Lkbu;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Lkca;)Lkbu;
    .locals 6

    .prologue
    .line 236
    new-instance v1, Lkca;

    invoke-direct {v1}, Lkca;-><init>()V

    .line 237
    iget-object v0, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iget-object v0, v0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkca;->setConnUuid(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iget-object v0, v0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkca;->setTokenTransacao(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iget-object v0, v0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkca;->setTokenSessao(Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0033"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v2}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->h(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v2}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->h(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkca;->a(Ljava/lang/String;)V

    .line 242
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 243
    const-class v2, Lkbu;

    invoke-static {}, Lhas;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "statusVisualizacaoInvestimentosATM"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbu;

    iput-object v0, p0, Lkbh;->b:Lkbu;

    .line 244
    iget-object v0, p0, Lkbh;->b:Lkbu;

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Lgne;->a()V

    .line 230
    iget-object v0, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iget-object v1, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 231
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 216
    check-cast p1, Lkbu;

    invoke-virtual {p0, p1}, Lkbh;->a(Lkbu;)V

    return-void
.end method

.method protected a(Lkbu;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 249
    invoke-super {p0, p1}, Lgne;->a(Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->i(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->i(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->i(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 253
    iget-object v0, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0, v3}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 256
    :cond_0
    if-nez p1, :cond_1

    .line 257
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iget-object v1, v1, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1, v3, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 270
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-virtual {p1}, Lkbu;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lkbu;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iget-object v1, v1, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Lkbu;->getMensagemErro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_2
    iget-object v0, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0, p1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Lkbu;)Lkbu;

    .line 262
    iget-object v0, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->j(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Lkbu;

    move-result-object v0

    iget-object v1, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->h(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkbu;->a(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->j(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Lkbu;

    move-result-object v0

    iget-object v1, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->h(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkbu;->b(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iget-object v0, v0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    iget-object v1, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->j(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Lkbu;

    move-result-object v1

    invoke-virtual {v1}, Lkbu;->getTokenTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iget-object v1, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iget-object v2, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v2}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->j(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Lkbu;

    move-result-object v2

    invoke-virtual {v2}, Lkbu;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v3}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->j(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Lkbu;

    move-result-object v3

    invoke-virtual {v3}, Lkbu;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;I)I

    .line 267
    iget-object v0, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->k(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->j(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Lkbu;

    move-result-object v1

    invoke-virtual {v1}, Lkbu;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lkbh;->c:Ljrn;

    iget-object v1, p0, Lkbh;->a:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-static {v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->g(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljrn;->a(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
