.class public Lchu;
.super Lcht;
.source "SourceFile"

# interfaces
.implements Lchx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcht",
        "<",
        "Lcih;",
        ">;",
        "Lchx;"
    }
.end annotation


# instance fields
.field protected c:Lchs;


# direct methods
.method public constructor <init>(Lcih;Lcic;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcht;-><init>(Lcid;)V

    .line 28
    invoke-interface {p2}, Lcic;->f()Lcge;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lchu;->c:Lchs;

    .line 29
    return-void

    .line 28
    :cond_0
    new-instance v0, Lchs;

    invoke-direct {v0, p2}, Lchs;-><init>(Lcic;)V

    goto :goto_0
.end method


# virtual methods
.method protected b(FFF)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Ljava/util/List",
            "<",
            "Lchv;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 34
    iget-object v0, p0, Lchu;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    iget-object v0, p0, Lchu;->a:Lcid;

    check-cast v0, Lcih;

    invoke-interface {v0}, Lcih;->aK()Lcgp;

    move-result-object v0

    invoke-virtual {v0}, Lcgp;->t()Ljava/util/List;

    move-result-object v4

    move v1, v2

    .line 38
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 40
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgo;

    .line 43
    iget-object v3, p0, Lchu;->c:Lchs;

    if-eqz v3, :cond_1

    instance-of v3, v0, Lcge;

    if-eqz v3, :cond_1

    .line 44
    iget-object v0, p0, Lchu;->c:Lchs;

    invoke-virtual {v0, p2, p3}, Lchs;->a(FF)Lchv;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, v1}, Lchv;->a(I)V

    .line 48
    iget-object v3, p0, Lchu;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0}, Lcgo;->d()I

    move-result v5

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    .line 54
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgg;

    invoke-virtual {v0, v3}, Lcgg;->a(I)Lcio;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Lcio;->q()Z

    move-result v6

    if-nez v6, :cond_3

    .line 52
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 60
    :cond_3
    sget-object v6, Lcgr;->CLOSEST:Lcgr;

    invoke-virtual {p0, v0, v3, p1, v6}, Lchu;->a(Lcio;IFLcgr;)Ljava/util/List;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchv;

    .line 63
    invoke-virtual {v0, v1}, Lchv;->a(I)V

    .line 64
    iget-object v7, p0, Lchu;->b:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 70
    :cond_4
    iget-object v0, p0, Lchu;->b:Ljava/util/List;

    return-object v0
.end method
