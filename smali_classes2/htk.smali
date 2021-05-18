.class public abstract Lhtk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lhxv;",
        ">",
        "Ljava/lang/Object;",
        "Lgkv",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
.end method

.method public abstract a(Lhxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lhxv;

    invoke-virtual {p0, p1}, Lhtk;->b(Lhxv;)V

    return-void
.end method

.method public b(Lhxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 24
    :try_start_0
    invoke-interface {p1}, Lhxv;->getCodigoRetorno()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Lhtk;->a(Lhxv;)V

    .line 33
    :goto_0
    return-void

    .line 27
    :cond_0
    new-instance v0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;

    invoke-direct {v0, p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;-><init>(Lhxv;)V

    .line 28
    invoke-virtual {p0, v0}, Lhtk;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lhtk;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    goto :goto_0
.end method
