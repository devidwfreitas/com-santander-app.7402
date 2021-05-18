.class public Lmec;
.super Lmcz;
.source "SourceFile"

# interfaces
.implements Lmdu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lmdt;",
        ">",
        "Lmcz",
        "<TItem;>;",
        "Lmdu",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
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

.field private c:Z

.field private d:Lmed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmed",
            "<TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lmcz;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmec;->b:Ljava/util/List;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmec;->c:Z

    .line 58
    new-instance v0, Lmed;

    invoke-direct {v0, p0}, Lmed;-><init>(Lmec;)V

    iput-object v0, p0, Lmec;->d:Lmed;

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 7

    .prologue
    .line 173
    const/4 v1, 0x0

    iget-object v0, p0, Lmec;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 174
    iget-object v0, p0, Lmec;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    invoke-interface {v0}, Lmdt;->j()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    move v0, v1

    .line 178
    :goto_1
    return v0

    .line 173
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(Lmdt;Ljava/util/List;)Lmdt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lmdt;",
            ":",
            "Lmdp",
            "<TT;TS;>;S::",
            "Lmdt;",
            ":",
            "Lmdx",
            "<TItem;TT;>;>(TT;",
            "Ljava/util/List",
            "<TS;>;)TT;"
        }
    .end annotation

    .prologue
    .line 209
    iget-boolean v0, p0, Lmec;->c:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-static {p2}, Lmes;->a(Ljava/util/List;)Ljava/util/List;

    .line 212
    :cond_0
    check-cast p1, Lmdp;

    invoke-interface {p1, p2}, Lmdp;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    return-object v0
.end method

.method public synthetic a(II)Lmdu;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lmec;->e(II)Lmec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(ILjava/util/List;)Lmdu;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lmec;->c(ILjava/util/List;)Lmec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(ILmdt;)Lmdu;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lmec;->b(ILmdt;)Lmec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(I[Lmdt;)Lmdu;
    .locals 1
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lmec;->b(I[Lmdt;)Lmec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/util/List;)Lmdu;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lmec;->h(Ljava/util/List;)Lmec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a([Lmdt;)Lmdu;
    .locals 1
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lmec;->b([Lmdt;)Lmec;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Comparator;)Lmec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TItem;>;)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmec;->a(Ljava/util/Comparator;Z)Lmec;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Comparator;Z)Lmec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TItem;>;Z)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 111
    iput-object p1, p0, Lmec;->a:Ljava/util/Comparator;

    .line 114
    iget-object v0, p0, Lmec;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmec;->a:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 115
    iget-object v0, p0, Lmec;->b:Ljava/util/List;

    iget-object v1, p0, Lmec;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-virtual {v0}, Lmda;->o()V

    .line 119
    :cond_0
    return-object p0
.end method

.method protected a(Ljava/util/List;Z)Lmec;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;Z)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 227
    iget-boolean v0, p0, Lmec;->c:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-static {p1}, Lmes;->a(Ljava/util/List;)Ljava/util/List;

    .line 232
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lmec;->i()Lmed;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmec;->i()Lmed;

    move-result-object v0

    invoke-virtual {v0}, Lmed;->a()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p0}, Lmec;->i()Lmed;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmed;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    .line 237
    :cond_1
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmda;->j(Z)V

    .line 240
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 241
    iget-object v1, p0, Lmec;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 242
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v2

    invoke-virtual {p0}, Lmec;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lmda;->e(I)I

    move-result v2

    .line 245
    iget-object v3, p0, Lmec;->b:Ljava/util/List;

    if-eq p1, v3, :cond_3

    .line 247
    iget-object v3, p0, Lmec;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 248
    iget-object v3, p0, Lmec;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 252
    :cond_2
    iget-object v3, p0, Lmec;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 256
    :cond_3
    invoke-virtual {p0, p1}, Lmec;->a(Ljava/lang/Iterable;)V

    .line 259
    iget-object v3, p0, Lmec;->a:Ljava/util/Comparator;

    if-eqz v3, :cond_4

    .line 260
    iget-object v3, p0, Lmec;->b:Ljava/util/List;

    iget-object v4, p0, Lmec;->a:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 264
    :cond_4
    if-le v0, v1, :cond_7

    .line 265
    if-lez v1, :cond_5

    .line 266
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lmda;->e(II)V

    .line 268
    :cond_5
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v3

    add-int/2addr v2, v1

    sub-int/2addr v0, v1

    invoke-virtual {v3, v2, v0}, Lmda;->b(II)V

    .line 281
    :cond_6
    :goto_0
    return-object p0

    .line 269
    :cond_7
    if-lez v0, :cond_8

    .line 270
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lmda;->e(II)V

    .line 271
    if-ge v0, v1, :cond_6

    .line 272
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v3

    add-int/2addr v2, v0

    sub-int v0, v1, v0

    invoke-virtual {v3, v2, v0}, Lmda;->c(II)V

    goto :goto_0

    .line 274
    :cond_8
    if-nez v0, :cond_9

    .line 275
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lmda;->c(II)V

    goto :goto_0

    .line 278
    :cond_9
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-virtual {v0}, Lmda;->o()V

    goto :goto_0
.end method

.method public a(Lmed;)Lmec;
    .locals 0
    .param p1    # Lmed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmed",
            "<TItem;>;)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lmec;->d:Lmed;

    .line 68
    return-object p0
.end method

.method public a(Z)Lmec;
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lmec;->c:Z

    .line 47
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    iget-object v0, p0, Lmec;->d:Lmed;

    invoke-virtual {v0, p1}, Lmed;->filter(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method public b(Lmdt;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)I"
        }
    .end annotation

    .prologue
    .line 162
    invoke-interface {p1}, Lmdt;->j()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmec;->a(J)I

    move-result v0

    return v0
.end method

.method public b(I)Lmdt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lmec;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    return-object v0
.end method

.method public synthetic b()Lmdu;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lmec;->l()Lmec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/util/List;)Lmdu;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lmec;->i(Ljava/util/List;)Lmec;

    move-result-object v0

    return-object v0
.end method

.method public b(ILmdt;)Lmec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 405
    iget-boolean v0, p0, Lmec;->c:Z

    if-eqz v0, :cond_0

    .line 406
    invoke-static {p2}, Lmes;->a(Lmds;)Lmds;

    .line 408
    :cond_0
    iget-object v0, p0, Lmec;->b:Ljava/util/List;

    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmda;->f(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-virtual {p0, p2}, Lmec;->a(Lmdt;)V

    .line 411
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmda;->o(I)V

    .line 412
    return-object p0
.end method

.method public final varargs b(I[Lmdt;)Lmec;
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
    .line 376
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmec;->c(ILjava/util/List;)Lmec;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/List;Z)Lmec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;Z)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 301
    iget-boolean v0, p0, Lmec;->c:Z

    if-eqz v0, :cond_0

    .line 302
    invoke-static {p1}, Lmes;->a(Ljava/util/List;)Ljava/util/List;

    .line 307
    :cond_0
    invoke-virtual {p0}, Lmec;->i()Lmed;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmec;->i()Lmed;

    move-result-object v0

    invoke-virtual {v0}, Lmed;->a()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 308
    invoke-virtual {p0}, Lmec;->i()Lmed;

    move-result-object v0

    invoke-virtual {v0}, Lmed;->a()Ljava/lang/CharSequence;

    move-result-object v0

    .line 309
    invoke-virtual {p0}, Lmec;->i()Lmed;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmed;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    .line 312
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lmec;->b:Ljava/util/List;

    .line 313
    iget-object v1, p0, Lmec;->b:Ljava/util/List;

    invoke-virtual {p0, v1}, Lmec;->a(Ljava/lang/Iterable;)V

    .line 315
    iget-object v1, p0, Lmec;->a:Ljava/util/Comparator;

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lmec;->b:Ljava/util/List;

    iget-object v2, p0, Lmec;->a:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 319
    :cond_1
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 320
    invoke-virtual {p0}, Lmec;->i()Lmed;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmed;->filter(Ljava/lang/CharSequence;)V

    .line 325
    :goto_1
    return-object p0

    .line 322
    :cond_2
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-virtual {v0}, Lmda;->o()V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final varargs b([Lmdt;)Lmec;
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
    .line 343
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmec;->j(Ljava/util/List;)Lmec;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0x1f4

    return v0
.end method

.method public c(I)I
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-virtual {p0}, Lmec;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lmda;->e(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public synthetic c(Ljava/util/List;)Lmdu;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lmec;->j(Ljava/util/List;)Lmec;

    move-result-object v0

    return-object v0
.end method

.method public c(ILjava/util/List;)Lmec;
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
    .line 386
    iget-boolean v0, p0, Lmec;->c:Z

    if-eqz v0, :cond_0

    .line 387
    invoke-static {p2}, Lmes;->a(Ljava/util/List;)Ljava/util/List;

    .line 389
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 390
    iget-object v0, p0, Lmec;->b:Ljava/util/List;

    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v1

    invoke-virtual {p0}, Lmec;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lmda;->e(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 391
    invoke-virtual {p0, p2}, Lmec;->a(Ljava/lang/Iterable;)V

    .line 393
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lmda;->b(II)V

    .line 395
    :cond_1
    return-object p0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lmec;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic d(I)Lmdu;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lmec;->f(I)Lmec;

    move-result-object v0

    return-object v0
.end method

.method public d(II)Lmec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 423
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmda;->f(I)I

    move-result v1

    .line 424
    iget-object v0, p0, Lmec;->b:Ljava/util/List;

    sub-int v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 425
    iget-object v2, p0, Lmec;->b:Ljava/util/List;

    sub-int v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 426
    iget-object v2, p0, Lmec;->b:Ljava/util/List;

    sub-int v1, p2, v1

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 427
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmda;->d(II)V

    .line 428
    return-object p0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lmec;->b:Ljava/util/List;

    return-object v0
.end method

.method public e(II)Lmec;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lmec;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 451
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmda;->f(I)I

    move-result v1

    .line 453
    sub-int/2addr v0, p1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 455
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 456
    iget-object v3, p0, Lmec;->b:Ljava/util/List;

    sub-int v4, p1, v1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lmda;->c(II)V

    .line 460
    return-object p0
.end method

.method public f(I)Lmec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lmec;->b:Ljava/util/List;

    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmda;->f(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 438
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmda;->n(I)V

    .line 439
    return-object p0
.end method

.method public h(Ljava/util/List;)Lmec;
    .locals 1
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
    .line 223
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmec;->a(Ljava/util/List;Z)Lmec;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lmec;->c:Z

    return v0
.end method

.method public i(Ljava/util/List;)Lmec;
    .locals 1
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
    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmec;->b(Ljava/util/List;Z)Lmec;

    move-result-object v0

    return-object v0
.end method

.method public i()Lmed;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmed",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lmec;->d:Lmed;

    return-object v0
.end method

.method public j()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lmec;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method public j(Ljava/util/List;)Lmec;
    .locals 4
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
    .line 352
    iget-boolean v0, p0, Lmec;->c:Z

    if-eqz v0, :cond_0

    .line 353
    invoke-static {p1}, Lmes;->a(Ljava/util/List;)Ljava/util/List;

    .line 355
    :cond_0
    iget-object v0, p0, Lmec;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 356
    iget-object v1, p0, Lmec;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 357
    invoke-virtual {p0, p1}, Lmec;->a(Ljava/lang/Iterable;)V

    .line 359
    iget-object v1, p0, Lmec;->a:Ljava/util/Comparator;

    if-nez v1, :cond_1

    .line 360
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v1

    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v2

    invoke-virtual {p0}, Lmec;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lmda;->e(I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lmda;->b(II)V

    .line 365
    :goto_0
    return-object p0

    .line 362
    :cond_1
    iget-object v0, p0, Lmec;->b:Ljava/util/List;

    iget-object v1, p0, Lmec;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 363
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v0

    invoke-virtual {v0}, Lmda;->o()V

    goto :goto_0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lmec;->l_()V

    .line 333
    iget-object v0, p0, Lmec;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lmec;->a(Ljava/lang/Iterable;)V

    .line 334
    return-void
.end method

.method public l()Lmec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmec",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lmec;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 468
    iget-object v1, p0, Lmec;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 469
    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v1

    invoke-virtual {p0}, Lmec;->a()Lmda;

    move-result-object v2

    invoke-virtual {p0}, Lmec;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lmda;->e(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lmda;->c(II)V

    .line 470
    return-object p0
.end method
