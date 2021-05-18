.class public Lcgt;
.super Lcgg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcgg",
        "<",
        "Lcip;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcgg;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcgg;-><init>(Ljava/util/List;)V

    .line 25
    return-void
.end method

.method public varargs constructor <init>([Lcip;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcgg;-><init>([Lcil;)V

    .line 21
    return-void
.end method
