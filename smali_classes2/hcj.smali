.class public Lhcj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lhcj;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 111
    const-string v0, "Cartoes_Desbloqueio_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lhcj;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;

    invoke-static {v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->a(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;)Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string v1, ""

    .line 115
    iget-object v2, p0, Lhcj;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;

    invoke-static {v2}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->a(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;)Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;

    move-result-object v2

    iget-object v3, p0, Lhcj;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;

    invoke-static {v3}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->b(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method
