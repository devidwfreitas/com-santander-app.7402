.class public Lbbm;
.super Lbby;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbby",
        "<",
        "Lazz;",
        "Lazz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;Lazz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxz",
            "<",
            "Lazz;",
            ">;>;",
            "Lazz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lbby;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 16
    return-void
.end method


# virtual methods
.method public synthetic a()Layy;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lbbm;->d()Lazp;

    move-result-object v0

    return-object v0
.end method

.method public d()Lazp;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lazp;

    iget-object v1, p0, Lbbm;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lazp;-><init>(Ljava/util/List;)V

    return-object v0
.end method
