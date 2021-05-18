.class public Lkmt;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lkmt;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Land;)V
    .locals 0

    .prologue
    .line 105
    check-cast p1, Lgmx;

    invoke-virtual {p0, p1}, Lkmt;->a(Lgmx;)V

    return-void
.end method

.method public a(Lgmx;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lkmt;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {p1}, Lgmx;->f()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->a(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;

    .line 109
    iget-object v0, p0, Lkmt;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->b(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;)Lklu;

    move-result-object v0

    iget-object v1, p0, Lkmt;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->a(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklu;->b(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lkmt;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->b(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;)Lklu;

    move-result-object v0

    iget-object v1, p0, Lkmt;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->a(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklu;->c(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lkmt;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->c(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;)Lkng;

    move-result-object v0

    iget-object v1, p0, Lkmt;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-virtual {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->e()Lklu;

    move-result-object v1

    invoke-interface {v0, v1}, Lkng;->a(Lklu;)V

    .line 113
    return-void
.end method
