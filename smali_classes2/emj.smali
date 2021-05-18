.class abstract Lemj;
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
.field b:Lemk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lemk",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lemk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lemk",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lemd;


# direct methods
.method constructor <init>(Lemd;)V
    .locals 1

    .prologue
    .line 531
    iput-object p1, p0, Lemj;->e:Lemd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iget-object v0, p0, Lemj;->e:Lemd;

    iget-object v0, v0, Lemd;->e:Lemk;

    iget-object v0, v0, Lemk;->d:Lemk;

    iput-object v0, p0, Lemj;->b:Lemk;

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lemj;->c:Lemk;

    .line 529
    iget-object v0, p0, Lemj;->e:Lemd;

    iget v0, v0, Lemd;->d:I

    iput v0, p0, Lemj;->d:I

    .line 532
    return-void
.end method


# virtual methods
.method final b()Lemk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lemk",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lemj;->b:Lemk;

    .line 540
    iget-object v1, p0, Lemj;->e:Lemd;

    iget-object v1, v1, Lemd;->e:Lemk;

    if-ne v0, v1, :cond_0

    .line 541
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 543
    :cond_0
    iget-object v1, p0, Lemj;->e:Lemd;

    iget v1, v1, Lemd;->d:I

    iget v2, p0, Lemj;->d:I

    if-eq v1, v2, :cond_1

    .line 544
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 546
    :cond_1
    iget-object v1, v0, Lemk;->d:Lemk;

    iput-object v1, p0, Lemj;->b:Lemk;

    .line 547
    iput-object v0, p0, Lemj;->c:Lemk;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lemj;->b:Lemk;

    iget-object v1, p0, Lemj;->e:Lemd;

    iget-object v1, v1, Lemd;->e:Lemk;

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
    .line 551
    iget-object v0, p0, Lemj;->c:Lemk;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 554
    :cond_0
    iget-object v0, p0, Lemj;->e:Lemd;

    iget-object v1, p0, Lemj;->c:Lemk;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lemd;->a(Lemk;Z)V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lemj;->c:Lemk;

    .line 556
    iget-object v0, p0, Lemj;->e:Lemd;

    iget v0, v0, Lemd;->d:I

    iput v0, p0, Lemj;->d:I

    .line 557
    return-void
.end method
