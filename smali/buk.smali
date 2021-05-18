.class public Lbuk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbuf;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->NOT_SUPPORTED:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->NOT_SUPPORTED:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->NOT_SUPPORTED:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, -0x1

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbul;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method
