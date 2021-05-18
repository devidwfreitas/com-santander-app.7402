.class public Ljry;
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

    .line 17
    new-instance v0, Ljrv;

    const v1, 0x7f0909db

    const v2, 0x7f0909d9

    const v3, 0x7f0205b6

    invoke-direct {v0, v1, v2, v3}, Ljrv;-><init>(III)V

    invoke-virtual {p0, v0}, Ljry;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v0, Ljrv;

    const v1, 0x7f0909dc

    const v2, 0x7f0909da

    const v3, 0x7f0205b7

    invoke-direct {v0, v1, v2, v3}, Ljrv;-><init>(III)V

    invoke-virtual {p0, v0}, Ljry;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method
