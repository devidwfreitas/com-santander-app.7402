.class public Lmky;
.super Lgoe;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private codigoAgencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoBanco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contaCorrente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lgoe;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmky;->contaCorrente:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lmky;->contaCorrente:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmky;->codigoAgencia:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lmky;->codigoAgencia:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lmky;->codigoBanco:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lmky;->codigoBanco:Ljava/lang/String;

    .line 49
    return-void
.end method
