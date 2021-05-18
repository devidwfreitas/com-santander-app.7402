.class public Lcom/datami/smi/b/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/datami/smi/b/b;

.field private static final b:[B

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/b/b;->b:[B

    const/16 v0, 0x1f

    sput v0, Lcom/datami/smi/b/b;->c:I

    const/4 v0, 0x0

    sput-object v0, Lcom/datami/smi/b/b;->a:Lcom/datami/smi/b/b;

    return-void

    nop

    :array_0
    .array-data 1
        0x15t
        0x25t
        0x68t
        0x6ct
        -0xat
        -0x9t
        -0xbt
        0x4t
        -0x14t
        0x1t
        0xet
        -0xdt
        -0xct
        0x4t
        0x2t
        -0x1ft
        0x10t
        -0x10t
        -0x1t
        -0xdt
        -0xbt
        0x7t
        -0xbt
        0xft
        -0x8t
        0xet
        -0x18t
        0x7t
        -0x9t
        -0x41t
        0x41t
        -0x13t
        -0x7t
        0xdt
        -0x8t
        -0x12t
        -0x3dt
        0x39t
        -0xbt
        0xft
        -0xat
        -0x9t
        -0xbt
        0x4t
        -0x14t
        0xet
        -0x12t
        0x6t
        -0x6t
        -0x6t
        0x0t
        -0x13t
        -0xbt
        0x7t
        -0xbt
        0xft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()Lcom/datami/smi/b/b;
    .locals 3

    const-class v1, Lcom/datami/smi/b/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/datami/smi/b/b;->a:Lcom/datami/smi/b/b;

    if-nez v0, :cond_1

    const-class v2, Lcom/datami/smi/b/b;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/datami/smi/b/b;->a:Lcom/datami/smi/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/datami/smi/b/b;

    invoke-direct {v0}, Lcom/datami/smi/b/b;-><init>()V

    sput-object v0, Lcom/datami/smi/b/b;->a:Lcom/datami/smi/b/b;

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/datami/smi/b/b;->a:Lcom/datami/smi/b/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/String;

    mul-int/lit8 v0, p1, 0x10

    add-int/lit8 v0, v0, 0x64

    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v2, v1, 0x11

    mul-int/lit8 v1, p0, 0x4

    add-int/lit8 v3, v1, 0x4

    sget-object v8, Lcom/datami/smi/b/b;->b:[B

    new-array v1, v2, [B

    if-nez v8, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x5

    add-int/lit8 v6, v6, 0x1

    move v0, v4

    :goto_1
    add-int/lit8 v4, v0, 0x1

    int-to-byte v9, v1

    aput-byte v9, v3, v0

    if-ne v4, v2, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v6, v3

    move-object v3, v1

    move v1, v0

    move v0, v5

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 7

    const/16 v6, 0x32

    const/16 v5, 0x9

    invoke-static {p0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/b/b;->b:[B

    aget-byte v1, v1, v6

    sget-object v2, Lcom/datami/smi/b/b;->b:[B

    aget-byte v2, v2, v5

    invoke-static {v1, v2, v2}, Lcom/datami/smi/b/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/datami/smi/b/b;->b:[B

    aget-byte v1, v1, v6

    sget-object v2, Lcom/datami/smi/b/b;->b:[B

    aget-byte v2, v2, v5

    invoke-static {v1, v2, v2}, Lcom/datami/smi/b/b;->a(III)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v1, Lcom/datami/smi/b/b;->b:[B

    const/4 v4, 0x5

    aget-byte v1, v1, v4

    neg-int v1, v1

    sget-object v4, Lcom/datami/smi/b/b;->b:[B

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/b/b;->b:[B

    aget-byte v5, v5, v6

    invoke-static {v1, v4, v5}, Lcom/datami/smi/b/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/datami/smi/b/m;
    .locals 7

    const/4 v1, 0x0

    const/16 v6, 0x32

    invoke-static {p0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Lcom/datami/smi/c/a;

    sget v3, Lcom/datami/smi/b/b;->c:I

    and-int/lit8 v3, v3, 0x5

    sget-object v4, Lcom/datami/smi/b/b;->b:[B

    aget-byte v4, v4, v6

    invoke-static {v3, v4, v4}, Lcom/datami/smi/b/b;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/datami/smi/c/a;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/datami/smi/b/b;->b:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/b/b;->b:[B

    const/16 v5, 0x9

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/b/b;->b:[B

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/b;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/datami/smi/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/datami/smi/b/m;

    invoke-direct {v0}, Lcom/datami/smi/b/m;-><init>()V

    invoke-virtual {v0, v3}, Lcom/datami/smi/b/m;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static b()V
    .locals 0

    return-void
.end method

.method private static c()V
    .locals 0

    return-void
.end method
