.class Lhsu;
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
.field final synthetic a:Lhst;


# direct methods
.method constructor <init>(Lhst;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lhsu;->a:Lhst;

    invoke-direct {p0}, Lhtk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lhsu;->a:Lhst;

    iget-object v0, v0, Lhst;->f:Lhso;

    invoke-interface {v0, p1}, Lhso;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    .line 149
    iget-object v0, p0, Lhsu;->a:Lhst;

    invoke-virtual {v0}, Lhst;->d()V

    .line 150
    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lhsu;->a:Lhst;

    iget-object v0, v0, Lhst;->f:Lhso;

    invoke-interface {v0, p1}, Lhso;->b(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lhsu;->a:Lhst;

    invoke-virtual {v0}, Lhst;->d()V

    .line 144
    return-void
.end method

.method public bridge synthetic a(Lhxv;)V
    .locals 0

    .prologue
    .line 139
    check-cast p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    invoke-virtual {p0, p1}, Lhsu;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;)V

    return-void
.end method
