.class public Lmos;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lmos;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Land;)V
    .locals 0

    .prologue
    .line 302
    check-cast p1, Lgmx;

    invoke-virtual {p0, p1}, Lmos;->a(Lgmx;)V

    return-void
.end method

.method public a(Lgmx;)V
    .locals 2

    .prologue
    .line 305
    const-string v0, "Transferencia_Acao"

    const-string v1, "SelecionarContaOrigem"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lmos;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-virtual {p1}, Lgmx;->f()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->a(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;

    .line 307
    iget-object v0, p0, Lmos;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->a(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;Lmld;)V

    .line 308
    return-void
.end method
