.class final Lemh;
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
.field final synthetic a:Lemd;


# direct methods
.method constructor <init>(Lemd;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lemh;->a:Lemd;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lemh;->a:Lemd;

    invoke-virtual {v0}, Lemd;->clear()V

    .line 618
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lemh;->a:Lemd;

    invoke-virtual {v0, p1}, Lemd;->containsKey(Ljava/lang/Object;)Z

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
    .line 601
    new-instance v0, Lemi;

    invoke-direct {v0, p0}, Lemi;-><init>(Lemh;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lemh;->a:Lemd;

    invoke-virtual {v0, p1}, Lemd;->b(Ljava/lang/Object;)Lemk;

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
    .line 597
    iget-object v0, p0, Lemh;->a:Lemd;

    iget v0, v0, Lemd;->c:I

    return v0
.end method
