.class public Lhul;
.super Lgoe;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private codigoRenegociacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contratacaoComSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private diaDoVencimentoMensal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private identificacaoProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private quantidadeMaximaParcelas:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private quantidadeMinimaParcelas:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private quantidadeParcelas:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorCoberturaComSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorLimiteRisco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTotalDivida:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIZLhus;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lgoe;-><init>()V

    .line 52
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhul;->setTokenSessao(Ljava/lang/String;)V

    .line 54
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhul;->setTokenTransacao(Ljava/lang/String;)V

    .line 55
    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhul;->setConnUuid(Ljava/lang/String;)V

    .line 56
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhul;->setConta(Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhul;->diaDoVencimentoMensal:Ljava/lang/String;

    .line 59
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhul;->quantidadeParcelas:Ljava/lang/String;

    .line 60
    if-eqz p3, :cond_0

    const-string v0, "S"

    :goto_0
    iput-object v0, p0, Lhul;->contratacaoComSeguro:Ljava/lang/String;

    .line 62
    iget-object v0, p4, Lhus;->identificacaoProduto:Ljava/lang/String;

    iput-object v0, p0, Lhul;->identificacaoProduto:Ljava/lang/String;

    .line 63
    iget-object v0, p4, Lhus;->codigoRenegociacao:Ljava/lang/String;

    iput-object v0, p0, Lhul;->codigoRenegociacao:Ljava/lang/String;

    .line 64
    iget-object v0, p4, Lhus;->quantidadeMaximaParcelas:Ljava/lang/String;

    iput-object v0, p0, Lhul;->quantidadeMaximaParcelas:Ljava/lang/String;

    .line 65
    iget-object v0, p4, Lhus;->quantidadeMinimaParcelas:Ljava/lang/String;

    iput-object v0, p0, Lhul;->quantidadeMinimaParcelas:Ljava/lang/String;

    .line 66
    iget-object v0, p4, Lhus;->valorCoberturaComSeguro:Ljava/lang/String;

    iput-object v0, p0, Lhul;->valorCoberturaComSeguro:Ljava/lang/String;

    .line 67
    iget-object v0, p4, Lhus;->valorLimiteRisco:Ljava/lang/String;

    iput-object v0, p0, Lhul;->valorLimiteRisco:Ljava/lang/String;

    .line 68
    iget-object v0, p4, Lhus;->valorTotalDivida:Ljava/lang/String;

    iput-object v0, p0, Lhul;->valorTotalDivida:Ljava/lang/String;

    .line 69
    return-void

    .line 60
    :cond_0
    const-string v0, "N"

    goto :goto_0
.end method
