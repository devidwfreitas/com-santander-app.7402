.class public Lhzp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkz;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "servico"
.end annotation


# instance fields
.field private codigoServico:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeExibicao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private ordem:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lhzp;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lhzp;->codigoServico:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lhzp;->codigoServico:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lhzp;->nomeExibicao:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lhzp;->nomeExibicao:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lhzp;->ordem:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lhzp;->ordem:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lhzp;->nomeExibicao:Ljava/lang/String;

    return-object v0
.end method
