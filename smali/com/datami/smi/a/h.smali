.class public final Lcom/datami/smi/a/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "[dmi]SelfDataMonitoring"

.field private static b:J

.field private static c:J

.field private static d:I

.field private static final e:[B

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/16 v0, 0x76

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/a/h;->e:[B

    const/16 v0, 0x8c

    sput v0, Lcom/datami/smi/a/h;->f:I

    sput-wide v2, Lcom/datami/smi/a/h;->b:J

    sput-wide v2, Lcom/datami/smi/a/h;->c:J

    const/4 v0, -0x1

    sput v0, Lcom/datami/smi/a/h;->d:I

    return-void

    nop

    :array_0
    .array-data 1
        0x5t
        0x32t
        0x3ct
        0xct
        -0x3t
        -0x12t
        0xat
        -0xet
        0xct
        -0xct
        -0x6t
        -0x30t
        -0x1t
        0x4ft
        -0x35t
        -0x25t
        0x57t
        -0x23t
        -0x38t
        0x4t
        0xet
        -0xft
        0x52t
        -0x1bt
        0x19t
        -0x30t
        -0x1t
        0x4ft
        -0x25t
        -0x1et
        -0x14t
        0x12t
        0x40t
        -0x1bt
        0x19t
        -0x30t
        -0x1t
        0x4ft
        -0x33t
        -0x27t
        0x57t
        -0x23t
        -0x38t
        0x4t
        0xet
        -0xft
        0x52t
        -0x1bt
        0x19t
        -0xat
        -0xat
        0x3t
        0xbt
        0x9t
        -0x13t
        -0x8t
        0x5t
        0x21t
        -0x1et
        -0x14t
        0x12t
        0x13t
        -0x23t
        0x0t
        0x4t
        -0xct
        0x4t
        -0x4t
        0x8t
        -0x6t
        0x6t
        -0x30t
        -0x1t
        0x4ft
        -0x51t
        -0x3t
        0x2t
        0xbt
        -0x3t
        -0xft
        -0x1t
        0x52t
        -0x56t
        0xbt
        0x4t
        0x43t
        -0x1bt
        0x19t
        -0x34t
        0xet
        0x23t
        -0x25t
        -0x1et
        -0x14t
        0x12t
        0x40t
        -0x36t
        -0x1ft
        0x11t
        -0x7t
        0x1t
        0x44t
        -0x1bt
        0x19t
        -0x23t
        0x2t
        -0xat
        0x3t
        0x53t
        -0x45t
        -0x6t
        0x4t
        -0xbt
        -0x7t
        0x53t
        -0x34t
        0xdt
        -0x10t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 11

    const/4 v5, 0x0

    add-int/lit8 v2, p0, 0x8

    sget-object v7, Lcom/datami/smi/a/h;->e:[B

    rsub-int/lit8 v0, p2, 0x67

    new-instance v8, Ljava/lang/String;

    rsub-int/lit8 v3, p1, 0x61

    new-array v1, v2, [B

    if-nez v7, :cond_1

    move-object v3, v1

    move v4, v5

    move v6, v0

    move v1, v2

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    move v0, v4

    :goto_1
    int-to-byte v9, v1

    add-int/lit8 v4, v0, 0x1

    aput-byte v9, v3, v0

    add-int/lit8 v6, v6, 0x1

    if-ne v4, v2, :cond_0

    invoke-direct {v8, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    aget-byte v0, v7, v6

    goto :goto_0

    :cond_1
    move v6, v0

    move v0, v5

    move-object v10, v1

    move v1, v3

    move-object v3, v10

    goto :goto_1
.end method

.method private static a()V
    .locals 10

    const/16 v3, 0x3f

    const/16 v9, 0x63

    const/16 v8, 0x46

    const/16 v7, 0x39

    const/16 v6, 0x15

    invoke-static {}, Lcom/datami/smi/b/m;->K()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/datami/smi/a/h;->e:[B

    aget-byte v0, v0, v6

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/a/h;->e:[B

    aget-byte v1, v1, v8

    or-int/lit8 v2, v1, 0x31

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/h;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/a/h;->e:[B

    aget-byte v0, v0, v9

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/a/h;->e:[B

    const/16 v2, 0x62

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/a/h;->e:[B

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/h;->a(III)Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/datami/smi/a/h;->d:I

    if-gez v0, :cond_3

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/datami/smi/a/h;->e:[B

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x64

    invoke-static {v2, v2, v3}, Lcom/datami/smi/a/h;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    sput v0, Lcom/datami/smi/a/h;->d:I

    :cond_3
    sget-object v0, Lcom/datami/smi/a/h;->e:[B

    aget-byte v0, v0, v6

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/a/h;->e:[B

    aget-byte v1, v1, v8

    or-int/lit8 v2, v1, 0x31

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/h;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/a/h;->e:[B

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/a/h;->e:[B

    aget-byte v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/smi/a/h;->e:[B

    aget-byte v3, v3, v7

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/h;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/datami/smi/a/h;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget v0, Lcom/datami/smi/a/h;->d:I

    if-lez v0, :cond_0

    sget v0, Lcom/datami/smi/a/h;->d:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    sget-object v2, Lcom/datami/smi/a/h;->e:[B

    aget-byte v2, v2, v6

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/a/h;->e:[B

    aget-byte v3, v3, v8

    or-int/lit8 v4, v3, 0x31

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/h;->a(III)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/a/h;->e:[B

    aget-byte v3, v3, v9

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/a/h;->e:[B

    aget-byte v4, v4, v7

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x5d

    invoke-static {v3, v4, v5}, Lcom/datami/smi/a/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/datami/smi/a/h;->d:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/datami/smi/a/h;->e:[B

    aget-byte v2, v2, v6

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/a/h;->e:[B

    aget-byte v3, v3, v8

    or-int/lit8 v4, v3, 0x31

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/h;->a(III)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/a/h;->e:[B

    aget-byte v3, v3, v9

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/a/h;->e:[B

    aget-byte v4, v4, v7

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lcom/datami/smi/a/h;->e:[B

    const/16 v6, 0x6d

    aget-byte v5, v5, v6

    neg-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/datami/smi/a/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/datami/smi/a/h;->d:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    sget-wide v4, Lcom/datami/smi/a/h;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    sget-wide v2, Lcom/datami/smi/a/h;->c:J

    sget-wide v4, Lcom/datami/smi/a/h;->b:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    sput-wide v2, Lcom/datami/smi/a/h;->c:J

    :cond_4
    sput-wide v0, Lcom/datami/smi/a/h;->b:J

    goto/16 :goto_0
.end method

.method private static b()V
    .locals 5

    const/16 v4, 0x39

    sget v0, Lcom/datami/smi/a/h;->d:I

    if-gez v0, :cond_1

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/datami/smi/a/h;->e:[B

    const/16 v3, 0x3f

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x64

    invoke-static {v2, v2, v3}, Lcom/datami/smi/a/h;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    sput v0, Lcom/datami/smi/a/h;->d:I

    :cond_1
    sget-object v0, Lcom/datami/smi/a/h;->e:[B

    const/16 v1, 0x15

    aget-byte v0, v0, v1

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/a/h;->e:[B

    const/16 v2, 0x46

    aget-byte v1, v1, v2

    or-int/lit8 v2, v1, 0x31

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/h;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/a/h;->e:[B

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/a/h;->e:[B

    aget-byte v2, v2, v4

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/smi/a/h;->e:[B

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/h;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/datami/smi/a/h;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static c()J
    .locals 11

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/datami/smi/f/g;->e()J

    move-result-wide v4

    sget-wide v0, Lcom/datami/smi/a/h;->c:J

    sub-long/2addr v0, v4

    sget-object v6, Lcom/datami/smi/a/h;->e:[B

    const/16 v7, 0x15

    aget-byte v6, v6, v7

    neg-int v6, v6

    sget-object v7, Lcom/datami/smi/a/h;->e:[B

    const/16 v8, 0x46

    aget-byte v7, v7, v8

    or-int/lit8 v8, v7, 0x31

    invoke-static {v6, v7, v8}, Lcom/datami/smi/a/h;->a(III)Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/datami/smi/a/h;->e:[B

    const/16 v8, 0x33

    aget-byte v7, v7, v8

    sget-object v8, Lcom/datami/smi/a/h;->e:[B

    const/16 v9, 0x39

    aget-byte v8, v8, v9

    add-int/lit8 v8, v8, -0x1

    sget-object v9, Lcom/datami/smi/a/h;->e:[B

    const/16 v10, 0xd

    aget-byte v9, v9, v10

    invoke-static {v7, v8, v9}, Lcom/datami/smi/a/h;->a(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v8, Lcom/datami/smi/a/h;->c:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/datami/smi/a/h;->e:[B

    const/16 v8, 0x35

    aget-byte v7, v7, v8

    sget-object v8, Lcom/datami/smi/a/h;->e:[B

    const/16 v9, 0x20

    aget-byte v8, v8, v9

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Lcom/datami/smi/a/h;->e:[B

    const/16 v10, 0x75

    aget-byte v9, v9, v10

    neg-int v9, v9

    invoke-static {v7, v8, v9}, Lcom/datami/smi/a/h;->a(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/datami/smi/f/g;->e()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v6, v0, v2

    if-ltz v6, :cond_0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    :cond_0
    move-wide v0, v2

    :cond_1
    return-wide v0
.end method
