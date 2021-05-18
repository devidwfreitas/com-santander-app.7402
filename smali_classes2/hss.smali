.class Lhss;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lhsq;


# direct methods
.method constructor <init>(Lhsq;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lhss;->a:Lhsq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 89
    check-cast p1, Lis;

    .line 92
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

    .line 96
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 97
    iget-object v1, p0, Lhss;->a:Lhsq;

    iget-object v1, v1, Lhsq;->b:Lhso;

    invoke-interface {v1, v0}, Lhso;->a(Ljava/lang/Object;)V

    .line 111
    :goto_1
    iget-object v0, p0, Lhss;->a:Lhsq;

    invoke-virtual {v0}, Lhsq;->d()V

    .line 112
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v2, "CPConsigRepositoryImpl"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    .line 101
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    const-string v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    new-instance v0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;

    invoke-direct {v0, v2, v3}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :goto_2
    iget-object v1, p0, Lhss;->a:Lhsq;

    iget-object v1, v1, Lhsq;->b:Lhso;

    invoke-interface {v1, v0}, Lhso;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    goto :goto_1

    .line 106
    :catch_1
    move-exception v0

    .line 107
    const-string v2, "CPConsigRepositoryImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_2
.end method
