.class Lemg;
.super Lemj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lemd",
        "<TK;TV;>.emj<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lemf;


# direct methods
.method constructor <init>(Lemf;)V
    .locals 1

    .prologue
    .line 566
    iput-object p1, p0, Lemg;->a:Lemf;

    iget-object v0, p1, Lemf;->a:Lemd;

    invoke-direct {p0, v0}, Lemj;-><init>(Lemd;)V

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
    .line 568
    invoke-virtual {p0}, Lemg;->b()Lemk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lemg;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
