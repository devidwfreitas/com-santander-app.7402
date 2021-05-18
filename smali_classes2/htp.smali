.class public interface abstract Lhtp;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;Lhtm;)V
    .param p2    # Lhtm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;",
            "Lhtm",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContractRequest;Lhtm;)V
    .param p2    # Lhtm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContractRequest;",
            "Lhtm",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Lgkw;)V
    .param p1    # Lgkw;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Lhtm;)V
    .param p1    # Lhtm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhtm",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Lorg/json/JSONObject;Lhtm;)V
    .param p2    # Lhtm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lhtm",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;",
            ">;)V"
        }
    .end annotation
.end method
