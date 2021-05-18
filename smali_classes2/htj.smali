.class public Lhtj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhti;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteRequest;Lhtk;)V
    .locals 4
    .param p2    # Lhtk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteRequest;",
            "Lhtk",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lhtv;

    invoke-direct {v0, p2}, Lhtv;-><init>(Lgkv;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteRequest;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lhtv;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 26
    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;Lhtk;)V
    .locals 4
    .param p2    # Lhtk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;",
            "Lhtk",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lhtx;

    invoke-direct {v0, p2}, Lhtx;-><init>(Lgkv;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lhtx;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32
    return-void
.end method
