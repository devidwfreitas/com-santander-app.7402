.class public Lhlc;
.super Lgoe;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lgoe;-><init>()V

    .line 21
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhlc;->setConnUuid(Ljava/lang/String;)V

    .line 23
    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhlc;->setTokenSessao(Ljava/lang/String;)V

    .line 24
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhlc;->setTokenTransacao(Ljava/lang/String;)V

    .line 25
    return-void
.end method
