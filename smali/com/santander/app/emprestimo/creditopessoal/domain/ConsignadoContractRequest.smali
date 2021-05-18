.class public Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContractRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bankBranchCode:Ljava/lang/String;
    .annotation runtime Leks;
        a = "bankBranchCode"
    .end annotation
.end field

.field private checkingAccountIndex:Ljava/lang/String;
    .annotation runtime Leks;
        a = "checkingAccountIndex"
    .end annotation
.end field

.field private formalizationStatus:Ljava/lang/String;
    .annotation runtime Leks;
        a = "formalizationStatus"
    .end annotation
.end field

.field private onLineAverbationCode:Ljava/lang/String;
    .annotation runtime Leks;
        a = "onLineAverbationCode"
    .end annotation
.end field

.field private simulationId:Ljava/lang/String;
    .annotation runtime Leks;
        a = "simulationId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    check-cast p1, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    .line 28
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->conta:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 30
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->simulation:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContractRequest;->simulationId:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->conta:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContractRequest;->bankBranchCode:Ljava/lang/String;

    .line 32
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContractRequest;->checkingAccountIndex:Ljava/lang/String;

    .line 33
    const-string v0, "true"

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContractRequest;->formalizationStatus:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->consignadoSimulationResponse:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    iget-object v0, v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->averbationCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContractRequest;->onLineAverbationCode:Ljava/lang/String;

    .line 35
    return-void
.end method
