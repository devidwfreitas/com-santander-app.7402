.class Lhqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhtm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhtm",
        "<",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhqc;

.field final synthetic b:Lhqd;


# direct methods
.method constructor <init>(Lhqd;Lhqc;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lhqf;->b:Lhqd;

    iput-object p2, p0, Lhqf;->a:Lhqc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)V
    .locals 1

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lhqf;->b:Lhqd;

    invoke-static {v0, p2}, Lhqd;->a(Lhqd;Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)V

    .line 129
    iget-object v0, p0, Lhqf;->a:Lhqc;

    invoke-interface {v0}, Lhqc;->a()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    iget-object v0, p0, Lhqf;->a:Lhqc;

    invoke-interface {v0}, Lhqc;->b()V

    goto :goto_0
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 124
    check-cast p2, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {p0, p1, p2}, Lhqf;->a(ILcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)V

    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lhqf;->a:Lhqc;

    invoke-interface {v0}, Lhqc;->b()V

    .line 138
    return-void
.end method
