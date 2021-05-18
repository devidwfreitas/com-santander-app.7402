.class public Lcom/datami/smi/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "[dmi]AnalyticsManager"

.field private static e:Lcom/datami/smi/a/a;

.field private static final f:[B

.field private static g:I


# instance fields
.field private b:Lcom/datami/smi/a/b;

.field private c:Lcom/datami/smi/a/i;

.field private d:Lcom/datami/smi/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x95

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/a/a;->f:[B

    const/16 v0, 0xa6

    sput v0, Lcom/datami/smi/a/a;->g:I

    const/4 v0, 0x0

    sput-object v0, Lcom/datami/smi/a/a;->e:Lcom/datami/smi/a/a;

    return-void

    nop

    :array_0
    .array-data 1
        0x3et
        0x26t
        -0xet
        0x78t
        -0x12t
        0x17t
        -0x2ft
        -0x14t
        -0xdt
        -0x16t
        -0x4t
        -0x2t
        -0x1et
        0x12t
        -0x1ft
        -0x1bt
        -0xdt
        -0x3t
        -0x13t
        -0xct
        0xdt
        -0x22t
        -0x11t
        -0x5t
        -0x12t
        0x3t
        -0x1ft
        -0xat
        -0x10t
        0x9t
        -0x1ft
        -0x1bt
        -0xdt
        -0x3t
        -0x13t
        -0xct
        0xdt
        -0x22t
        -0x11t
        -0x5t
        -0xft
        0x0t
        -0x14t
        -0x10t
        -0x6t
        0xct
        -0x22t
        -0x21t
        -0x6t
        -0x2t
        -0x12t
        0x18t
        -0x39t
        -0x13t
        -0x6t
        -0x13t
        0x1t
        -0x1et
        -0xet
        0x3t
        -0x1ft
        -0xat
        -0x10t
        0x9t
        -0x1ft
        -0x1bt
        -0xdt
        -0x3t
        -0x13t
        -0xct
        0xdt
        -0x22t
        -0x11t
        -0x5t
        0x1t
        -0xat
        -0x10t
        0x10t
        -0x22t
        -0x21t
        -0x6t
        -0x2t
        -0x12t
        0x18t
        -0x39t
        -0x13t
        -0x6t
        -0x13t
        -0xet
        0x17t
        -0x2ft
        -0x14t
        -0xdt
        -0x16t
        -0x4t
        -0x2t
        -0x1et
        0x12t
        -0x1ft
        -0x1bt
        -0xdt
        -0x3t
        -0x13t
        -0xct
        0xdt
        -0x22t
        -0x11t
        -0x5t
        0x2t
        0x13t
        -0x2at
        -0x20t
        0x6t
        -0x1t
        -0x2bt
        0x5t
        -0x13t
        -0xbt
        -0x16t
        -0x16t
        -0x9t
        -0x1t
        0xft
        -0x3at
        0x0t
        -0x18t
        -0x1at
        -0x8t
        -0x2t
        -0x7t
        -0x1dt
        0x19t
        -0x21t
        -0x1at
        0x0t
        -0x13t
        -0xbt
        -0x1at
        -0x40t
        0x8t
        -0xft
        -0x18t
        -0x11t
        -0x2t
        -0x13t
        -0xct
        0x41t
        -0x27t
        0xdt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/datami/smi/a/a;->b:Lcom/datami/smi/a/b;

    iput-object v0, p0, Lcom/datami/smi/a/a;->c:Lcom/datami/smi/a/i;

    iput-object v0, p0, Lcom/datami/smi/a/a;->d:Lcom/datami/smi/a/c;

    new-instance v0, Lcom/datami/smi/a/b;

    invoke-direct {v0}, Lcom/datami/smi/a/b;-><init>()V

    iput-object v0, p0, Lcom/datami/smi/a/a;->b:Lcom/datami/smi/a/b;

    new-instance v0, Lcom/datami/smi/a/i;

    invoke-direct {v0}, Lcom/datami/smi/a/i;-><init>()V

    iput-object v0, p0, Lcom/datami/smi/a/a;->c:Lcom/datami/smi/a/i;

    new-instance v0, Lcom/datami/smi/a/c;

    invoke-direct {v0}, Lcom/datami/smi/a/c;-><init>()V

    iput-object v0, p0, Lcom/datami/smi/a/a;->d:Lcom/datami/smi/a/c;

    return-void
.end method

.method public static declared-synchronized a()Lcom/datami/smi/a/a;
    .locals 3

    const-class v1, Lcom/datami/smi/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/datami/smi/a/a;->e:Lcom/datami/smi/a/a;

    if-nez v0, :cond_1

    const-class v2, Lcom/datami/smi/a/a;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/datami/smi/a/a;->e:Lcom/datami/smi/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/datami/smi/a/a;

    invoke-direct {v0}, Lcom/datami/smi/a/a;-><init>()V

    sput-object v0, Lcom/datami/smi/a/a;->e:Lcom/datami/smi/a/a;

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/datami/smi/a/a;->e:Lcom/datami/smi/a/a;
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
    .locals 9

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/String;

    add-int/lit8 v3, p1, 0x3

    add-int/lit8 v0, p0, 0x4

    add-int/lit8 v1, p2, 0x45

    sget-object v7, Lcom/datami/smi/a/a;->f:[B

    new-array v2, v3, [B

    add-int/lit8 v8, v3, -0x1

    if-nez v7, :cond_1

    move v3, v4

    move v5, v0

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0xd

    :goto_1
    add-int/lit8 v5, v5, 0x1

    int-to-byte v0, v1

    aput-byte v0, v2, v3

    if-ne v3, v8, :cond_0

    invoke-direct {v6, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    aget-byte v0, v7, v5

    goto :goto_0

    :cond_1
    move v3, v4

    move v5, v0

    goto :goto_1
.end method

.method public static b()V
    .locals 8

    const/16 v7, 0x82

    const/16 v6, 0x2f

    const/16 v5, 0xd

    const/4 v4, 0x2

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/16 v1, 0x33

    sget-object v2, Lcom/datami/smi/a/a;->f:[B

    const/16 v3, 0x29

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x2e

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/datami/smi/d/c;->a:Lcom/datami/smi/d/c;

    invoke-static {v2}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/datami/smi/a/a;->g:I

    ushr-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/datami/smi/a/a;->f:[B

    aget-byte v2, v2, v5

    sget-object v3, Lcom/datami/smi/a/a;->f:[B

    aget-byte v3, v3, v6

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/datami/smi/a/i;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/datami/smi/a/a;->f:[B

    const/16 v2, 0x71

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/a/a;->f:[B

    aget-byte v2, v2, v5

    sget-object v3, Lcom/datami/smi/a/a;->f:[B

    aget-byte v3, v3, v7

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/datami/smi/a/i;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x35

    sget-object v2, Lcom/datami/smi/a/a;->f:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/a/a;->f:[B

    aget-byte v3, v3, v6

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/datami/smi/a/i;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/datami/smi/a/a;->f:[B

    const/16 v2, 0x6d

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/a/a;->f:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/a/a;->f:[B

    aget-byte v3, v3, v7

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/datami/smi/a/i;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x67

    sget-object v2, Lcom/datami/smi/a/a;->f:[B

    const/16 v3, 0x8b

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x26

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/datami/smi/a/b;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x23

    sget-object v2, Lcom/datami/smi/a/a;->f:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    const/16 v3, 0x28

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/datami/smi/a/c;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x45

    sget-object v2, Lcom/datami/smi/a/a;->f:[B

    const/16 v3, 0x2d

    aget-byte v2, v2, v3

    const/16 v3, 0x32

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/datami/smi/a/c;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/datami/smi/d/d;->h:Lcom/datami/smi/d/d;

    invoke-static {v1}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    return-void
.end method

.method private declared-synchronized b(ZZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/datami/smi/a/i;->c(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()Lcom/datami/smi/a/b;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/a/a;->b:Lcom/datami/smi/a/b;

    return-object v0
.end method

.method private e()Lcom/datami/smi/a/i;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/a/a;->c:Lcom/datami/smi/a/i;

    return-object v0
.end method

.method private f()Lcom/datami/smi/a/c;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/a/a;->d:Lcom/datami/smi/a/c;

    return-object v0
.end method

.method private g()Ljava/util/HashMap;
    .locals 8

    const/16 v7, 0x82

    const/16 v6, 0x2f

    const/16 v5, 0xd

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/datami/smi/a/a;->c()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget v1, Lcom/datami/smi/a/a;->g:I

    ushr-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/datami/smi/a/a;->f:[B

    aget-byte v2, v2, v5

    sget-object v3, Lcom/datami/smi/a/a;->f:[B

    aget-byte v3, v3, v6

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/datami/smi/a/i;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/datami/smi/a/a;->f:[B

    const/16 v2, 0x71

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/a/a;->f:[B

    aget-byte v2, v2, v5

    sget-object v3, Lcom/datami/smi/a/a;->f:[B

    aget-byte v3, v3, v7

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/datami/smi/a/i;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x35

    sget-object v2, Lcom/datami/smi/a/a;->f:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/a/a;->f:[B

    aget-byte v3, v3, v6

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/datami/smi/a/i;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/datami/smi/a/a;->f:[B

    const/16 v2, 0x6d

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/a/a;->f:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/a/a;->f:[B

    aget-byte v3, v3, v7

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/datami/smi/a/i;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x67

    sget-object v2, Lcom/datami/smi/a/a;->f:[B

    const/16 v3, 0x8b

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x26

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/datami/smi/a/b;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x23

    sget-object v2, Lcom/datami/smi/a/a;->f:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    const/16 v3, 0x28

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/datami/smi/a/c;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x45

    sget-object v2, Lcom/datami/smi/a/a;->f:[B

    const/16 v3, 0x2d

    aget-byte v2, v2, v3

    const/16 v3, 0x32

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/datami/smi/a/c;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x33

    sget-object v2, Lcom/datami/smi/a/a;->f:[B

    const/16 v3, 0x29

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x2e

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/datami/smi/d/c;->a:Lcom/datami/smi/d/c;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static h()V
    .locals 0

    invoke-static {}, Lcom/datami/smi/a/c;->c()V

    return-void
.end method

.method private static i()Lcom/datami/smi/Analytics;
    .locals 4

    new-instance v0, Lcom/datami/smi/Analytics;

    invoke-direct {v0}, Lcom/datami/smi/Analytics;-><init>()V

    invoke-static {}, Lcom/datami/smi/a/b;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/datami/smi/Analytics;->setSdDataUsage(J)V

    invoke-static {}, Lcom/datami/smi/a/i;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/datami/smi/Analytics;->setCellularSessionTime(J)V

    invoke-static {}, Lcom/datami/smi/a/i;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/datami/smi/Analytics;->setWifiSessionTime(J)V

    return-object v0
.end method

.method private j()Lcom/datami/smi/Analytics;
    .locals 4

    invoke-virtual {p0}, Lcom/datami/smi/a/a;->c()V

    new-instance v0, Lcom/datami/smi/Analytics;

    invoke-direct {v0}, Lcom/datami/smi/Analytics;-><init>()V

    invoke-static {}, Lcom/datami/smi/a/b;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/datami/smi/Analytics;->setSdDataUsage(J)V

    invoke-static {}, Lcom/datami/smi/a/i;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/datami/smi/Analytics;->setCellularSessionTime(J)V

    invoke-static {}, Lcom/datami/smi/a/i;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/datami/smi/Analytics;->setWifiSessionTime(J)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/datami/smi/SmiSdk;->isForeground()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/datami/smi/a/i;->b(ZZ)V

    invoke-static {}, Lcom/datami/smi/SmiSdk;->isForeground()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/datami/smi/a/b;->b(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ZZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/datami/smi/a/b;->c(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Z)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/datami/smi/b/m;->E()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    :try_start_1
    invoke-static {v0, p1}, Lcom/datami/smi/a/i;->a(ZZ)V

    invoke-static {v0, p1}, Lcom/datami/smi/a/b;->a(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    const/16 v2, 0x71

    :try_start_2
    sget-object v3, Lcom/datami/smi/a/a;->f:[B

    const/16 v4, 0xd

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/a/a;->f:[B

    const/16 v5, 0x9

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x85

    sget-object v4, Lcom/datami/smi/a/a;->f:[B

    const/16 v5, 0x1d

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/a/a;->f:[B

    const/16 v6, 0x29

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/datami/smi/b/m;->E()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/datami/smi/SmiSdk;->isForeground()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/datami/smi/a/a;->b(ZZ)V

    invoke-static {}, Lcom/datami/smi/SmiSdk;->isForeground()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/datami/smi/a/a;->a(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    const/16 v2, 0x71

    :try_start_2
    sget-object v3, Lcom/datami/smi/a/a;->f:[B

    const/16 v4, 0xd

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/a/a;->f:[B

    const/16 v5, 0x9

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x85

    sget-object v4, Lcom/datami/smi/a/a;->f:[B

    const/16 v5, 0x1d

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/a/a;->f:[B

    const/16 v6, 0x29

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/a/a;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
