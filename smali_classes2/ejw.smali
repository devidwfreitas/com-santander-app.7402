.class public final Lejw;
.super Lejz;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lejz;",
        "Ljava/lang/Iterable",
        "<",
        "Lejz;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lejz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lejz;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lejw;->a:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method a()Lejw;
    .locals 3

    .prologue
    .line 45
    new-instance v1, Lejw;

    invoke-direct {v1}, Lejw;-><init>()V

    .line 46
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    .line 47
    invoke-virtual {v0}, Lejz;->o()Lejz;

    move-result-object v0

    invoke-virtual {v1, v0}, Lejw;->a(Lejz;)V

    goto :goto_0

    .line 49
    :cond_0
    return-object v1
.end method

.method public a(I)Lejz;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    return-object v0
.end method

.method public a(ILejz;)Lejz;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    return-object v0
.end method

.method public a(Lejw;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    iget-object v1, p1, Lejw;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    return-void
.end method

.method public a(Lejz;)V
    .locals 1

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    sget-object p1, Lekb;->a:Lekb;

    .line 97
    :cond_0
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lejw;->a:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v0, Lekb;->a:Lekb;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void

    .line 58
    :cond_0
    new-instance v0, Lekf;

    invoke-direct {v0, p1}, Lekf;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Character;)V
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lejw;->a:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v0, Lekb;->a:Lekb;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void

    .line 67
    :cond_0
    new-instance v0, Lekf;

    invoke-direct {v0, p1}, Lekf;-><init>(Ljava/lang/Character;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lejw;->a:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v0, Lekb;->a:Lekb;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void

    .line 76
    :cond_0
    new-instance v0, Lekf;

    invoke-direct {v0, p1}, Lekf;-><init>(Ljava/lang/Number;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lejw;->a:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v0, Lekb;->a:Lekb;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void

    .line 85
    :cond_0
    new-instance v0, Lekf;

    invoke-direct {v0, p1}, Lekf;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Lejz;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    return-object v0
.end method

.method public b(Lejz;)Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    invoke-virtual {v0}, Lejz;->c()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public c(Lejz;)Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    invoke-virtual {v0}, Lejz;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public e()D
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    invoke-virtual {v0}, Lejz;->e()D

    move-result-wide v0

    return-wide v0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 366
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lejw;

    if-eqz v0, :cond_1

    check-cast p1, Lejw;

    iget-object v0, p1, Lejw;->a:Ljava/util/List;

    iget-object v1, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    invoke-virtual {v0}, Lejz;->f()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public g()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    invoke-virtual {v0}, Lejz;->g()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public h()F
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    invoke-virtual {v0}, Lejz;->h()F

    move-result v0

    return v0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    invoke-virtual {v0}, Lejz;->i()J

    move-result-wide v0

    return-wide v0

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lejz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    invoke-virtual {v0}, Lejz;->j()I

    move-result v0

    return v0

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public k()B
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    invoke-virtual {v0}, Lejz;->k()B

    move-result v0

    return v0

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public l()C
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    invoke-virtual {v0}, Lejz;->l()C

    move-result v0

    return v0

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public m()S
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    invoke-virtual {v0}, Lejz;->m()S

    move-result v0

    return v0

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 359
    iget-object v0, p0, Lejw;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    invoke-virtual {v0}, Lejz;->n()Z

    move-result v0

    return v0

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method synthetic o()Lejz;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lejw;->a()Lejw;

    move-result-object v0

    return-object v0
.end method
