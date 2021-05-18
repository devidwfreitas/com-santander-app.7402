.class Lhyp;
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
    .line 18
    invoke-direct {p0}, Lgoe;-><init>()V

    .line 19
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 20
    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhyp;->setTokenSessao(Ljava/lang/String;)V

    .line 21
    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhyp;->setConnUuid(Ljava/lang/String;)V

    .line 22
    return-void
.end method
