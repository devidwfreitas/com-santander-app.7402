.class Lgwg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lgwc;

.field final synthetic b:Lgwe;


# direct methods
.method constructor <init>(Lgwe;Lgwc;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lgwg;->b:Lgwe;

    iput-object p2, p0, Lgwg;->a:Lgwc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 3

    .prologue
    .line 114
    const-string v0, "SaldoRepository"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consultarSaldoDetalhado\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lgwg;->a:Lgwc;

    new-instance v1, Ljxa;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxa;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lgwc;->b(Lcom/santander/app/contacorrente/domain/SaldoDetalhado;)V

    .line 116
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 3

    .prologue
    .line 106
    const-string v0, "SaldoRepository"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consultarSaldoDetalhado\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v1

    const-class v2, Lcom/santander/app/contacorrente/domain/SaldoDetalhadoResponse;

    invoke-virtual {v1, v0, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    .line 109
    iget-object v1, p0, Lgwg;->a:Lgwc;

    invoke-interface {v1, v0}, Lgwc;->a(Lcom/santander/app/contacorrente/domain/SaldoDetalhado;)V

    .line 110
    return-void
.end method
