.class public Lfnh;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/SaldoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/SaldoActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lfnh;->a:Lcom/santander/app/SaldoActivity;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Land;)V
    .locals 0

    .prologue
    .line 83
    check-cast p1, Lgmx;

    invoke-virtual {p0, p1}, Lfnh;->a(Lgmx;)V

    return-void
.end method

.method public a(Lgmx;)V
    .locals 2

    .prologue
    .line 86
    const-string v0, "ContaCorrente_Acao"

    const-string v1, "SelecionarContaOrigem"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lfnh;->a:Lcom/santander/app/SaldoActivity;

    invoke-virtual {p1}, Lgmx;->f()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/SaldoActivity;->a(Lcom/santander/app/SaldoActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;

    .line 88
    iget-object v0, p0, Lfnh;->a:Lcom/santander/app/SaldoActivity;

    invoke-static {v0}, Lcom/santander/app/SaldoActivity;->a(Lcom/santander/app/SaldoActivity;)V

    .line 89
    return-void
.end method
