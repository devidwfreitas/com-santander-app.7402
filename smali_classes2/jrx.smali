.class public Ljrx;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljrv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v0, Ljrv;

    const v1, 0x7f0909d5

    const v2, 0x7f0909d2

    const v3, 0x7f0205b2

    invoke-direct {v0, v1, v2, v3}, Ljrv;-><init>(III)V

    invoke-virtual {p0, v0}, Ljrx;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Ljrv;

    const v1, 0x7f0909d6

    const v2, 0x7f0909d3

    const v3, 0x7f0205b3

    invoke-direct {v0, v1, v2, v3}, Ljrv;-><init>(III)V

    invoke-virtual {p0, v0}, Ljrx;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v0, Ljrv;

    const/4 v1, 0x0

    const v2, 0x7f0909d4

    const v3, 0x7f0205b4

    invoke-direct {v0, v1, v2, v3}, Ljrv;-><init>(III)V

    invoke-virtual {p0, v0}, Ljrx;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method
