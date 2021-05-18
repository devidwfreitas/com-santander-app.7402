.class public Lcgm;
.super Lcgg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcgg",
        "<",
        "Lcin;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcgg;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcgg;-><init>(Ljava/util/List;)V

    .line 15
    return-void
.end method

.method public varargs constructor <init>([Lcin;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcgg;-><init>([Lcil;)V

    .line 19
    return-void
.end method
