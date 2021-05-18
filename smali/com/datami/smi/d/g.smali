.class public final Lcom/datami/smi/d/g;
.super Ljava/util/TimerTask;


# static fields
.field private static a:Landroid/content/Context;

.field private static final b:[B

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/d/g;->b:[B

    const/16 v0, 0x10

    sput v0, Lcom/datami/smi/d/g;->c:I

    return-void

    :array_0
    .array-data 1
        0x51t
        -0x66t
        -0x25t
        -0x11t
        0xet
        0x5t
        -0x11t
        0x5t
        0x2t
        -0x32t
        0x16t
        -0x1t
        -0xat
        -0x3t
        0xct
        -0x5t
        0x2t
        0x4ft
        -0x48t
        -0x4t
        0x4ft
        -0x52t
        0xft
        -0x8t
        0xbt
        -0x4t
        -0x4t
        0x8t
        0x48t
        -0x44t
        -0x10t
        0x12t
        -0x8t
        -0x5t
        0x2t
        0x54t
        -0x43t
        0x4t
        -0x12t
        0x14t
        0x42t
        0xft
        -0x10t
        -0x20t
        0x50t
        -0x22t
        -0x2bt
        0x4t
        0x1t
        0x8t
        0x3t
        -0x10t
        0x6t
        -0x2t
        0x53t
        -0x54t
        0x4t
        0x7t
        0x4dt
        -0x45t
        -0x8t
        -0x5t
        0x8t
        0xbt
        0x45t
        -0x48t
        -0x4t
        0x4ft
        -0x43t
        0x0t
        -0xat
        0x5t
        -0x2t
        -0x9t
        0xdt
        0x9t
        -0x8t
        -0x5t
        -0x8t
        0x5t
        0x2t
        0x2ft
        -0x32t
        -0x20t
        0x3t
        0xat
        -0x4t
        0x8t
        0x48t
        -0x20t
        0x50t
        -0x24t
        -0x30t
        0x12t
        -0x8t
        -0x5t
        0x2t
        0x54t
        -0x53t
        0x6t
        0x50t
        -0x4ft
        -0x1t
        0x4t
        0xdt
        -0x1t
        -0xdt
        0x1t
        -0x8t
        -0x8t
        0x5t
        0xdt
        0xbt
        -0x19t
        0x5t
        0x17t
        -0x10t
        -0x6t
        0x18t
        -0x14t
        -0x3t
        0x9t
        -0xct
        0x0t
        -0x19t
        0x5t
        0x17t
        -0x10t
        -0x6t
        0x27t
        -0x30t
        0x12t
        -0x8t
        -0x5t
        0x25t
        -0x21t
        0x4t
        0xdt
        -0x1t
        -0xdt
        0x1t
        0x5t
        -0x2t
        0x1ft
        -0xct
        -0x11t
        0x9t
        0x4ct
        -0x53t
        0xct
        -0x3t
        0x9t
        -0xct
        0x53t
        -0x45t
        -0x2t
        -0x8t
        0xet
        0x2t
        0x44t
        -0x2bt
        0x4t
        0x1t
        0x8t
        0x3t
        -0x10t
        0x6t
        -0x2t
        0x53t
        -0x34t
        0x4t
        0x7t
        0x2dt
        -0x8t
        -0x8t
        0x5t
        0xdt
        0x19t
        -0x30t
        0x12t
        -0x8t
        -0x5t
        0x23t
        -0x12t
        -0x1t
        -0x1t
        -0x9t
        0x0t
        0x10t
        -0xct
        0x20t
        -0x11t
        -0xct
        -0x3t
        0xet
        0x7t
        -0x1t
        -0x2bt
        0x4t
        0x1t
        0x8t
        0x3t
        -0x10t
        0x6t
        -0x2t
        0x53t
        -0x51t
        0xet
        -0xdt
        0x4t
        0x2t
        0x2t
        -0x4t
        0xft
        0x46t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    sput-object p1, Lcom/datami/smi/d/g;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    add-int/lit8 v3, p2, 0x4

    add-int/lit8 v0, p0, 0x43

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/datami/smi/d/g;->b:[B

    add-int/lit8 v1, p1, 0x3

    new-array v2, v1, [B

    if-nez v8, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    move v0, v4

    :goto_1
    add-int/lit8 v4, v0, 0x1

    int-to-byte v9, v2

    aput-byte v9, v3, v0

    if-ne v4, v1, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v5

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/16 v1, 0x76

    sget-object v0, Lcom/datami/smi/d/g;->b:[B

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/d/g;->b:[B

    const/4 v2, 0x4

    aget-byte v1, v1, v2

    const/16 v2, 0x67

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d/g;->a(III)Ljava/lang/String;

    sget v0, Lcom/datami/smi/d/g;->c:I

    sget-object v1, Lcom/datami/smi/d/g;->b:[B

    const/16 v2, 0x2d

    aget-byte v1, v1, v2

    neg-int v1, v1

    or-int/lit8 v2, v1, 0x55

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d/g;->a(III)Ljava/lang/String;

    invoke-static {}, Lcom/datami/smi/a/a;->a()Lcom/datami/smi/a/a;

    invoke-static {}, Lcom/datami/smi/a/a;->b()V

    invoke-static {}, Lcom/datami/smi/a/d;->a()Lcom/datami/smi/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datami/smi/a/d;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/datami/smi/d/d;->g:Lcom/datami/smi/d/d;

    invoke-static {v1}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/datami/smi/b/m;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_0
    sget-object v2, Lcom/datami/smi/b/m;->i:Ljava/util/concurrent/ArrayBlockingQueue;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/datami/smi/b/m;->i:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    :try_start_1
    invoke-static {}, Lcom/datami/smi/d/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    sget-object v0, Lcom/datami/smi/d/g;->b:[B

    const/16 v3, 0x76

    aget-byte v0, v0, v3

    sget-object v3, Lcom/datami/smi/d/g;->b:[B

    const/16 v4, 0xa

    aget-byte v3, v3, v4

    const/16 v4, 0xa8

    invoke-static {v0, v3, v4}, Lcom/datami/smi/d/g;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/d/g;->b:[B

    const/16 v4, 0x39

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/d/g;->b:[B

    const/16 v5, 0x4b

    aget-byte v4, v4, v5

    or-int/lit8 v5, v4, 0x40

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/g;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/datami/smi/b/m;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/datami/smi/d/g;->b:[B

    const/16 v3, 0x18

    aget-byte v1, v1, v3

    sget-object v3, Lcom/datami/smi/d/g;->b:[B

    const/16 v4, 0x87

    aget-byte v3, v3, v4

    neg-int v3, v3

    add-int/lit8 v4, v3, 0x5

    invoke-static {v1, v3, v4}, Lcom/datami/smi/d/g;->a(III)Ljava/lang/String;

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

    sget-object v1, Lcom/datami/smi/d/g;->b:[B

    const/16 v4, 0x51

    aget-byte v1, v1, v4

    sget-object v4, Lcom/datami/smi/d/g;->b:[B

    const/16 v5, 0x32

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/d/g;->b:[B

    const/16 v6, 0xb

    aget-byte v5, v5, v6

    invoke-static {v1, v4, v5}, Lcom/datami/smi/d/g;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v4, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/datami/smi/d/g;->b:[B

    const/16 v4, 0x5c

    aget-byte v1, v1, v4

    neg-int v1, v1

    sget-object v4, Lcom/datami/smi/d/g;->b:[B

    const/16 v5, 0x45

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/d/g;->b:[B

    const/16 v6, 0x5b

    aget-byte v5, v5, v6

    neg-int v5, v5

    invoke-static {v1, v4, v5}, Lcom/datami/smi/d/g;->a(III)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/datami/smi/d/c;->c:Lcom/datami/smi/d/c;

    invoke-static {v4}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/datami/smi/d/d;->d:Lcom/datami/smi/d/d;

    invoke-static {v1}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    sget-object v1, Lcom/datami/smi/d/g;->b:[B

    const/16 v3, 0x76

    aget-byte v1, v1, v3

    sget-object v3, Lcom/datami/smi/d/g;->b:[B

    const/16 v4, 0xa

    aget-byte v3, v3, v4

    const/16 v4, 0xa8

    invoke-static {v1, v3, v4}, Lcom/datami/smi/d/g;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/d/g;->b:[B

    const/16 v4, 0x8

    aget-byte v3, v3, v4

    or-int/lit8 v4, v3, 0x1c

    sget-object v5, Lcom/datami/smi/d/g;->b:[B

    const/16 v6, 0x25

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/g;->a(III)Ljava/lang/String;

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
    sget-object v0, Lcom/datami/smi/d/g;->b:[B

    const/16 v4, 0x76

    aget-byte v0, v0, v4

    sget-object v4, Lcom/datami/smi/d/g;->b:[B

    const/16 v5, 0xa

    aget-byte v4, v4, v5

    const/16 v5, 0xa8

    invoke-static {v0, v4, v5}, Lcom/datami/smi/d/g;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/datami/smi/d/g;->b:[B

    const/16 v5, 0x45

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/d/g;->b:[B

    const/16 v6, 0x18

    aget-byte v5, v5, v6

    or-int/lit16 v6, v5, 0x90

    invoke-static {v4, v5, v6}, Lcom/datami/smi/d/g;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    sget-object v4, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    if-eqz v4, :cond_2

    sget-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-virtual {v0}, Lcom/datami/smi/c/o;->e()Z

    move-result v0

    :cond_2
    sget-object v4, Lcom/datami/smi/d/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v4, v3, v1, v5, v0}, Lcom/datami/smi/g/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/d/g;->b:[B

    const/16 v3, 0x76

    aget-byte v1, v1, v3

    sget-object v3, Lcom/datami/smi/d/g;->b:[B

    const/16 v4, 0xa

    aget-byte v3, v3, v4

    const/16 v4, 0xa8

    invoke-static {v1, v3, v4}, Lcom/datami/smi/d/g;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/d/g;->b:[B

    const/16 v4, 0x45

    aget-byte v3, v3, v4

    sget v4, Lcom/datami/smi/d/g;->c:I

    const/16 v5, 0xc0

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/g;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/datami/smi/g/c;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/datami/smi/b/m;->i:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_3
    :try_start_5
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sget-object v1, Lcom/datami/smi/d/g;->b:[B

    const/16 v3, 0x5c

    aget-byte v1, v1, v3

    neg-int v1, v1

    sget-object v3, Lcom/datami/smi/d/g;->b:[B

    const/16 v4, 0x45

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/d/g;->b:[B

    const/16 v5, 0x5b

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v1, v3, v4}, Lcom/datami/smi/d/g;->a(III)Ljava/lang/String;

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

    :cond_4
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/datami/smi/d/g;->b:[B

    const/16 v1, 0x76

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/d/g;->b:[B

    const/16 v3, 0xa

    aget-byte v1, v1, v3

    const/16 v3, 0xa8

    invoke-static {v0, v1, v3}, Lcom/datami/smi/d/g;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/d/g;->b:[B

    const/16 v1, 0x18

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/d/g;->b:[B

    const/4 v3, 0x3

    aget-byte v1, v1, v3

    neg-int v1, v1

    sget-object v3, Lcom/datami/smi/d/g;->b:[B

    const/16 v4, 0x23

    aget-byte v3, v3, v4

    invoke-static {v0, v1, v3}, Lcom/datami/smi/d/g;->a(III)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method
