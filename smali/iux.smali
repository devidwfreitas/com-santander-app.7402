.class public Liux;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private codigoRetorno:Ljava/lang/Integer;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private mensagemRetorno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Liux;->codigoRetorno:Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Liux;->codigoRetorno:Ljava/lang/Integer;

    .line 30
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Liux;->mensagemRetorno:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Liux;->mensagemRetorno:Ljava/lang/String;

    return-object v0
.end method
