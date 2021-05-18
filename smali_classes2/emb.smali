.class abstract Lemb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Lemc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lemc",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lemc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lemc",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lelt;


# direct methods
.method constructor <init>(Lelt;)V
    .locals 1

    .prologue
    .line 765
    iput-object p1, p0, Lemb;->e:Lelt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iget-object v0, p0, Lemb;->e:Lelt;

    iget-object v0, v0, Lelt;->c:Lemc;

    iget-object v0, v0, Lemc;->d:Lemc;

    iput-object v0, p0, Lemb;->b:Lemc;

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lemb;->c:Lemc;

    .line 763
    iget-object v0, p0, Lemb;->e:Lelt;

    iget v0, v0, Lelt;->e:I

    iput v0, p0, Lemb;->d:I

    .line 766
    return-void
.end method


# virtual methods
.method final b()Lemc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lemc",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 773
    iget-object v0, p0, Lemb;->b:Lemc;

    .line 774
    iget-object v1, p0, Lemb;->e:Lelt;

    iget-object v1, v1, Lelt;->c:Lemc;

    if-ne v0, v1, :cond_0

    .line 775
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 777
    :cond_0
    iget-object v1, p0, Lemb;->e:Lelt;

    iget v1, v1, Lelt;->e:I

    iget v2, p0, Lemb;->d:I

    if-eq v1, v2, :cond_1

    .line 778
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 780
    :cond_1
    iget-object v1, v0, Lemc;->d:Lemc;

    iput-object v1, p0, Lemb;->b:Lemc;

    .line 781
    iput-object v0, p0, Lemb;->c:Lemc;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lemb;->b:Lemc;

    iget-object v1, p0, Lemb;->e:Lelt;

    iget-object v1, v1, Lelt;->c:Lemc;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 785
    iget-object v0, p0, Lemb;->c:Lemc;

    if-nez v0, :cond_0

    .line 786
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 788
    :cond_0
    iget-object v0, p0, Lemb;->e:Lelt;

    iget-object v1, p0, Lemb;->c:Lemc;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lelt;->a(Lemc;Z)V

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Lemb;->c:Lemc;

    .line 790
    iget-object v0, p0, Lemb;->e:Lelt;

    iget v0, v0, Lelt;->e:I

    iput v0, p0, Lemb;->d:I

    .line 791
    return-void
.end method
