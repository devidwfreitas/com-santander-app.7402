.class public Lgca;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lgca;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Land;)V
    .locals 0

    .prologue
    .line 408
    check-cast p1, Lgmx;

    invoke-virtual {p0, p1}, Lgca;->a(Lgmx;)V

    return-void
.end method

.method public a(Lgmx;)V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lgca;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->k(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 412
    :goto_0
    const-string v1, "ServicosInternacionais_Cambio_Cambio_Acao"

    const-string v2, "SelecionarContaOrigem"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lgca;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-virtual {p1}, Lgmx;->f()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;

    .line 414
    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lgca;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->m(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)V

    .line 417
    :cond_0
    return-void

    .line 411
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
