.class public interface abstract Lhxq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxr;


# virtual methods
.method public abstract getContratos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContratosCalculate()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDiasUteis()I
.end method

.method public abstract getDiasUteisFormatted()Ljava/lang/String;
.end method

.method public abstract getMatriculaList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoMatricula;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNomeConvenio()Ljava/lang/String;
.end method

.method public abstract getParcelaFormatted()Ljava/lang/String;
.end method

.method public abstract getParcelamentoAdicionalFormatted()Ljava/lang/String;
.end method

.method public abstract getRequiredData()Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredData;
.end method

.method public abstract getTaxaJurosFormatted()Ljava/lang/String;
.end method

.method public abstract getTypeSecure()I
    .annotation build Lhxt;
    .end annotation
.end method

.method public abstract getValorParcelaFormatted()Ljava/lang/String;
.end method

.method public abstract getValorParcelasOutrosFormatted()Ljava/lang/String;
.end method

.method public abstract isEligivel()Z
.end method

.method public abstract isMorno()Z
.end method

.method public abstract isRefinanciamento()Z
.end method

.method public abstract isRequiredDataFlag()Z
.end method
