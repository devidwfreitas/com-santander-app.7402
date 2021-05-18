.class public abstract Lcgg;
.super Lcgo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcil",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>",
        "Lcgo",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcgo;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcgo;-><init>(Ljava/util/List;)V

    .line 26
    return-void
.end method

.method public varargs constructor <init>([Lcil;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcgo;-><init>([Lcio;)V

    .line 22
    return-void
.end method
