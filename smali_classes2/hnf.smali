.class Lhnf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lhnb;

.field final synthetic b:Lhnc;


# direct methods
.method constructor <init>(Lhnc;Lhnb;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lhnf;->b:Lhnc;

    iput-object p2, p0, Lhnf;->a:Lhnb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 125
    const-string v1, "CancelamentoRepository"

    const-string v2, "consultarContratoResumo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    iget-object v0, p0, Lhnf;->a:Lhnb;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhnb;->b(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultaTermosContratoCSG;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultaTermosContratoCSG;

    .line 118
    iget-object v1, p0, Lhnf;->a:Lhnb;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsultaTermosContratoCSG;->getContractTerms()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lhnb;->a(Ljava/lang/String;)V

    .line 119
    return-void
.end method
