.class public Lmea;
.super Lmec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Item::",
        "Lmdq",
        "<+TModel;**>;>",
        "Lmec",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field private final b:Lmer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmer",
            "<TModel;TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmer",
            "<TModel;TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lmec;-><init>()V

    .line 33
    iput-object p1, p0, Lmea;->b:Lmer;

    .line 34
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Lmdq;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)TItem;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lmea;->b:Lmer;

    invoke-interface {v0, p1}, Lmer;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdq;

    return-object v0
.end method

.method public a(ILjava/lang/Object;)Lmea;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITModel;)",
            "Lmea",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0, p2}, Lmea;->a(Ljava/lang/Object;)Lmdq;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-super {p0, p1, v0}, Lmec;->b(ILmdt;)Lmec;

    .line 125
    :cond_0
    return-object p0
.end method

.method public final varargs a(I[Ljava/lang/Object;)Lmea;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TModel;)",
            "Lmea",
            "<TModel;TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 99
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmea;->b(ILjava/util/List;)Lmea;

    .line 100
    return-object p0
.end method

.method public final varargs a([Ljava/lang/Object;)Lmea;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TModel;)",
            "Lmea",
            "<TModel;TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 77
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmea;->f(Ljava/util/List;)Lmea;

    .line 78
    return-object p0
.end method

.method public b(II)Lmea;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lmea",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Lmec;->d(II)Lmec;

    .line 145
    return-object p0
.end method

.method public b(ILjava/util/List;)Lmea;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TModel;>;)",
            "Lmea",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p2}, Lmea;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lmec;->c(ILjava/util/List;)Lmec;

    .line 111
    return-object p0
.end method

.method public c(II)Lmea;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lmea",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Lmec;->e(II)Lmec;

    .line 157
    return-object p0
.end method

.method public d(Ljava/util/List;)Lmea;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;)",
            "Lmea",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lmea;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-super {p0, v0}, Lmec;->h(Ljava/util/List;)Lmec;

    .line 57
    return-object p0
.end method

.method public e(I)Lmea;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmea",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-super {p0, p1}, Lmec;->f(I)Lmec;

    .line 167
    return-object p0
.end method

.method public e(Ljava/util/List;)Lmea;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;)",
            "Lmea",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lmea;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-super {p0, v0}, Lmec;->i(Ljava/util/List;)Lmec;

    .line 67
    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TModel;>;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lmea;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 45
    invoke-virtual {p0}, Lmea;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdq;

    invoke-interface {v0}, Lmdq;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 47
    :cond_0
    return-object v3
.end method

.method public f(Ljava/util/List;)Lmea;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;)",
            "Lmea",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lmea;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-super {p0, v0}, Lmec;->j(Ljava/util/List;)Lmec;

    .line 88
    return-object p0
.end method

.method protected g(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;)",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 177
    if-nez p1, :cond_1

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 190
    :cond_0
    return-object v0

    .line 181
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 184
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 185
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmea;->a(Ljava/lang/Object;)Lmdq;

    move-result-object v3

    .line 186
    if-eqz v3, :cond_2

    .line 187
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public g()Lmea;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmea",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-super {p0}, Lmec;->l()Lmec;

    .line 133
    return-object p0
.end method
