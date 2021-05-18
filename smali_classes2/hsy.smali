.class Lhsy;
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
.field final synthetic a:Lhsw;


# direct methods
.method constructor <init>(Lhsw;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lhsy;->a:Lhsw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lhsy;->a:Lhsw;

    iget-object v0, v0, Lhsw;->b:Lhso;

    invoke-interface {v0, p2}, Lhso;->a(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lhsy;->a:Lhsw;

    invoke-virtual {v0}, Lhsw;->d()V

    .line 217
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 212
    check-cast p2, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    invoke-virtual {p0, p1, p2}, Lhsy;->a(ILcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;)V

    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lhsy;->a:Lhsw;

    iget-object v0, v0, Lhsw;->b:Lhso;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhso;->b(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    .line 222
    iget-object v0, p0, Lhsy;->a:Lhsw;

    invoke-virtual {v0}, Lhsw;->d()V

    .line 223
    return-void
.end method
