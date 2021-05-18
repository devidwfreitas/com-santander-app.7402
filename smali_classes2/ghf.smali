.class public Lghf;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lghf;->a:Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lamx;)V
    .locals 0

    .prologue
    .line 131
    check-cast p1, Lgmw;

    invoke-virtual {p0, p1}, Lghf;->a(Lgmw;)V

    return-void
.end method

.method public a(Lgmw;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-super {p0, p1}, Lgmz;->a(Lamx;)V

    .line 135
    invoke-virtual {p1}, Lgmw;->e()Lghu;

    move-result-object v0

    .line 136
    const-string v1, "Cartoes_Bloqueio_Acao"

    const-string v2, "SelecionarCartoes"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lghf;->a:Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->b(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    iget-object v1, p0, Lghf;->a:Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->c(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 139
    iget-object v1, p0, Lghf;->a:Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->d(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)Lghj;

    move-result-object v1

    invoke-interface {v1, v0}, Lghj;->a(Lghu;)V

    .line 140
    return-void
.end method
