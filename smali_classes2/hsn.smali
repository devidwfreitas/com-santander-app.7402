.class public interface abstract Lhsn;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(ILcom/santander/app/contacorrente/domain/Conta;Lhso;)V
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param
    .param p3    # Lhso;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            "Lhso",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(ILcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;Lcom/santander/app/contacorrente/domain/Conta;FIILhso;)V
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param
    .param p7    # Lhso;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            "FII",
            "Lhso",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(IZLhso;)V
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param
    .param p3    # Lhso;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lhso",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;",
            ">;)V"
        }
    .end annotation
.end method
