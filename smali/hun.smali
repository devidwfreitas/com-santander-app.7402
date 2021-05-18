.class public Lhun;
.super Lgoe;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field protected codigoRenegociacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected identificacaoProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected objSerial:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhus;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lgoe;-><init>()V

    .line 28
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhun;->setTokenSessao(Ljava/lang/String;)V

    .line 30
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhun;->setTokenTransacao(Ljava/lang/String;)V

    .line 31
    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhun;->setConnUuid(Ljava/lang/String;)V

    .line 32
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhun;->setAgencia(Ljava/lang/String;)V

    .line 33
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhun;->setConta(Ljava/lang/String;)V

    .line 35
    iget-object v0, p1, Lhus;->codigoRenegociacao:Ljava/lang/String;

    iput-object v0, p0, Lhun;->codigoRenegociacao:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lhus;->identificacaoProduto:Ljava/lang/String;

    iput-object v0, p0, Lhun;->identificacaoProduto:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lhus;->objSerial:Ljava/lang/String;

    iput-object v0, p0, Lhun;->objSerial:Ljava/lang/String;

    .line 38
    return-void
.end method
