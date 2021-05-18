.class public final Lnfu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnfy;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:[Lnfy;

.field private volatile b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lnfu;->b:I

    new-array v0, v0, [Lnfy;

    iput-object v0, p0, Lnfu;->a:[Lnfy;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lnfu;->b:I

    if-nez p1, :cond_1

    new-array v0, v1, [Lnfy;

    iput-object v0, p0, Lnfu;->a:[Lnfy;

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v1

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    new-array v5, v0, [Lnfy;

    move v2, v1

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnfy;

    if-eqz v0, :cond_4

    add-int/lit8 v3, v2, -0x1

    :goto_2
    if-ltz v3, :cond_6

    if-lez v2, :cond_6

    aget-object v6, v5, v3

    invoke-virtual {v6}, Lnfy;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lnfy;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provided collection is not valid. There are duplicate entries with the same ids."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v2, 0x1

    aput-object v0, v5, v2

    move v2, v3

    goto :goto_1

    :cond_7
    iput-object v5, p0, Lnfu;->a:[Lnfy;

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "null attributes assigned from given collection: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic d(Lnfu;)[Lnfy;
    .locals 1

    iget-object v0, p0, Lnfu;->a:[Lnfy;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lnfu;->a:[Lnfy;

    array-length v0, v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lnfu;->a:[Lnfy;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lnfy;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(Lnfu;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnfu",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p1, Lnfu;->a:[Lnfy;

    array-length v0, v0

    iget-object v2, p0, Lnfu;->a:[Lnfy;

    array-length v2, v2

    if-gt v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p1, Lnfu;->a:[Lnfy;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lnfu;->a:[Lnfy;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lnfu;->a(Lnfy;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public a(Lnfy;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lnfu;->a:[Lnfy;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a([Lnfy;)[Lnfy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lnfu;->a()I

    move-result v2

    array-length v0, p1

    if-ge v0, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnfy;

    check-cast v0, [Lnfy;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lnfu;->a:[Lnfy;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    array-length v1, v0

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    aput-object v1, v0, v2

    :cond_1
    return-object v0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lnfy;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v2, p0, Lnfu;->a:[Lnfy;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lnfy;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lnfu;->a:[Lnfy;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lnfu;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnfu",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p1, Lnfu;->a:[Lnfy;

    array-length v0, v0

    iget-object v2, p0, Lnfu;->a:[Lnfy;

    array-length v2, v2

    if-gt v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p1, Lnfu;->a:[Lnfy;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lnfu;->a:[Lnfy;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lnfy;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnfu;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public b(Lnfy;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnfy;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnfu;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lnfu;->iterator()Ljava/util/Iterator;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v1, ""

    const-string p1, ""

    const-string v0, ""

    move-object v2, v1

    move-object v1, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnfy;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lnfu;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnfu",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lnfu;->a()I

    move-result v1

    invoke-virtual {p0}, Lnfu;->a()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lnfu;->a:[Lnfy;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lnfy;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lnfu;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()[Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lnfu;->a:[Lnfy;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lnfu;->a:[Lnfy;

    iget-object v2, p0, Lnfu;->a:[Lnfy;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v0, p1, Lnfu;

    if-eqz v0, :cond_0

    check-cast p1, Lnfu;

    iget-object v0, p0, Lnfu;->a:[Lnfy;

    array-length v0, v0

    iget-object v3, p1, Lnfu;->a:[Lnfy;

    array-length v3, v3

    if-ne v0, v3, :cond_0

    iget-object v4, p0, Lnfu;->a:[Lnfy;

    array-length v5, v4

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    move v0, v1

    :goto_2
    iget-object v7, p1, Lnfu;->a:[Lnfy;

    array-length v7, v7

    if-ge v0, v7, :cond_4

    iget-object v7, p1, Lnfu;->a:[Lnfy;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v2

    :goto_3
    if-eqz v0, :cond_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Lnfu;->b:I

    if-nez v0, :cond_1

    const/16 v1, 0x11

    iget-object v3, p0, Lnfu;->a:[Lnfy;

    array-length v4, v3

    const/4 v0, 0x0

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v3, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    iput v0, p0, Lnfu;->b:I

    :cond_1
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lnfv;

    invoke-direct {v0, p0}, Lnfv;-><init>(Lnfu;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnfu;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
