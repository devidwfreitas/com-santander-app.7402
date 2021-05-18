.class public Lmem;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/util/SparseIntArray;III)Landroid/util/SparseIntArray;
    .locals 5

    .prologue
    .line 95
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_5

    .line 98
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 101
    if-lt v3, p1, :cond_0

    if-le v3, p2, :cond_2

    .line 102
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_2
    if-lez p3, :cond_3

    .line 105
    add-int/2addr v3, p3

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 106
    :cond_3
    if-gez p3, :cond_1

    .line 109
    add-int v4, p1, p3

    if-le v3, v4, :cond_4

    if-le v3, p1, :cond_1

    .line 113
    :cond_4
    add-int/2addr v3, p3

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 118
    :cond_5
    return-object v1
.end method

.method public static a(Lmda;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lmdt;",
            ">(",
            "Lmda",
            "<TItem;>;)",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lmda;->getItemCount()I

    move-result v1

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 175
    invoke-virtual {p0, v0}, Lmda;->b(I)Lmdt;

    move-result-object v3

    .line 176
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-static {v3, v2}, Lmem;->c(Lmdt;Ljava/util/List;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-object v2
.end method

.method public static a(Ljava/util/Set;III)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;III)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 61
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 65
    if-lt v0, p1, :cond_1

    if-le v0, p2, :cond_2

    .line 66
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_2
    if-lez p3, :cond_3

    .line 69
    add-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_3
    if-gez p3, :cond_0

    .line 73
    add-int v3, p1, p3

    if-le v0, v3, :cond_4

    if-le v0, p1, :cond_0

    .line 77
    :cond_4
    add-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_5
    return-object v1
.end method

.method public static a(Lmda;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lmdt;",
            ">(",
            "Lmda",
            "<TItem;>;II)V"
        }
    .end annotation

    .prologue
    .line 32
    :goto_0
    if-lt p2, p1, :cond_3

    .line 33
    invoke-virtual {p0, p2}, Lmda;->b(I)Lmdt;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    invoke-interface {v0}, Lmdt;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {p0}, Lmda;->f()Ljava/util/Set;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    :goto_1
    instance-of v1, v0, Lmdp;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lmdp;

    invoke-interface {v0}, Lmdp;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmda;->k()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 42
    invoke-virtual {p0, p2}, Lmda;->l(I)V

    .line 32
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0}, Lmda;->f()Ljava/util/Set;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lmda;->f()Ljava/util/Set;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 47
    :cond_3
    return-void
.end method

.method public static a(Lmdt;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lmdt;",
            ">(TItem;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    instance-of v0, p0, Lmdp;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lmdp;

    invoke-interface {v0}, Lmdp;->f()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Lmdp;

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    check-cast p0, Lmdp;

    invoke-interface {p0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v2

    .line 132
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 133
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 134
    invoke-interface {v0}, Lmdt;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 135
    if-eqz p1, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lmdt;->i(Z)Ljava/lang/Object;

    .line 138
    :cond_0
    invoke-static {v0, p1}, Lmem;->a(Lmdt;Ljava/util/List;)V

    .line 132
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 141
    :cond_1
    return-void
.end method

.method public static b(Lmdt;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lmdt;",
            ">(TItem;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    instance-of v0, p0, Lmdp;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lmdp;

    invoke-interface {v0}, Lmdp;->f()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Lmdp;

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    check-cast p0, Lmdp;

    invoke-interface {p0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v2

    .line 154
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 155
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 156
    invoke-interface {v0}, Lmdt;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-interface {v0}, Lmdt;->m()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    invoke-static {v0, p1}, Lmem;->b(Lmdt;Ljava/util/List;)V

    .line 154
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 163
    :cond_1
    return-void
.end method

.method public static c(Lmdt;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lmdt;",
            ">(TItem;",
            "Ljava/util/List",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 189
    instance-of v0, p0, Lmdp;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lmdp;

    invoke-interface {v0}, Lmdp;->f()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lmdp;

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    check-cast p0, Lmdp;

    invoke-interface {p0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v2

    .line 192
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 193
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 194
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-static {v0, p1}, Lmem;->c(Lmdt;Ljava/util/List;)V

    .line 192
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method
