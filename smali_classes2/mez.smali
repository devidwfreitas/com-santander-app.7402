.class public Lmez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lmdt;",
        ">",
        "Ljava/lang/Object;",
        "Lmey",
        "<TItem;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 15
    check-cast p1, Lmdt;

    check-cast p3, Lmdt;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmez;->a(Lmdt;ILmdt;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lmdt;ILmdt;I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;ITItem;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lmdt;

    check-cast p2, Lmdt;

    invoke-virtual {p0, p1, p2}, Lmez;->a(Lmdt;Lmdt;)Z

    move-result v0

    return v0
.end method

.method public a(Lmdt;Lmdt;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;TItem;)Z"
        }
    .end annotation

    .prologue
    .line 18
    invoke-interface {p1}, Lmdt;->j()J

    move-result-wide v0

    invoke-interface {p2}, Lmdt;->j()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lmdt;

    check-cast p2, Lmdt;

    invoke-virtual {p0, p1, p2}, Lmez;->b(Lmdt;Lmdt;)Z

    move-result v0

    return v0
.end method

.method public b(Lmdt;Lmdt;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;TItem;)Z"
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
