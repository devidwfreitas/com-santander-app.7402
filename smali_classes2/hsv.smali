.class Lhsv;
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
        "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhst;


# direct methods
.method constructor <init>(Lhst;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lhsv;->a:Lhst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lhsv;->a:Lhst;

    iget-object v0, v0, Lhst;->f:Lhso;

    invoke-interface {v0, p2}, Lhso;->a(Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lhsv;->a:Lhst;

    invoke-virtual {v0}, Lhst;->d()V

    .line 162
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 157
    check-cast p2, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    invoke-virtual {p0, p1, p2}, Lhsv;->a(ILcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;)V

    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lhsv;->a:Lhst;

    iget-object v0, v0, Lhst;->f:Lhso;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhso;->b(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    .line 167
    iget-object v0, p0, Lhsv;->a:Lhst;

    invoke-virtual {v0}, Lhst;->d()V

    .line 168
    return-void
.end method
