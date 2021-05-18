.class public Lgoe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private agencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private connUuid:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private conta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tokenSessao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tokenTransacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgencia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lgoe;->agencia:Ljava/lang/String;

    return-object v0
.end method

.method public getConnUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lgoe;->connUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getConta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lgoe;->conta:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenSessao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lgoe;->tokenSessao:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenTransacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lgoe;->tokenTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public setAgencia(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lgoe;->agencia:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setConnUuid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lgoe;->connUuid:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setConta(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lgoe;->conta:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTokenSessao(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lgoe;->tokenSessao:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setTokenTransacao(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lgoe;->tokenTransacao:Ljava/lang/String;

    .line 64
    return-void
.end method
