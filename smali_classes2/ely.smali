.class Lely;
.super Lemb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lelt",
        "<TK;TV;>.emb<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lelx;


# direct methods
.method constructor <init>(Lelx;)V
    .locals 1

    .prologue
    .line 800
    iput-object p1, p0, Lely;->a:Lelx;

    iget-object v0, p1, Lelx;->a:Lelt;

    invoke-direct {p0, v0}, Lemb;-><init>(Lelt;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 802
    invoke-virtual {p0}, Lely;->b()Lemc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 800
    invoke-virtual {p0}, Lely;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
