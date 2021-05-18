.class public Lgnb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private autenticacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codErro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private confirmacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataHash:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataHoraTransacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private faultcode:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private faultstring:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private mensagemErro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private msgErro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private requestId:Ljava/lang/String;
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
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutenticacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lgnb;->autenticacao:Ljava/lang/String;

    return-object v0
.end method

.method public getCodErro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lgnb;->codErro:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lgnb;->confirmacao:Ljava/lang/String;

    return-object v0
.end method

.method public getDataHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgnb;->dataHash:Ljava/lang/String;

    return-object v0
.end method

.method public getDataHoraTransacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lgnb;->dataHoraTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public getFaultcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lgnb;->faultcode:Ljava/lang/String;

    return-object v0
.end method

.method public getFaultstring()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lgnb;->faultstring:Ljava/lang/String;

    return-object v0
.end method

.method public getMensagemErro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lgnb;->mensagemErro:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgErro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lgnb;->msgErro:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lgnb;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenTransacao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lgnb;->tokenTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public setAutenticacao(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lgnb;->autenticacao:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setCodErro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lgnb;->codErro:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setConfirmacao(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lgnb;->confirmacao:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setDataHash(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lgnb;->dataHash:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setDataHoraTransacao(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lgnb;->dataHoraTransacao:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setFaultcode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lgnb;->faultcode:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setFaultstring(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lgnb;->faultstring:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setMensagemErro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lgnb;->mensagemErro:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setMsgErro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lgnb;->msgErro:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lgnb;->requestId:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setTokenTransacao(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lgnb;->tokenTransacao:Ljava/lang/String;

    .line 97
    return-void
.end method
