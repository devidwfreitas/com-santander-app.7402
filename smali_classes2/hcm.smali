.class Lhcm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lhcs;

.field final synthetic b:Lhcl;


# direct methods
.method constructor <init>(Lhcl;Lhcs;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lhcm;->b:Lhcl;

    iput-object p2, p0, Lhcm;->a:Lhcs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lhcm;->b:Lhcl;

    iget-object v0, v0, Lhcl;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->c(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;)V

    .line 128
    iget-object v0, p0, Lhcm;->a:Lhcs;

    invoke-virtual {v0}, Lhcs;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhct;

    iget-object v1, p0, Lhcm;->b:Lhcl;

    iget-object v1, v1, Lhcl;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->b(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;)Lhct;

    move-result-object v1

    invoke-virtual {v1}, Lhct;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->j(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lhcm;->a:Lhcs;

    invoke-virtual {v0}, Lhcs;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhct;

    iget-object v1, p0, Lhcm;->b:Lhcl;

    iget-object v1, v1, Lhcl;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->b(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;)Lhct;

    move-result-object v1

    invoke-virtual {v1}, Lhct;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->q(Ljava/lang/String;)V

    .line 131
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhcm;->b:Lhcl;

    iget-object v1, v1, Lhcl;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->a(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;)Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string v1, "cartaoDesloqueioModel"

    iget-object v2, p0, Lhcm;->a:Lhcs;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lhcm;->b:Lhcl;

    iget-object v1, v1, Lhcl;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method
