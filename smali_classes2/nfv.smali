.class Lnfv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lnfu;

.field private b:I


# direct methods
.method constructor <init>(Lnfu;)V
    .locals 1

    iput-object p1, p0, Lnfv;->a:Lnfu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnfv;->b:I

    return-void
.end method


# virtual methods
.method public a()Lnfy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lnfv;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lnfv;->a:Lnfu;

    invoke-static {v0}, Lnfu;->d(Lnfu;)[Lnfy;

    move-result-object v0

    iget v1, p0, Lnfv;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnfv;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lnfv;->b:I

    iget-object v1, p0, Lnfv;->a:Lnfu;

    invoke-static {v1}, Lnfu;->d(Lnfu;)[Lnfy;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnfv;->a()Lnfy;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removal is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
