.class public Lhcq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lhcq;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lhcq;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;

    invoke-static {v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->b(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;)V

    .line 185
    iget-object v0, p0, Lhcq;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;

    iget-object v0, v0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhcq;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;

    iget-object v0, v0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lhcq;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;

    iget-object v0, v0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 187
    iget-object v0, p0, Lhcq;->a:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->a:Landroid/app/Dialog;

    .line 190
    :cond_0
    return-void
.end method
