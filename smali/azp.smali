.class public Lazp;
.super Laze;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laze",
        "<",
        "Lazz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Laxz",
            "<",
            "Lazz;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1}, Laze;-><init>(Ljava/util/List;)V

    .line 11
    return-void
.end method


# virtual methods
.method synthetic a(Laxz;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1, p2}, Lazp;->b(Laxz;F)Lazz;

    move-result-object v0

    return-object v0
.end method

.method b(Laxz;F)Lazz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laxz",
            "<",
            "Lazz;",
            ">;F)",
            "Lazz;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p1, Laxz;->a:Ljava/lang/Object;

    check-cast v0, Lazz;

    return-object v0
.end method
