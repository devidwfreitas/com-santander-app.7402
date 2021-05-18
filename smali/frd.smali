.class public Lfrd;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
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
    invoke-direct {p0}, Lfvu;-><init>()V

    return-void
.end method


# virtual methods
.method public ap(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lfrd;->codErro:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public aq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lfrd;->codErro:Ljava/lang/String;

    return-object v0
.end method

.method public aq(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lfrd;->confirmacao:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public ar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lfrd;->confirmacao:Ljava/lang/String;

    return-object v0
.end method

.method public ar(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lfrd;->dataHash:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public as()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lfrd;->dataHash:Ljava/lang/String;

    return-object v0
.end method

.method public as(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lfrd;->requestId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public at()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lfrd;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public at(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lfrd;->tokenTransacao:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public au()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lfrd;->tokenTransacao:Ljava/lang/String;

    return-object v0
.end method
