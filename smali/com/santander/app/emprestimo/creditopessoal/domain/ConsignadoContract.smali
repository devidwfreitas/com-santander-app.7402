.class public Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contractDate:Ljava/lang/String;
    .annotation runtime Leks;
        a = "contractDate"
    .end annotation
.end field

.field private debtorBalance:Ljava/lang/String;
    .annotation runtime Leks;
        a = "debtorBalance"
    .end annotation
.end field

.field private descriptionBlock:Ljava/lang/String;
    .annotation runtime Leks;
        a = "descriptionBlock"
    .end annotation
.end field

.field private flagLock:Ljava/lang/String;
    .annotation runtime Leks;
        a = "flagLock"
    .end annotation
.end field

.field private note:Ljava/lang/String;
    .annotation runtime Leks;
        a = "note"
    .end annotation
.end field

.field private number:Ljava/lang/String;
    .annotation runtime Leks;
        a = "number"
    .end annotation
.end field

.field private openPortionAmount:Ljava/lang/String;
    .annotation runtime Leks;
        a = "openPortionAmount"
    .end annotation
.end field

.field private parcelAmountPaid:Ljava/lang/String;
    .annotation runtime Leks;
        a = "parcelAmountPaid"
    .end annotation
.end field

.field private pastDueAmount:Ljava/lang/String;
    .annotation runtime Leks;
        a = "pastDueAmount"
    .end annotation
.end field

.field private percentageRefinancing:Ljava/lang/String;
    .annotation runtime Leks;
        a = "percentageRefinancing"
    .end annotation
.end field

.field private plotValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "plotValue"
    .end annotation
.end field

.field private portionWinAmount:Ljava/lang/String;
    .annotation runtime Leks;
        a = "portionWinAmount"
    .end annotation
.end field

.field private registration:Ljava/lang/String;
    .annotation runtime Leks;
        a = "registration"
    .end annotation
.end field

.field private totalInstallmentAmount:Ljava/lang/String;
    .annotation runtime Leks;
        a = "totalInstallmentAmount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContractDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;->contractDate:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v0, ""

    goto :goto_0
.end method

.method public getDebtorBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;->debtorBalance:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v0, "0,00 N/A"

    goto :goto_0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v0, "0,00 N/A"

    goto :goto_0
.end method

.method public getParcelAmountPaid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;->parcelAmountPaid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v0, "0,00 N/A"

    goto :goto_0
.end method

.method public getPlotValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;->plotValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v0, "0,00 N/A"

    goto :goto_0
.end method

.method public getTotalInstallmentAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;->totalInstallmentAmount:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v0, "0,00 N/A"

    goto :goto_0
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;->number:Ljava/lang/String;

    .line 46
    return-void
.end method
