.class final Leor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lekp;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lejm;Lepn;)Lekn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lejm;",
            "Lepn",
            "<TT;>;)",
            "Lekn",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 591
    invoke-virtual {p2}, Lepn;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    .line 592
    const/4 v0, 0x0

    .line 596
    :goto_0
    return-object v0

    .line 595
    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lejm;->a(Ljava/lang/Class;)Lekn;

    move-result-object v1

    .line 596
    new-instance v0, Leos;

    invoke-direct {v0, p0, v1}, Leos;-><init>(Leor;Lekn;)V

    goto :goto_0
.end method
