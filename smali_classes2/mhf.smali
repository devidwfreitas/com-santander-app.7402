.class public Lmhf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-static {p0, v0, p1}, Lmhf;->a(Landroid/content/Context;Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 44
    array-length v2, v1

    if-lez v2, :cond_0

    array-length v1, v1

    array-length v2, p1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs a(Landroid/content/Context;Z[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_4

    .line 27
    array-length v5, p2

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v6, p2, v3

    .line 28
    if-eqz p1, :cond_2

    invoke-static {p0, v6}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 31
    :goto_1
    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    invoke-static {p0, v6}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    .line 37
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 38
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 39
    return-object v0
.end method
