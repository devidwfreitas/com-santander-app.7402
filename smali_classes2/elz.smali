.class final Lelz;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lelt;


# direct methods
.method constructor <init>(Lelt;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lelz;->a:Lelt;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lelz;->a:Lelt;

    invoke-virtual {v0}, Lelt;->clear()V

    .line 852
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lelz;->a:Lelt;

    invoke-virtual {v0, p1}, Lelt;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 835
    new-instance v0, Lema;

    invoke-direct {v0, p0}, Lema;-><init>(Lelz;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lelz;->a:Lelt;

    invoke-virtual {v0, p1}, Lelt;->b(Ljava/lang/Object;)Lemc;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lelz;->a:Lelt;

    iget v0, v0, Lelt;->d:I

    return v0
.end method
