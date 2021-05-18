.class Lhqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lhqb;

.field final synthetic b:Lhqd;


# direct methods
.method constructor <init>(Lhqd;Lhqb;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lhqe;->b:Lhqd;

    iput-object p2, p0, Lhqe;->a:Lhqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 70
    check-cast p1, Lis;

    .line 72
    if-eqz p1, :cond_4

    .line 74
    :try_start_0
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lhqe;->a:Lhqb;

    invoke-interface {v0}, Lhqb;->a()V

    .line 104
    :goto_1
    return-void

    .line 75
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 76
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 83
    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;->isEligivel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lhqe;->b:Lhqd;

    invoke-virtual {v1, v0}, Lhqd;->a(Lhxq;)V

    .line 85
    iget-object v1, p0, Lhqe;->a:Lhqb;

    invoke-interface {v1, v0}, Lhqb;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)V

    goto :goto_1

    .line 87
    :cond_1
    iget-object v0, p0, Lhqe;->a:Lhqb;

    invoke-interface {v0}, Lhqb;->a()V

    goto :goto_1

    .line 90
    :cond_2
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1a4

    if-eq v0, v1, :cond_3

    .line 91
    iget-object v0, p0, Lhqe;->a:Lhqb;

    invoke-interface {v0}, Lhqb;->a()V

    goto :goto_1

    .line 94
    :cond_3
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v2, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;

    invoke-direct {v2, v1, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 98
    :catch_1
    move-exception v0

    .line 99
    const-string v1, "ConsignadoInteractor"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
