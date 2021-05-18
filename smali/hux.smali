.class public Lhux;
.super Lgoe;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private tipoDocumento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lgoe;-><init>()V

    .line 24
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhux;->setAgencia(Ljava/lang/String;)V

    .line 26
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhux;->setConta(Ljava/lang/String;)V

    .line 27
    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhux;->setTokenSessao(Ljava/lang/String;)V

    .line 28
    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhux;->setConnUuid(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lhux;->tipoDocumento:Ljava/lang/String;

    .line 30
    return-void
.end method
