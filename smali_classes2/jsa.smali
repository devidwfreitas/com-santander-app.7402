.class public Ljsa;
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

    const v1, 0x7f0909e0

    const v2, 0x7f0909dd

    const v3, 0x7f0205b8

    invoke-direct {v0, v1, v2, v3}, Ljrv;-><init>(III)V

    invoke-virtual {p0, v0}, Ljsa;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v0, Ljrv;

    const v1, 0x7f0909e1

    const v2, 0x7f0909de

    const v3, 0x7f0205b9

    invoke-direct {v0, v1, v2, v3}, Ljrv;-><init>(III)V

    invoke-virtual {p0, v0}, Ljsa;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v0, Ljrv;

    const/4 v1, 0x0

    const v2, 0x7f0909df

    const v3, 0x7f0205ba

    invoke-direct {v0, v1, v2, v3}, Ljrv;-><init>(III)V

    invoke-virtual {p0, v0}, Ljsa;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method
