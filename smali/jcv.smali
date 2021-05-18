.class public Ljcv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "walletAuthenticateRequest"
.end annotation


# instance fields
.field private args:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private connUuid:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dadosDispositivo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataLynx:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private deviceToken:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private imei:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private requestId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private ticket:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private versao:Ljava/lang/String;
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
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ljcv;->connUuid:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Ljcv;->connUuid:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ljcv;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Ljcv;->requestId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ljcv;->args:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Ljcv;->args:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ljcv;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Ljcv;->imei:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ljcv;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Ljcv;->ticket:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ljcv;->dadosDispositivo:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Ljcv;->dadosDispositivo:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ljcv;->dataLynx:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Ljcv;->dataLynx:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ljcv;->versao:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Ljcv;->versao:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ljcv;->deviceToken:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Ljcv;->deviceToken:Ljava/lang/String;

    .line 109
    return-void
.end method
