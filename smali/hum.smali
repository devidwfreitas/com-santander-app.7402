.class public Lhum;
.super Lgoe;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lgoe;-><init>()V

    .line 20
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhum;->setTokenSessao(Ljava/lang/String;)V

    .line 22
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhum;->setTokenTransacao(Ljava/lang/String;)V

    .line 23
    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhum;->setConnUuid(Ljava/lang/String;)V

    .line 24
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhum;->setConta(Ljava/lang/String;)V

    .line 25
    return-void
.end method
