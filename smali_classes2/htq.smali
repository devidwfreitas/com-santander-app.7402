.class public Lhtq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhtp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;Lhtm;)V
    .locals 5
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

    .prologue
    .line 86
    const-string v0, "payroll-loans/v1/calculate"

    .line 89
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v2

    invoke-virtual {v2, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v1, v4}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 95
    new-instance v1, Lhtt;

    invoke-direct {v1, p0, v0, p2}, Lhtt;-><init>(Lhtq;Lir;Lhtm;)V

    .line 106
    invoke-virtual {v1}, Lhtt;->a()V

    .line 107
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lhtm;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    goto :goto_0
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContractRequest;Lhtm;)V
    .locals 6
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

    .prologue
    .line 111
    const-string v1, "payroll-loans/v1/"

    .line 115
    :try_start_0
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->m()Lorg/json/JSONObject;

    move-result-object v3

    .line 116
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v2, Lim;->POST:Lim;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 122
    new-instance v1, Lhtu;

    invoke-direct {v1, p0, v0, p2}, Lhtu;-><init>(Lhtq;Lir;Lhtm;)V

    .line 134
    invoke-virtual {v1}, Lhtu;->a()V

    .line 135
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lhtm;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    goto :goto_0
.end method

.method public a(Lgkw;)V
    .locals 4
    .param p1    # Lgkw;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    const-string v0, "payroll-loans/v1/limit"

    .line 53
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v1

    sget-object v2, Lim;->GET:Lim;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lgnp;->a(Ljava/lang/String;Lim;Z)Lir;

    move-result-object v0

    .line 54
    new-instance v1, Lgnv;

    invoke-direct {v1, p1, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 56
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 59
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lhtm;)V
    .locals 4
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

    .prologue
    .line 35
    const-string v0, "payroll-loans/v1/limit"

    .line 36
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v1

    sget-object v2, Lim;->GET:Lim;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lgnp;->a(Ljava/lang/String;Lim;Z)Lir;

    move-result-object v0

    .line 37
    new-instance v1, Lhtr;

    invoke-direct {v1, p0, v0, p1}, Lhtr;-><init>(Lhtq;Lir;Lhtm;)V

    .line 47
    invoke-virtual {v1}, Lhtr;->a()V

    .line 48
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lhtm;)V
    .locals 4
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

    .prologue
    .line 69
    const-string v0, "payroll-loans/v1/limit/required-data"

    .line 70
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, p1, v3}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 71
    new-instance v1, Lhts;

    invoke-direct {v1, p0, v0, p2}, Lhts;-><init>(Lhtq;Lir;Lhtm;)V

    .line 81
    invoke-virtual {v1}, Lhts;->a()V

    .line 82
    return-void
.end method
