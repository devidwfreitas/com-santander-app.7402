.class public Lcom/santander/app/contacorrente/domain/Conta;
.super Lfuu;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private familias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljdc;",
            ">;"
        }
    .end annotation
.end field

.field private fundos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljdd;",
            ">;"
        }
    .end annotation
.end field

.field private indexConta:I

.field private indiceAgenciaConta:Ljava/lang/String;

.field private saldoTotalPoupanca:Ljava/lang/String;

.field private saldoTotalPrevidencia:Ljava/lang/String;

.field private saldoTotalRendaFixa:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lfuu;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 86
    instance-of v0, p1, Lcom/santander/app/contacorrente/domain/Conta;

    if-eqz v0, :cond_0

    .line 87
    check-cast p1, Lcom/santander/app/contacorrente/domain/Conta;

    .line 88
    invoke-virtual {p0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFamilias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljdc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/Conta;->familias:Ljava/util/List;

    return-object v0
.end method

.method public getFundos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljdd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/Conta;->fundos:Ljava/util/List;

    return-object v0
.end method

.method public getIndexConta()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/santander/app/contacorrente/domain/Conta;->indexConta:I

    return v0
.end method

.method public getIndiceAgenciaConta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/Conta;->indiceAgenciaConta:Ljava/lang/String;

    return-object v0
.end method

.method public getSaldoTotalPoupanca()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/Conta;->saldoTotalPoupanca:Ljava/lang/String;

    return-object v0
.end method

.method public getSaldoTotalPrevidencia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/Conta;->saldoTotalPrevidencia:Ljava/lang/String;

    return-object v0
.end method

.method public getSaldoTotalRendaFixa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/contacorrente/domain/Conta;->saldoTotalRendaFixa:Ljava/lang/String;

    return-object v0
.end method

.method public setFamilias(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljdc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/santander/app/contacorrente/domain/Conta;->familias:Ljava/util/List;

    .line 50
    return-void
.end method

.method public setFundos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljdd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lcom/santander/app/contacorrente/domain/Conta;->fundos:Ljava/util/List;

    .line 42
    return-void
.end method

.method public setIndexConta(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/santander/app/contacorrente/domain/Conta;->indexConta:I

    .line 34
    return-void
.end method

.method public setIndiceAgenciaConta(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/santander/app/contacorrente/domain/Conta;->indiceAgenciaConta:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setSaldoTotalPoupanca(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/santander/app/contacorrente/domain/Conta;->saldoTotalPoupanca:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setSaldoTotalPrevidencia(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/santander/app/contacorrente/domain/Conta;->saldoTotalPrevidencia:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setSaldoTotalRendaFixa(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/santander/app/contacorrente/domain/Conta;->saldoTotalRendaFixa:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnaq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Escolha a nova conta preferencial"

    goto :goto_0
.end method
