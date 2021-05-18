.class public Lftc;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lftb;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v0}, Lftc;->a(Ljava/util/Vector;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lftl;)Lftb;
    .locals 4

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lftc;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lftc;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 71
    iget-object v0, p0, Lftc;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftb;

    invoke-virtual {v0}, Lftb;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 72
    iget-object v0, p0, Lftc;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftb;

    .line 70
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 76
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public a()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lftb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lftc;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lftc;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lftb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lftc;->b:Ljava/util/Vector;

    .line 38
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lftc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lftl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 52
    iget-object v0, p0, Lftc;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 53
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lftc;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 54
    iget-object v0, p0, Lftc;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftb;

    invoke-virtual {v0}, Lftb;->a()Ljava/util/Vector;

    move-result-object v4

    .line 55
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    .line 56
    iget-object v1, p0, Lftc;->b:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lftb;

    invoke-virtual {v1}, Lftb;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftl;->i(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lftc;->b:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lftb;

    invoke-virtual {v1}, Lftb;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftl;->j(Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 53
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 62
    :cond_1
    return-object v3
.end method
