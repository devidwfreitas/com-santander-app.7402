.class Lhsx;
.super Lhtk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhtk",
        "<",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhsw;


# direct methods
.method constructor <init>(Lhsw;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lhsx;->a:Lhsw;

    invoke-direct {p0}, Lhtk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lhsx;->a:Lhsw;

    iget-object v0, v0, Lhsw;->b:Lhso;

    invoke-interface {v0, p1}, Lhso;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    .line 199
    iget-object v0, p0, Lhsx;->a:Lhsw;

    invoke-virtual {v0}, Lhsw;->d()V

    .line 200
    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lhsx;->a:Lhsw;

    iget-object v0, v0, Lhsw;->b:Lhso;

    invoke-interface {v0, p1}, Lhso;->b(Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lhsx;->a:Lhsw;

    invoke-virtual {v0}, Lhsw;->d()V

    .line 194
    return-void
.end method

.method public bridge synthetic a(Lhxv;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    invoke-virtual {p0, p1}, Lhsx;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;)V

    return-void
.end method
