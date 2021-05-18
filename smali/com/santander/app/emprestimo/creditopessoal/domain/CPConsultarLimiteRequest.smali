.class public Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteRequest;
.super Lgoe;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private codigoAgencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataSolicitacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private horaSolicitacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Lgoe;-><init>()V

    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 34
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    .line 35
    new-instance v2, Lnaf;

    invoke-direct {v2}, Lnaf;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteRequest;->codigoAgencia:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteRequest;->setConta(Ljava/lang/String;)V

    .line 40
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd.MM.yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteRequest;->dataSolicitacao:Ljava/lang/String;

    .line 41
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "hh:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteRequest;->horaSolicitacao:Ljava/lang/String;

    .line 43
    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteRequest;->setConnUuid(Ljava/lang/String;)V

    .line 44
    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteRequest;->setTokenSessao(Ljava/lang/String;)V

    .line 45
    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteRequest;->setTokenTransacao(Ljava/lang/String;)V

    .line 46
    return-void
.end method
