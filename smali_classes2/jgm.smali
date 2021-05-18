.class public Ljgm;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Ljgm;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Land;)V
    .locals 0

    .prologue
    .line 215
    check-cast p1, Lgmx;

    invoke-virtual {p0, p1}, Ljgm;->a(Lgmx;)V

    return-void
.end method

.method public a(Lgmx;)V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Ljgm;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-virtual {p1}, Lgmx;->f()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;

    .line 219
    const-string v0, "Investimentos_Fundos_Aplicar_Acao"

    const-string v1, "SelecionarContaOrigem"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method
