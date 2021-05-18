.class public Lkhu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


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

.field private tipoConta:Ljava/lang/String;
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
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lkhu;->agencia:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lkhu;->connUuid:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lkhu;->conta:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lkhu;->tipoConta:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lkhu;->tokenSessao:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lkhu;->tokenTransacao:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lkhu;->agencia:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lkhu;->connUuid:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lkhu;->conta:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lkhu;->tipoConta:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lkhu;->tokenSessao:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lkhu;->tokenTransacao:Ljava/lang/String;

    .line 52
    return-void
.end method
