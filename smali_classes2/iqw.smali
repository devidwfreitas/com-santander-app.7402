.class public Liqw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgla;


# instance fields
.field final synthetic a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Liqw;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 457
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getSaldoTotalPoupanca()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "0"

    .line 458
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getSaldoTotalPoupanca()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    :cond_0
    iget-object v0, p0, Liqw;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lirc;

    move-result-object v0

    sget-object v1, Lipp;->POUPANCA_CARROSSEL_SELECTED:Lipp;

    invoke-interface {v0, v1}, Lirc;->b(Lipp;)V

    .line 462
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Liqw;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-virtual {v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->ab()V

    goto :goto_0
.end method
