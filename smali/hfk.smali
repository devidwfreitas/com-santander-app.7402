.class public Lhfk;
.super Lgoe;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private dataPrimeiraParcela:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private diaAniversarioPagamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private formaPagamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroProposta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private quantidadeParcelas:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorDividaTotal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lgoe;-><init>()V

    .line 60
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhfk;->setTokenSessao(Ljava/lang/String;)V

    .line 62
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhfk;->setTokenTransacao(Ljava/lang/String;)V

    .line 63
    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhfk;->setConnUuid(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/santander/app/contacorrente/domain/Conta;Lhfx;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1    # Lcom/santander/app/contacorrente/domain/Conta;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Lhfr;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0}, Lhfk;-><init>()V

    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhfk;->setAgencia(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhfk;->setConta(Ljava/lang/String;)V

    .line 45
    :cond_0
    invoke-interface {p2}, Lhfx;->F()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhfk;->dataPrimeiraParcela:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lhfk;->diaAniversarioPagamento:Ljava/lang/String;

    .line 47
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhfk;->formaPagamento:Ljava/lang/String;

    .line 48
    invoke-interface {p2}, Lhfx;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhfk;->numeroProposta:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lhfk;->quantidadeParcelas:Ljava/lang/String;

    .line 50
    invoke-interface {p2}, Lhfx;->b()Lhfz;

    move-result-object v0

    invoke-interface {v0}, Lhfz;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhfk;->valorDividaTotal:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lhfk;-><init>()V

    .line 55
    iput-object p1, p0, Lhfk;->numeroProposta:Ljava/lang/String;

    .line 56
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhfk;->formaPagamento:Ljava/lang/String;

    .line 57
    return-void
.end method
