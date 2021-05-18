.class public Lhci;
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
    .line 94
    iput-object p1, p0, Lhci;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 99
    const-string v0, "Cartoes_Desbloqueio_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhci;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    iget-object v1, p0, Lhci;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method
