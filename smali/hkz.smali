.class public Lhkz;
.super Lgoe;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private codigoContratoUG:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoEvento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoNIO:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoOficina:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataOperacao:Ljava/lang/String;
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
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lgoe;-><init>()V

    .line 41
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhkz;->setConnUuid(Ljava/lang/String;)V

    .line 43
    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhkz;->setTokenSessao(Ljava/lang/String;)V

    .line 44
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhkz;->setTokenTransacao(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lhxl;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lhkz;-><init>()V

    .line 50
    check-cast p1, Lhlb;

    .line 52
    iget-object v0, p1, Lhlb;->codigoContrato:Ljava/lang/String;

    iput-object v0, p0, Lhkz;->codigoContratoUG:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lhlb;->codigoEvento:Ljava/lang/String;

    iput-object v0, p0, Lhkz;->codigoEvento:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lhlb;->codigoNIO:Ljava/lang/String;

    iput-object v0, p0, Lhkz;->codigoNIO:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lhlb;->codigoOficina:Ljava/lang/String;

    iput-object v0, p0, Lhkz;->codigoOficina:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lhlb;->dataOperacao:Ljava/lang/String;

    iput-object v0, p0, Lhkz;->dataOperacao:Ljava/lang/String;

    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 59
    const-string v1, "dd.MM.yyyy"

    invoke-static {v1}, Lhyx;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhkz;->dataSolicitacao:Ljava/lang/String;

    .line 61
    const-string v1, "HH:mm:ss"

    invoke-static {v1}, Lhyx;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhkz;->horaSolicitacao:Ljava/lang/String;

    .line 63
    return-void
.end method
