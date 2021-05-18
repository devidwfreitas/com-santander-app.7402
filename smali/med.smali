.class public Lmed;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lmdt;",
        ">",
        "Landroid/widget/Filter;"
    }
.end annotation


# instance fields
.field protected a:Lmej;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmej",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/CharSequence;

.field private d:Lmec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmec",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private e:Lmdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmdv",
            "<TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmec",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 35
    iput-object p1, p0, Lmed;->d:Lmec;

    .line 36
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 7

    .prologue
    .line 191
    const/4 v1, 0x0

    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 192
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    invoke-interface {v0}, Lmdt;->j()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    move v0, v1

    .line 196
    :goto_1
    return v0

    .line 191
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(Lmdt;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)I"
        }
    .end annotation

    .prologue
    .line 181
    invoke-interface {p1}, Lmdt;->j()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmed;->a(J)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lmed;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public a(I)Lmec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 306
    iget-object v1, p0, Lmed;->b:Ljava/util/List;

    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    invoke-virtual {p0, v0}, Lmed;->a(Lmdt;)I

    move-result v0

    iget-object v2, p0, Lmed;->d:Lmec;

    invoke-virtual {v2}, Lmec;->a()Lmda;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmda;->f(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lmed;->c:Ljava/lang/CharSequence;

    iget-object v1, p0, Lmed;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lmed;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmed;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 308
    iget-object v0, p0, Lmed;->d:Lmec;

    .line 310
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0, p1}, Lmec;->f(I)Lmec;

    move-result-object v0

    goto :goto_0
.end method

.method public a(II)Lmec;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmda;->f(I)I

    move-result v1

    .line 287
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    invoke-virtual {p0, v0}, Lmed;->a(Lmdt;)I

    move-result v2

    .line 288
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    invoke-virtual {p0, v0}, Lmed;->a(Lmdt;)I

    move-result v3

    .line 289
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    sub-int v4, v2, v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 290
    iget-object v4, p0, Lmed;->b:Ljava/util/List;

    sub-int/2addr v2, v1

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 291
    iget-object v2, p0, Lmed;->b:Ljava/util/List;

    sub-int v1, v3, v1

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lmed;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lmed;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    .line 293
    iget-object v0, p0, Lmed;->d:Lmec;

    .line 295
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0, p1, p2}, Lmec;->d(II)Lmec;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILjava/util/List;)Lmec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TItem;>;)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 247
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-static {p2}, Lmes;->a(Ljava/util/List;)Ljava/util/List;

    .line 250
    :cond_0
    iget-object v1, p0, Lmed;->b:Ljava/util/List;

    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    invoke-virtual {p0, v0}, Lmed;->a(Lmdt;)I

    move-result v0

    iget-object v2, p0, Lmed;->d:Lmec;

    invoke-virtual {v2}, Lmec;->a()Lmda;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmda;->f(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-interface {v1, v0, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 251
    iget-object v0, p0, Lmed;->c:Ljava/lang/CharSequence;

    iget-object v1, p0, Lmed;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lmed;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmed;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 252
    iget-object v0, p0, Lmed;->d:Lmec;

    .line 254
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0, p1, p2}, Lmec;->c(ILjava/util/List;)Lmec;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILmdt;)Lmec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {p2}, Lmes;->a(Lmds;)Lmds;

    .line 269
    :cond_0
    iget-object v1, p0, Lmed;->b:Ljava/util/List;

    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    invoke-virtual {p0, v0}, Lmed;->a(Lmdt;)I

    move-result v0

    iget-object v2, p0, Lmed;->d:Lmec;

    invoke-virtual {v2}, Lmec;->a()Lmda;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmda;->f(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lmed;->c:Ljava/lang/CharSequence;

    iget-object v1, p0, Lmed;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lmed;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmed;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 271
    iget-object v0, p0, Lmed;->d:Lmec;

    .line 273
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0, p1, p2}, Lmec;->b(ILmdt;)Lmec;

    move-result-object v0

    goto :goto_0
.end method

.method public final varargs a(I[Lmdt;)Lmec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TItem;)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 236
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmed;->a(ILjava/util/List;)Lmec;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Lmec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 217
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {p1}, Lmes;->a(Ljava/util/List;)Ljava/util/List;

    .line 220
    :cond_0
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    iget-object v0, p0, Lmed;->c:Ljava/lang/CharSequence;

    iget-object v1, p0, Lmed;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lmed;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmed;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 222
    iget-object v0, p0, Lmed;->d:Lmec;

    .line 224
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0, p1}, Lmec;->j(Ljava/util/List;)Lmec;

    move-result-object v0

    goto :goto_0
.end method

.method public final varargs a([Lmdt;)Lmec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TItem;)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 206
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmed;->a(Ljava/util/List;)Lmec;

    move-result-object v0

    return-object v0
.end method

.method public a(Lmdv;)Lmed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmdv",
            "<TItem;>;)",
            "Lmed",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lmed;->e:Lmdv;

    .line 62
    return-object p0
.end method

.method public a(Lmej;)Lmed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmej",
            "<TItem;>;)",
            "Lmed",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lmed;->a:Lmej;

    .line 48
    return-object p0
.end method

.method public b()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 140
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 141
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->a()Lmda;

    move-result-object v0

    iget-object v2, p0, Lmed;->d:Lmec;

    invoke-virtual {v2}, Lmec;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Lmda;->e(I)I

    move-result v3

    .line 142
    const/4 v0, 0x0

    iget-object v2, p0, Lmed;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 143
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 144
    invoke-interface {v0}, Lmdt;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    add-int v0, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 150
    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-virtual {v0}, Lmda;->f()Ljava/util/Set;

    move-result-object v0

    goto :goto_1
.end method

.method public b(II)Lmec;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 324
    iget-object v1, p0, Lmed;->d:Lmec;

    invoke-virtual {v1}, Lmec;->a()Lmda;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmda;->f(I)I

    move-result v1

    .line 326
    sub-int/2addr v0, p1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 327
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 328
    iget-object v3, p0, Lmed;->b:Ljava/util/List;

    sub-int v4, p1, v1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lmed;->c:Ljava/lang/CharSequence;

    iget-object v1, p0, Lmed;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lmed;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmed;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 331
    iget-object v0, p0, Lmed;->d:Lmec;

    .line 333
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0, p1, p2}, Lmec;->e(II)Lmec;

    move-result-object v0

    goto :goto_1
.end method

.method public c()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 161
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 162
    const/4 v0, 0x0

    iget-object v2, p0, Lmed;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 163
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 164
    invoke-interface {v0}, Lmdt;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 170
    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-virtual {v0}, Lmda;->g()Ljava/util/Set;

    move-result-object v0

    goto :goto_1
.end method

.method public d()Lmec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 343
    iget-object v0, p0, Lmed;->c:Ljava/lang/CharSequence;

    iget-object v1, p0, Lmed;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lmed;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmed;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 344
    iget-object v0, p0, Lmed;->d:Lmec;

    .line 346
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->l()Lmec;

    move-result-object v0

    goto :goto_0
.end method

.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .prologue
    .line 67
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 70
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 114
    :goto_0
    return-object v0

    .line 75
    :cond_1
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-virtual {v0}, Lmda;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-virtual {v0}, Lmda;->h()V

    .line 78
    :cond_2
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->a()Lmda;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmda;->j(Z)V

    .line 80
    iput-object p1, p0, Lmed;->c:Ljava/lang/CharSequence;

    .line 82
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    if-nez v0, :cond_3

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmed;->d:Lmec;

    invoke-virtual {v1}, Lmec;->e()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lmed;->b:Ljava/util/List;

    .line 87
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 89
    :cond_4
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    iput-object v0, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lmed;->b:Ljava/util/List;

    .line 94
    iget-object v0, p0, Lmed;->a:Lmej;

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lmed;->a:Lmej;

    invoke-interface {v0}, Lmej;->a()V

    :cond_5
    :goto_1
    move-object v0, v2

    .line 114
    goto :goto_0

    .line 98
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iget-object v0, p0, Lmed;->e:Lmdv;

    if-eqz v0, :cond_9

    .line 102
    iget-object v0, p0, Lmed;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 103
    iget-object v4, p0, Lmed;->e:Lmdv;

    invoke-interface {v4, v0, p1}, Lmdv;->a(Lmdt;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 104
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    move-object v0, v1

    .line 111
    :goto_3
    iput-object v0, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v2, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_1

    .line 108
    :cond_9
    iget-object v0, p0, Lmed;->d:Lmec;

    invoke-virtual {v0}, Lmec;->e()Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lmed;->d:Lmec;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lmec;->a(Ljava/util/List;Z)Lmec;

    .line 128
    :cond_0
    iget-object v0, p0, Lmed;->a:Lmej;

    if-eqz v0, :cond_1

    .line 129
    iget-object v1, p0, Lmed;->a:Lmej;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, p1, v0}, Lmej;->a(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 131
    :cond_1
    return-void
.end method
