.class public Lcom/datami/smi/SmiSdk;
.super Ljava/lang/Object;


# static fields
.field private static final $:[B

.field private static $$:I

.field public static final TAG:Ljava/lang/String;

.field private static allowUserMessaging:Z

.field private static authCallInProgress:Z

.field private static isForeground:Z

.field public static mActivityCallback:Lcom/datami/smi/a;

.field public static mContext:Landroid/content/Context;

.field public static mIconId:I

.field private static mNetworkReceiver:Lcom/datami/smi/NWChangeReceiver;

.field private static millis:J


# direct methods
.method private static $(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/String;

    rsub-int v3, p2, 0x15e

    rsub-int/lit8 v2, p1, 0x29

    add-int/lit8 v0, p0, 0x45

    sget-object v8, Lcom/datami/smi/SmiSdk;->$:[B

    new-array v1, v2, [B

    add-int/lit8 v2, v2, -0x1

    if-nez v8, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v1, v0, -0x1

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v3, v4

    if-ne v4, v2, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v0

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x161

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v0, 0x9b

    sput v0, Lcom/datami/smi/SmiSdk;->$$:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v2, 0xbd

    aget-byte v1, v1, v2

    const/16 v2, 0x24

    const/16 v3, 0xfc

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/datami/smi/SmiSdk;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/SmiSdk;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/datami/smi/SmiSdk;->mIconId:I

    sput-boolean v4, Lcom/datami/smi/SmiSdk;->isForeground:Z

    sput-boolean v4, Lcom/datami/smi/SmiSdk;->allowUserMessaging:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/datami/smi/SmiSdk;->millis:J

    sput-boolean v4, Lcom/datami/smi/SmiSdk;->authCallInProgress:Z

    sput-object v5, Lcom/datami/smi/SmiSdk;->mActivityCallback:Lcom/datami/smi/a;

    sput-object v5, Lcom/datami/smi/SmiSdk;->mNetworkReceiver:Lcom/datami/smi/NWChangeReceiver;

    return-void

    :array_0
    .array-data 1
        0x40t
        0x10t
        -0x35t
        0x6at
        0x26t
        0x9t
        -0x14t
        0xct
        -0x2t
        -0x4t
        -0x43t
        0x56t
        -0x2t
        -0x5t
        -0x4bt
        0x9t
        0x47t
        0x8t
        -0x8t
        0x1t
        -0x4bt
        0x50t
        0x4t
        -0x51t
        0x46t
        0x9t
        0x4t
        0x5t
        0x6t
        -0x4ft
        -0xct
        0xbt
        -0x9t
        -0x6t
        0x8t
        0x4t
        -0x2t
        0xct
        0x6t
        -0x58t
        0x44t
        0x6t
        -0x6t
        0xet
        -0x6t
        -0x1t
        0x0t
        -0x43t
        0xet
        -0xct
        0x47t
        0xat
        0x4t
        -0xat
        0xct
        -0x2t
        0x7t
        -0x6t
        -0x9t
        -0x43t
        0x1et
        -0x1ct
        0x32t
        -0x10t
        0xat
        0x7t
        -0x53t
        0x2ft
        0x14t
        0xdt
        -0x7t
        -0x44t
        0x44t
        -0x1t
        0xet
        -0x4dt
        0x4ft
        0x2t
        0x6t
        -0x53t
        0x43t
        0x4t
        -0x44t
        0x51t
        -0xet
        0x13t
        0x1t
        -0xdt
        0x0t
        -0x43t
        0x42t
        0x13t
        -0x52t
        0x43t
        0xbt
        -0xat
        0xet
        -0x2t
        0xat
        0xat
        -0x3t
        -0xbt
        0x2t
        -0x4t
        0x2t
        0x10t
        -0xbt
        -0xet
        0x1ct
        -0x1at
        -0x2t
        0x14t
        -0x12t
        0x26t
        0x9t
        -0x14t
        0xct
        -0x2t
        -0x4t
        -0x43t
        0x56t
        -0x2t
        -0x5t
        -0x31t
        -0x19t
        -0x1t
        0x8t
        0x2t
        0x4t
        -0x8t
        0x6t
        -0x6t
        -0x46t
        0x45t
        0x12t
        -0x4t
        -0x3t
        -0x2t
        -0x5t
        -0x1t
        0x14t
        -0xet
        -0x44t
        0x42t
        0x15t
        0x0t
        -0xbt
        0x13t
        0xat
        -0x9t
        0x6t
        0x6t
        -0x6t
        -0x46t
        0x33t
        0x14t
        -0x37t
        0x15t
        0x15t
        0x0t
        -0xbt
        -0x27t
        0x46t
        0x12t
        -0x10t
        0xat
        0x7t
        -0x53t
        0x4at
        0x6t
        -0x4dt
        0x27t
        0x2t
        0xet
        -0x9t
        0xft
        -0x2t
        -0x5t
        -0x4t
        -0x35t
        0x41t
        -0x8t
        0x10t
        -0x45t
        0x36t
        0xdt
        0x0t
        0x1t
        -0x3ft
        0x16t
        0xdt
        0x0t
        0x1t
        -0x8t
        -0x1t
        0x12t
        -0xat
        0xet
        -0xct
        0xct
        0x6t
        0x7t
        -0x1bt
        0x6t
        -0x6t
        0xet
        -0x6t
        -0x1t
        -0x6t
        0x6t
        0x3t
        -0x4t
        0x1t
        0x0t
        0x4t
        0x3t
        -0xet
        0x0t
        -0x43t
        0x42t
        0xet
        -0x9t
        0xft
        -0x2t
        -0x5t
        -0x4t
        -0x43t
        0x57t
        -0x10t
        0xet
        0x2t
        -0x9t
        0x7t
        0x0t
        0x26t
        0x9t
        -0x14t
        0xct
        -0x2t
        -0x4t
        -0x43t
        0x56t
        -0x2t
        -0x5t
        -0x4bt
        0xet
        -0xct
        0x49t
        0x8t
        0x5t
        0x2t
        -0x5t
        -0xct
        0xdt
        -0x7t
        -0x44t
        0x4at
        0xbt
        -0x52t
        0x4ft
        0x8t
        -0x8t
        0x1t
        -0x4bt
        0x50t
        0x4t
        -0x51t
        0x46t
        0x9t
        0x4t
        0x5t
        0x6t
        -0x3et
        -0x19t
        -0xdt
        0x12t
        0x26t
        0x9t
        -0x14t
        0xct
        -0x2t
        -0x4t
        -0x43t
        0x54t
        -0xet
        0x8t
        -0x4at
        0x4ct
        -0x5t
        0x15t
        -0x58t
        0x9t
        0x47t
        0x8t
        -0x8t
        0x1t
        -0x4bt
        0x50t
        0x4t
        -0x51t
        0x46t
        0x9t
        0x4t
        0x5t
        0x6t
        -0x4ft
        0x28t
        -0x8t
        0x1t
        -0x4bt
        0x44t
        0xdt
        0x0t
        0x7t
        -0xet
        0x14t
        -0x3t
        -0x1t
        0x10t
        -0x20t
        -0xet
        -0x2t
        0x35t
        0x0t
        -0xbt
        -0x47t
        0x47t
        -0x4t
        0x9t
        0x4t
        -0x6t
        0x0t
        -0x29t
        -0x19t
        -0x4t
        -0x1bt
        0x16t
        0x5t
        -0x7t
        0x34t
        -0x14t
        0x3t
        0xct
        0x5t
        -0xat
        0x7t
        0x0t
        -0x4dt
        0x1bt
        -0x19t
        -0xat
        0x5t
        -0x7t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/datami/smi/SmiSdk;->authCallInProgress:Z

    return p0
.end method

.method public static addSdStateChangeListener(Lcom/datami/smi/SdStateChangeListener;)V
    .locals 0

    invoke-static {p0}, Lcom/datami/smi/b/m;->a(Lcom/datami/smi/SdStateChangeListener;)V

    return-void
.end method

.method public static allowUserMessaging()Z
    .locals 1

    sget-boolean v0, Lcom/datami/smi/SmiSdk;->allowUserMessaging:Z

    return v0
.end method

.method public static appVisibility(Landroid/content/Context;Z)V
    .locals 7

    const/16 v6, 0x43

    sput-boolean p1, Lcom/datami/smi/SmiSdk;->isForeground:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v2, 0x7b

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v3, 0x11

    aget-byte v2, v2, v3

    const/16 v3, 0x140

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/datami/smi/SmiSdk;->isForeground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/datami/smi/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/datami/smi/a/a;->a()Lcom/datami/smi/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/datami/smi/a/a;->b(Z)V

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/datami/smi/SmiSdk;->millis:J

    invoke-static {p0}, Lcom/datami/smi/c;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/datami/smi/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/datami/smi/c;->b()I

    move-result v0

    invoke-static {v0}, Lcom/datami/smi/c;->b(I)V

    :cond_0
    invoke-static {}, Lcom/datami/smi/NWChangeReceiver;->handleNwChnageInBg()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v1, 0x2b

    aget-byte v0, v0, v1

    const/16 v1, 0xcb

    invoke-static {v0, v0, v1}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    invoke-static {}, Lcom/datami/smi/SmiIntentService;->sendReAuthEventIntent()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sget-object v1, Lcom/datami/smi/SmiSdk;->$:[B

    aget-byte v1, v1, v6

    and-int/lit16 v2, v1, 0xf5

    sget-object v3, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v4, 0x2e

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/datami/smi/SmiSdk;->millis:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/datami/smi/SmiSdk;->$:[B

    aget-byte v1, v1, v6

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/datami/smi/SmiSdk;->$:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v4, 0x11f

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/datami/smi/d/c;->a:Lcom/datami/smi/d/c;

    invoke-static {v2}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/datami/smi/SmiSdk;->$:[B

    aget-byte v1, v1, v6

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x23

    sget-object v3, Lcom/datami/smi/SmiSdk;->$:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {p0}, Lcom/datami/smi/c;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getAnalytics()Lcom/datami/smi/Analytics;
    .locals 4

    invoke-static {}, Lcom/datami/smi/a/a;->a()Lcom/datami/smi/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datami/smi/a/a;->c()V

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

.method public static getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/datami/smi/SmiSdk;->getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILcom/datami/smi/h;ZLjava/util/List;)V

    return-void
.end method

.method public static getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/datami/smi/SmiSdk;->getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILcom/datami/smi/h;ZLjava/util/List;)V

    return-void
.end method

.method private static getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILcom/datami/smi/h;ZLjava/util/List;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/datami/smi/SmiSdk;->getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILcom/datami/smi/h;ZLjava/util/List;Z)V

    return-void
.end method

.method private static getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILcom/datami/smi/h;ZLjava/util/List;Z)V
    .locals 10

    sput p3, Lcom/datami/smi/SmiSdk;->mIconId:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    sput-boolean p5, Lcom/datami/smi/SmiSdk;->allowUserMessaging:Z

    invoke-static {}, Lcom/datami/smi/a/a;->a()Lcom/datami/smi/a/a;

    invoke-static {}, Lcom/datami/smi/a/c;->c()V

    if-eqz p5, :cond_1

    sget-object v0, Lcom/datami/smi/SmiSdk;->mActivityCallback:Lcom/datami/smi/a;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/datami/smi/a;

    invoke-direct {v0}, Lcom/datami/smi/a;-><init>()V

    sput-object v0, Lcom/datami/smi/SmiSdk;->mActivityCallback:Lcom/datami/smi/a;

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/datami/smi/SmiSdk;->mActivityCallback:Lcom/datami/smi/a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    if-nez p7, :cond_4

    new-instance v0, Lcom/datami/smi/b/g;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/datami/smi/b/g;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IZLjava/util/List;)V

    invoke-virtual {v0}, Lcom/datami/smi/b/g;->start()V

    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/datami/smi/b/g;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-gez v1, :cond_5

    :cond_2
    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/datami/smi/SmiSdk;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v7, 0x2e

    aget-byte v6, v6, v7

    or-int/lit8 v7, v6, 0x1d

    sget-object v8, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v9, 0x1f

    aget-byte v8, v8, v9

    invoke-static {v6, v7, v8}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/datami/smi/b/m;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IZLjava/util/List;)V

    :cond_5
    invoke-static {}, Lcom/datami/smi/SmiSdk;->registerConnectivityChangeReceiver()V

    return-void
.end method

.method public static getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/datami/smi/SmiSdk;->getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILcom/datami/smi/h;ZLjava/util/List;)V

    return-void
.end method

.method public static getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IZLjava/util/List;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/datami/smi/SmiSdk;->getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILcom/datami/smi/h;ZLjava/util/List;)V

    return-void
.end method

.method public static getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/datami/smi/SmiSdk;->getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILcom/datami/smi/h;ZLjava/util/List;)V

    return-void
.end method

.method protected static getAppSDAuthInternal(Landroid/content/Context;Ljava/lang/String;ILcom/datami/smi/h;Z)V
    .locals 4

    sput p2, Lcom/datami/smi/SmiSdk;->mIconId:I

    sput-boolean p4, Lcom/datami/smi/SmiSdk;->allowUserMessaging:Z

    sget-boolean v0, Lcom/datami/smi/SmiSdk;->authCallInProgress:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/SmiSdk;->TAG:Ljava/lang/String;

    const/16 v1, 0x24

    sget-object v2, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v3, 0x86

    aget-byte v2, v2, v3

    const/16 v3, 0xe1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/datami/smi/SmiSdk;->authCallInProgress:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/datami/smi/j;

    invoke-direct {v1, p0, p1, p3}, Lcom/datami/smi/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/datami/smi/h;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static getOmsUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0, p1}, Lcom/datami/smi/SmiIntentService;->init(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/datami/smi/b/m;->a(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/datami/smi/b/m;->R()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/datami/smi/SmiResult;
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, p1, p2, v0, v1}, Lcom/datami/smi/SmiSdk;->getSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/datami/smi/SmiResult;

    move-result-object v0

    return-object v0
.end method

.method public static getSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/datami/smi/SmiResult;
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, p2, p3, v0}, Lcom/datami/smi/SmiSdk;->getSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/datami/smi/SmiResult;

    move-result-object v0

    return-object v0
.end method

.method public static getSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/datami/smi/SmiResult;
    .locals 8

    const/16 v5, 0x2e

    const/16 v4, 0x2b

    const/16 v3, 0x16

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/datami/smi/SmiSdk;->$:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v3, 0x33

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v4, 0xa8

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/datami/smi/SmiSdk;->$:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    or-int/lit8 v2, v1, 0x14

    const/16 v3, 0x2c

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-boolean v0, Lcom/datami/smi/b/m;->j:Z

    if-nez v0, :cond_5

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/datami/smi/SmiSdk;->$:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/SmiSdk;->$:[B

    aget-byte v2, v2, v4

    const/16 v3, 0x15a

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/SmiSdk;->$:[B

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v4, 0x6c

    aget-byte v3, v3, v4

    const/16 v4, 0xed

    invoke-static {v2, v3, v4}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-boolean v0, Lcom/datami/smi/b/m;->j:Z

    if-nez v0, :cond_7

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/SmiSdk;->$:[B

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/SmiSdk;->$:[B

    aget-byte v3, v3, v5

    or-int/lit8 v4, v3, 0x74

    invoke-static {v2, v3, v4}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_a

    sget-object v0, Lcom/datami/smi/SmiSdk;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v2, 0x43

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/datami/smi/SmiSdk;->$:[B

    aget-byte v2, v2, v4

    or-int/lit16 v3, v2, 0x80

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/datami/smi/SmiResult;

    invoke-direct {v6}, Lcom/datami/smi/SmiResult;-><init>()V

    sget-boolean v0, Lcom/datami/smi/b/m;->j:Z

    if-nez v0, :cond_8

    invoke-virtual {v6, p2}, Lcom/datami/smi/SmiResult;->setUrl(Ljava/lang/String;)V

    :cond_8
    sget-object v0, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    invoke-virtual {v6, v0}, Lcom/datami/smi/SmiResult;->setSdState(Lcom/datami/smi/SdState;)V

    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_ANDROID_VERSION_NOT_SUPPORTED:Lcom/datami/smi/SdReason;

    invoke-virtual {v6, v0}, Lcom/datami/smi/SmiResult;->setSdReason(Lcom/datami/smi/SdReason;)V

    :cond_9
    :goto_0
    return-object v6

    :cond_a
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c/e;->b:Ljava/lang/String;

    invoke-static {p0, p3, p1}, Lcom/datami/smi/SmiIntentService;->init(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/datami/smi/b/m;->a(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/datami/smi/b/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/datami/smi/b/m;

    move-result-object v1

    new-instance v6, Lcom/datami/smi/SmiResult;

    invoke-direct {v6}, Lcom/datami/smi/SmiResult;-><init>()V

    sget-boolean v0, Lcom/datami/smi/b/m;->j:Z

    if-eqz v0, :cond_e

    invoke-virtual {v1}, Lcom/datami/smi/b/m;->e()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    invoke-virtual {v1}, Lcom/datami/smi/b/m;->e()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_e

    :cond_b
    new-instance v0, Lcom/datami/smi/k;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/datami/smi/k;-><init>(Lcom/datami/smi/b/m;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/datami/smi/SmiResult;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_c
    :goto_1
    :try_start_2
    sget-boolean v0, Lcom/datami/smi/b/m;->j:Z

    if-eqz v0, :cond_f

    invoke-virtual {v6}, Lcom/datami/smi/SmiResult;->getSdState()Lcom/datami/smi/SdState;

    move-result-object v0

    sget-object v2, Lcom/datami/smi/SdState;->SD_AVAILABLE:Lcom/datami/smi/SdState;

    if-ne v0, v2, :cond_9

    new-instance v6, Lcom/datami/smi/SmiResult;

    invoke-direct {v6, v1}, Lcom/datami/smi/SmiResult;-><init>(Lcom/datami/smi/b/m;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    sget-object v3, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v4, 0xbd

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x21

    invoke-static {v2, v3, v4}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/datami/smi/SmiResult;

    invoke-direct {v6}, Lcom/datami/smi/SmiResult;-><init>()V

    sget-boolean v0, Lcom/datami/smi/b/m;->j:Z

    if-nez v0, :cond_d

    invoke-virtual {v6, p2}, Lcom/datami/smi/SmiResult;->setUrl(Ljava/lang/String;)V

    :cond_d
    sget-object v0, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    invoke-virtual {v6, v0}, Lcom/datami/smi/SmiResult;->setSdState(Lcom/datami/smi/SdState;)V

    sget-object v0, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_REASON_UNKNOWN:Lcom/datami/smi/SdReason;

    invoke-virtual {v6, v0}, Lcom/datami/smi/SmiResult;->setSdReason(Lcom/datami/smi/SdReason;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v4, 0x2e

    aget-byte v3, v3, v4

    or-int/lit8 v4, v3, 0x1d

    sget-object v5, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v7, 0x1f

    aget-byte v5, v5, v7

    invoke-static {v3, v4, v5}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_e
    invoke-virtual {v1}, Lcom/datami/smi/b/m;->e()I

    move-result v0

    sget-object v2, Lcom/datami/smi/SdState;->WIFI:Lcom/datami/smi/SdState;

    invoke-virtual {v2}, Lcom/datami/smi/SdState;->getStatusCode()I

    move-result v2

    if-ne v0, v2, :cond_c

    sget-object v0, Lcom/datami/smi/SdState;->WIFI:Lcom/datami/smi/SdState;

    invoke-virtual {v6, v0}, Lcom/datami/smi/SmiResult;->setSdState(Lcom/datami/smi/SdState;)V

    sget-boolean v0, Lcom/datami/smi/b/m;->j:Z

    if-nez v0, :cond_9

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v6, p2}, Lcom/datami/smi/SmiResult;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v1}, Lcom/datami/smi/b/m;->e()I

    move-result v0

    sget-object v2, Lcom/datami/smi/SdState;->SD_AVAILABLE:Lcom/datami/smi/SdState;

    invoke-virtual {v2}, Lcom/datami/smi/SdState;->getStatusCode()I

    move-result v2

    if-ne v0, v2, :cond_9

    new-instance v6, Lcom/datami/smi/SmiResult;

    invoke-direct {v6, v1}, Lcom/datami/smi/SmiResult;-><init>(Lcom/datami/smi/b/m;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public static getSdStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/datami/smi/b/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoSDAuth(Ljava/lang/Object;)Lcom/datami/smi/SmiResult;
    .locals 1

    invoke-static {p0}, Lcom/datami/smi/b/m;->a(Ljava/lang/Object;)Lcom/datami/smi/SmiResult;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Lcom/datami/smi/SmiResult;
    .locals 1

    invoke-static {p0, p3, p1}, Lcom/datami/smi/SmiIntentService;->init(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p1, p2, p3}, Lcom/datami/smi/b/m;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Lcom/datami/smi/SmiResult;

    move-result-object v0

    return-object v0
.end method

.method public static getVpnSdAuth(Ljava/lang/String;Landroid/content/Context;)Lcom/datami/smi/SmiResult;
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/datami/smi/b/m;->j:Z

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    invoke-static {p0, p1, v0, v1, v2}, Lcom/datami/smi/SmiSdk;->getSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/datami/smi/SmiResult;

    move-result-object v0

    return-object v0
.end method

.method public static getWebViewSDAuth(Landroid/webkit/WebView;)V
    .locals 0

    invoke-static {p0}, Lcom/datami/smi/b/m;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method public static initSponsoredData(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/datami/smi/SmiSdk;->getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILcom/datami/smi/h;ZLjava/util/List;)V

    return-void
.end method

.method public static initSponsoredData(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IZLjava/util/List;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/datami/smi/SmiSdk;->getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILcom/datami/smi/h;ZLjava/util/List;)V

    return-void
.end method

.method public static initSponsoredDataSync(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, v4

    invoke-static/range {v0 .. v7}, Lcom/datami/smi/SmiSdk;->getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILcom/datami/smi/h;ZLjava/util/List;Z)V

    return-void
.end method

.method public static initSponsoredDataSync(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IZLjava/util/List;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Lcom/datami/smi/SmiSdk;->getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILcom/datami/smi/h;ZLjava/util/List;Z)V

    return-void
.end method

.method public static isDataMiUrl(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isForeground()Z
    .locals 1

    sget-boolean v0, Lcom/datami/smi/SmiSdk;->isForeground:Z

    return v0
.end method

.method private static registerConnectivityChangeReceiver()V
    .locals 6

    sget-object v0, Lcom/datami/smi/SmiSdk;->mNetworkReceiver:Lcom/datami/smi/NWChangeReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/datami/smi/NWChangeReceiver;

    invoke-direct {v0}, Lcom/datami/smi/NWChangeReceiver;-><init>()V

    sput-object v0, Lcom/datami/smi/SmiSdk;->mNetworkReceiver:Lcom/datami/smi/NWChangeReceiver;

    sget-object v1, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/datami/smi/NWChangeReceiver;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/datami/smi/SmiSdk;->mNetworkReceiver:Lcom/datami/smi/NWChangeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v4, 0x6c

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v5, 0x1b

    aget-byte v4, v4, v5

    const/16 v5, 0xb1

    invoke-static {v3, v4, v5}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static registerEvent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/datami/smi/SmiSdk;->registerEvent(Ljava/lang/String;Ljava/util/Properties;)V

    return-void
.end method

.method public static registerEvent(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v2, 0x2e

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v3, 0x16

    aget-byte v2, v2, v3

    const/16 v3, 0x120

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1}, Lcom/datami/smi/b/m;->a(Ljava/lang/String;Ljava/util/Properties;)V

    return-void
.end method

.method public static sendStopSponsoredDataIntent()V
    .locals 4

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    const-class v2, Lcom/datami/smi/SmiIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v2, 0x2b

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SmiSdk;->$:[B

    const/16 v3, 0x3c

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xf8

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiSdk;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public static startSponsoredData()V
    .locals 0

    invoke-static {}, Lcom/datami/smi/b/m;->M()V

    return-void
.end method

.method public static stopSponsoredData()V
    .locals 0

    invoke-static {}, Lcom/datami/smi/SmiSdk;->sendStopSponsoredDataIntent()V

    return-void
.end method
