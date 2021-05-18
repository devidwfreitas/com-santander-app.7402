.class final Lelx;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lelt;


# direct methods
.method constructor <init>(Lelt;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Lelx;->a:Lelt;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lelx;->a:Lelt;

    invoke-virtual {v0}, Lelt;->clear()V

    .line 826
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 808
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lelx;->a:Lelt;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lelt;->a(Ljava/util/Map$Entry;)Lemc;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 800
    new-instance v0, Lely;

    invoke-direct {v0, p0}, Lely;-><init>(Lelx;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 812
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    .line 821
    :cond_0
    :goto_0
    return v0

    .line 816
    :cond_1
    iget-object v2, p0, Lelx;->a:Lelt;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v2, p1}, Lelt;->a(Ljava/util/Map$Entry;)Lemc;

    move-result-object v2

    .line 817
    if-eqz v2, :cond_0

    .line 820
    iget-object v0, p0, Lelx;->a:Lelt;

    invoke-virtual {v0, v2, v1}, Lelt;->a(Lemc;Z)V

    move v0, v1

    .line 821
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lelx;->a:Lelt;

    iget v0, v0, Lelt;->d:I

    return v0
.end method
