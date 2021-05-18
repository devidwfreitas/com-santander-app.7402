.class public final Lcom/datami/smi/d/f;
.super Ljava/util/TimerTask;


# static fields
.field private static a:Landroid/content/Context;

.field private static final b:[B

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/d/f;->b:[B

    const/16 v0, 0xd5

    sput v0, Lcom/datami/smi/d/f;->c:I

    return-void

    :array_0
    .array-data 1
        0x24t
        -0x68t
        0x2at
        -0x2bt
        -0xdt
        -0x4t
        0x12t
        -0x4t
        -0x1t
        0x33t
        -0x15t
        0x2t
        0xbt
        0x4t
        -0xbt
        0x6t
        -0x1t
        -0x4et
        0x49t
        0x5t
        -0x4et
        0x53t
        -0xet
        0x9t
        -0xat
        0x5t
        0x5t
        -0x7t
        -0x47t
        0x45t
        0x11t
        -0x11t
        0x9t
        0x6t
        -0x1t
        -0x53t
        0x44t
        -0x3t
        0x13t
        -0x13t
        -0x41t
        -0xet
        0x11t
        0x1at
        -0x4t
        -0x24t
        0x31t
        -0x11t
        0x9t
        0x6t
        -0x24t
        0x22t
        -0x3t
        -0xct
        0x2t
        0xet
        0x0t
        -0x4t
        0x3t
        -0x1et
        0xdt
        0x12t
        -0x8t
        -0x4bt
        0x54t
        -0xbt
        0x4t
        -0x8t
        0xdt
        -0x52t
        0x46t
        0x3t
        0x9t
        -0xdt
        -0x1t
        0x9t
        -0x4t
        -0x1t
        -0x2et
        0x33t
        0x21t
        -0x2t
        -0x9t
        0x5t
        -0x7t
        -0x47t
        0x21t
        -0x4ft
        0x25t
        0x31t
        -0x11t
        0x9t
        0x6t
        -0x1t
        -0x53t
        0x54t
        -0x5t
        -0x4ft
        0x50t
        0x2t
        -0x3t
        -0xct
        0x2t
        0xet
        0x0t
        0x9t
        0x9t
        -0x4t
        -0xct
        -0xat
        0x1at
        -0x4t
        -0x16t
        0x11t
        0x7t
        -0x17t
        0x15t
        0x4t
        -0x8t
        0xdt
        0x1t
        0x2ct
        -0x3t
        0x0t
        -0x7t
        -0x2t
        0x11t
        -0x5t
        0x3t
        -0x52t
        0x35t
        -0x3t
        -0x6t
        -0x2ct
        0x21t
        -0x4ft
        0x23t
        0x2ct
        -0x3t
        0x0t
        -0x7t
        -0x2t
        0x11t
        -0x5t
        0x3t
        -0x52t
        0x46t
        0x9t
        0x6t
        -0x7t
        -0xat
        -0x44t
        0x49t
        0x5t
        -0x4et
        0x54t
        -0xct
        -0x3t
        -0x45t
        0x44t
        0x1t
        0xbt
        -0x4t
        0x3t
        0xat
        -0xct
        -0x8t
        0x9t
        0x6t
        0x9t
        0x9t
        -0x4t
        -0xct
        -0x18t
        0x31t
        -0x11t
        0x9t
        0x6t
        -0x22t
        0x13t
        0x2t
        0x2t
        0xat
        0x1t
        -0xft
        0xdt
        -0x1ft
        0x12t
        0xdt
        0x4t
        -0xdt
        -0x6t
        0x2t
        0x2ct
        -0x3t
        0x0t
        -0x7t
        -0x2t
        0x11t
        -0x5t
        0x3t
        -0x52t
        0x52t
        -0xdt
        0xet
        -0x3t
        -0x1t
        -0x1t
        0x5t
        -0xet
        -0x45t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    sput-object p1, Lcom/datami/smi/d/f;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    add-int/lit8 v1, p2, 0x3

    const/4 v3, -0x1

    sget-object v6, Lcom/datami/smi/d/f;->b:[B

    new-instance v7, Ljava/lang/String;

    rsub-int/lit8 v4, p0, 0x73

    rsub-int v0, p1, 0xc0

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-nez v6, :cond_1

    move v4, v3

    move v5, v0

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    add-int/2addr v2, v0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    int-to-byte v0, v2

    aput-byte v0, v3, v4

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {v7, v3, v0}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v6, v5

    goto :goto_0

    :cond_1
    move v5, v0

    move v8, v3

    move-object v3, v2

    move v2, v4

    move v4, v8

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x0

    const/16 v5, 0x3b

    const/16 v2, 0xad

    sget-object v1, Lcom/datami/smi/d/f;->b:[B

    aget-byte v1, v1, v2

    neg-int v1, v1

    or-int/lit8 v2, v1, 0x40

    sget-object v3, Lcom/datami/smi/d/f;->b:[B

    const/16 v4, 0x37

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/d/f;->a(III)Ljava/lang/String;

    sget-object v1, Lcom/datami/smi/d/f;->b:[B

    const/16 v2, 0x50

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x96

    sget-object v3, Lcom/datami/smi/d/f;->b:[B

    aget-byte v3, v3, v5

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/d/f;->a(III)Ljava/lang/String;

    sget-object v2, Lcom/datami/smi/b/m;->h:Ljava/util/concurrent/ArrayBlockingQueue;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/datami/smi/b/m;->h:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    :try_start_1
    invoke-static {}, Lcom/datami/smi/d/a;->b()Lorg/json/JSONObject;

    move-result-object v1

    sget-object v3, Lcom/datami/smi/d/f;->b:[B

    const/16 v4, 0xad

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/d/f;->b:[B

    const/16 v5, 0x70

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v3, v3, v4}, Lcom/datami/smi/d/f;->a(III)Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/datami/smi/d/f;->b:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x76

    sget-object v6, Lcom/datami/smi/d/f;->b:[B

    const/16 v7, 0x17

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/d/f;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/datami/smi/b/m;->F()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    if-eqz v4, :cond_0

    sget-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-virtual {v0}, Lcom/datami/smi/c/o;->e()Z

    move-result v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/datami/smi/d/f;->b:[B

    const/16 v3, 0x58

    aget-byte v1, v1, v3

    const/16 v3, 0x3b

    sget-object v4, Lcom/datami/smi/d/f;->b:[B

    const/16 v5, 0x50

    aget-byte v4, v4, v5

    invoke-static {v1, v3, v4}, Lcom/datami/smi/d/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    sget-object v1, Lcom/datami/smi/d/f;->b:[B

    const/16 v4, 0x78

    aget-byte v1, v1, v4

    or-int/lit16 v4, v1, 0xbc

    sget-object v5, Lcom/datami/smi/d/f;->b:[B

    const/16 v6, 0x3a

    aget-byte v5, v5, v6

    invoke-static {v1, v4, v5}, Lcom/datami/smi/d/f;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v4, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/datami/smi/d/f;->b:[B

    const/16 v4, 0x38

    aget-byte v1, v1, v4

    or-int/lit16 v4, v1, 0x98

    sget-object v5, Lcom/datami/smi/d/f;->b:[B

    const/16 v6, 0x38

    aget-byte v5, v5, v6

    invoke-static {v1, v4, v5}, Lcom/datami/smi/d/f;->a(III)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/datami/smi/d/c;->c:Lcom/datami/smi/d/c;

    invoke-static {v4}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/datami/smi/d/d;->d:Lcom/datami/smi/d/d;

    invoke-static {v1}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    sget-object v1, Lcom/datami/smi/d/f;->b:[B

    const/16 v3, 0xad

    aget-byte v1, v1, v3

    neg-int v1, v1

    sget-object v3, Lcom/datami/smi/d/f;->b:[B

    const/16 v4, 0x70

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v1, v3}, Lcom/datami/smi/d/f;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/d/f;->b:[B

    const/16 v4, 0x4e

    aget-byte v3, v3, v4

    neg-int v3, v3

    shl-int/lit8 v4, v3, 0x2

    sget-object v5, Lcom/datami/smi/d/f;->b:[B

    const/16 v6, 0x3b

    aget-byte v5, v5, v6

    neg-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/f;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    sget-object v4, Lcom/datami/smi/d/f;->b:[B

    const/16 v5, 0xad

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/d/f;->b:[B

    const/16 v6, 0x70

    aget-byte v5, v5, v6

    neg-int v5, v5

    invoke-static {v4, v4, v5}, Lcom/datami/smi/d/f;->a(III)Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/datami/smi/d/f;->b:[B

    const/16 v6, 0x2e

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lcom/datami/smi/d/f;->b:[B

    const/16 v7, 0x12

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    sget-object v7, Lcom/datami/smi/d/f;->b:[B

    const/16 v8, 0xc

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/d/f;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/datami/smi/d/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v4, v3, v1, v5, v0}, Lcom/datami/smi/g/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/d/f;->b:[B

    const/16 v3, 0xad

    aget-byte v1, v1, v3

    neg-int v1, v1

    sget-object v3, Lcom/datami/smi/d/f;->b:[B

    const/16 v4, 0x70

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v1, v3}, Lcom/datami/smi/d/f;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/d/f;->b:[B

    const/16 v4, 0x2e

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lcom/datami/smi/d/f;->b:[B

    const/16 v5, 0x38

    aget-byte v4, v4, v5

    or-int/lit8 v5, v4, 0x10

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/f;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/datami/smi/g/c;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/datami/smi/b/m;->h:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    :try_start_5
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sget-object v1, Lcom/datami/smi/d/f;->b:[B

    const/16 v3, 0x38

    aget-byte v1, v1, v3

    or-int/lit16 v3, v1, 0x98

    sget-object v4, Lcom/datami/smi/d/f;->b:[B

    const/16 v5, 0x38

    aget-byte v4, v4, v5

    invoke-static {v1, v3, v4}, Lcom/datami/smi/d/f;->a(III)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/datami/smi/d/c;->b:Lcom/datami/smi/d/c;

    invoke-static {v3}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/datami/smi/d/d;->d:Lcom/datami/smi/d/d;

    invoke-static {v1}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :cond_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/datami/smi/d/f;->b:[B

    const/16 v1, 0xad

    aget-byte v0, v0, v1

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/d/f;->b:[B

    const/16 v3, 0x70

    aget-byte v1, v1, v3

    neg-int v1, v1

    invoke-static {v0, v0, v1}, Lcom/datami/smi/d/f;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/d/f;->b:[B

    const/16 v1, 0x58

    aget-byte v0, v0, v1

    const/16 v1, 0x6b

    sget-object v3, Lcom/datami/smi/d/f;->b:[B

    const/16 v4, 0x1e

    aget-byte v3, v3, v4

    invoke-static {v0, v1, v3}, Lcom/datami/smi/d/f;->a(III)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method
