.class public Lcom/datami/smi/SmiIntentService;
.super Landroid/app/IntentService;


# static fields
.field private static final $:[B

.field private static $$:I = 0x0

.field public static final SMI_INTENT_ACTION_APP_SD_AUTH:Ljava/lang/String; = "APP_SD_AUTH"

.field public static final SMI_INTENT_ACTION_CLEAR_CACHE:Ljava/lang/String; = "CLEAR_CACHE"

.field public static final SMI_INTENT_ACTION_GLOBAL_DISCOVERY_PING:Ljava/lang/String; = "GLOBAL_DISCOVERY_PING"

.field public static final SMI_INTENT_ACTION_GW_PING_TEST:Ljava/lang/String; = "GW_PING_TEST"

.field public static final SMI_INTENT_ACTION_SDK_EVENT:Ljava/lang/String; = "SDK_EVENT"

.field public static final SMI_INTENT_ACTION_STOP_SD_DATA:Ljava/lang/String; = "STOP_SD_DATA"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method private static $(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    rsub-int v3, p1, 0x1fd

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/datami/smi/SmiIntentService;->$:[B

    rsub-int/lit8 v0, p0, 0x7c

    add-int/lit8 v1, p2, 0x1

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-nez v8, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    neg-int v0, v0

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v2, v0

    move v0, v4

    :goto_1
    int-to-byte v4, v2

    aput-byte v4, v3, v0

    add-int/lit8 v4, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v5

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x1fd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v0, 0x1d

    sput v0, Lcom/datami/smi/SmiIntentService;->$$:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v2, 0x126

    aget-byte v1, v1, v2

    const/16 v2, 0x1a8

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0xe

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/datami/smi/SmiIntentService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/SmiIntentService;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x40t
        0x10t
        -0x35t
        0x6at
        -0x13t
        0x2t
        -0x2t
        -0x4t
        -0xdt
        0x11t
        0x1t
        0x44t
        -0x33t
        0x6t
        0x4t
        -0x16t
        0x16t
        -0x5t
        -0x6t
        0xft
        -0x9t
        -0x6t
        -0xbt
        0x1et
        -0x2t
        -0x11t
        0xbt
        -0x6t
        0x1t
        -0x11t
        0x1ct
        -0x9t
        0x7t
        0x4t
        -0x11t
        -0xdt
        0x1ct
        0x2t
        -0x2t
        -0x5t
        0x3t
        -0x2ft
        -0x1ft
        0x26t
        -0x19t
        -0xdt
        0xat
        -0x8t
        0x7t
        0x1t
        0x1bt
        -0x25t
        -0x6t
        0xft
        -0x9t
        -0x6t
        0x4ct
        -0x1t
        0x9t
        -0xct
        0x0t
        0x4t
        0x36t
        0xbt
        0x0t
        -0x5t
        -0x3t
        0xdt
        0x1t
        -0xbt
        -0x13t
        0x1bt
        -0x5t
        -0xat
        0x10t
        -0xct
        -0x7t
        0x11t
        -0xdt
        -0x7t
        -0x6t
        0xft
        0x7t
        -0x5t
        0x7t
        -0x9t
        -0x9t
        0x4t
        0xct
        -0x17t
        -0xft
        -0x3t
        0x8t
        -0x3t
        0x7t
        0x4bt
        -0x49t
        -0xat
        0x53t
        -0x4et
        -0x1t
        -0x5t
        0x54t
        -0x43t
        -0xct
        0x1t
        0x0t
        0x9t
        0x2t
        -0x11t
        0xft
        0x1t
        0x44t
        -0x53t
        0x4t
        0x4ft
        -0x52t
        0xdt
        -0xft
        -0x1t
        0x3t
        0x9t
        -0x5t
        0x7t
        0x0t
        0xct
        0x5t
        -0xft
        0x0t
        -0xft
        0xct
        0xft
        -0x1bt
        0x1et
        -0x14t
        0x1t
        0xct
        0x28t
        -0x5ct
        0x5ct
        -0x2et
        -0x9t
        0x37t
        -0x23t
        -0x25t
        0x7t
        -0xdt
        0x7t
        0x2t
        -0x13t
        0x15t
        -0x9t
        -0x9t
        0x2t
        0xat
        -0x6t
        0x1t
        0x22t
        -0x1dt
        -0xat
        -0x1t
        0xft
        -0x7t
        -0x14t
        0x1at
        -0x11t
        0x11t
        -0x9t
        -0x6t
        -0xct
        0x0t
        0x4t
        -0x3t
        0x39t
        0xbt
        0x0t
        -0x10t
        0x37t
        -0x50t
        0x7t
        -0x5t
        0x7t
        0x47t
        -0x54t
        0xft
        -0xet
        -0x1t
        0x54t
        -0x46t
        0x5t
        -0x8t
        -0x3t
        -0x9t
        0x3t
        0xdt
        0x44t
        -0x1t
        0x5t
        -0x1t
        -0xft
        0xct
        0xft
        -0x1bt
        0x1bt
        0x3t
        -0x13t
        0x13t
        -0xct
        0x1t
        0x0t
        0x9t
        0x2t
        -0x11t
        0xbt
        -0xdt
        0xdt
        -0xbt
        -0x5t
        -0x13t
        0x2t
        -0x2t
        -0x4t
        -0xdt
        0x11t
        0x1t
        0x44t
        -0x33t
        0x6t
        0x4t
        -0x16t
        0x16t
        -0x5t
        -0x6t
        0xft
        -0x9t
        -0x6t
        -0xbt
        0x1et
        -0x2t
        -0x11t
        0xbt
        -0x6t
        0x1t
        -0x11t
        0x18t
        -0x10t
        -0x8t
        0xft
        0x7t
        -0x5t
        0x7t
        -0x18t
        0xbt
        0xft
        -0xet
        -0x1t
        0xdt
        0x4t
        -0xbt
        0x0t
        -0x3t
        -0x8t
        0x2at
        -0x18t
        -0xet
        0x0t
        0x12t
        -0x6t
        -0x2t
        -0x5t
        0x7t
        -0x9t
        0x7t
        0x4t
        -0x11t
        -0xdt
        0x1ct
        0x2t
        -0x2t
        -0x5t
        0x3t
        0x6t
        -0xct
        0x1t
        0x25t
        -0x1bt
        -0x1at
        0x4t
        0x20t
        -0x25t
        -0x6t
        0xft
        -0x9t
        -0x6t
        0x21t
        -0x12t
        -0xdt
        -0x4t
        0xdt
        0x6t
        -0x2t
        0x45t
        -0x46t
        0x5t
        -0x8t
        -0x3t
        0x7t
        0x1t
        0x2at
        0x1at
        -0x2dt
        -0x5t
        0xct
        0x40t
        -0x47t
        0x3t
        0x8t
        0x44t
        -0x41t
        -0xdt
        0xat
        0x44t
        -0x4et
        0x9t
        -0x12t
        0x4et
        0x9t
        -0x44t
        -0x1t
        -0xbt
        0x4t
        -0x3t
        -0xat
        0xct
        0x8t
        -0x9t
        -0x6t
        0x1t
        0x53t
        -0x41t
        -0x11t
        0xdt
        0x45t
        -0x53t
        0x12t
        -0xct
        0x8t
        0x45t
        -0x53t
        0x4t
        0x4ft
        -0x54t
        0xft
        -0xdt
        0x5t
        0x4t
        -0x5t
        0xdt
        -0x13t
        0xbt
        -0x5t
        0x7t
        0x47t
        -0x54t
        0xct
        0x3t
        0x45t
        -0x4ct
        -0x3t
        0x0t
        -0x1t
        -0x10t
        0x37t
        -0x41t
        -0x12t
        -0x6t
        0xbt
        0xbt
        0x43t
        -0x50t
        0x7t
        -0x5t
        0x7t
        0x47t
        -0x54t
        0xft
        -0xet
        -0x1t
        0x54t
        -0x53t
        -0x2t
        0x12t
        -0x10t
        0xet
        -0xet
        0x0t
        -0xft
        0x0t
        -0xft
        0xct
        0xft
        -0x1bt
        0x1et
        -0x14t
        0x1t
        0xct
        0x2t
        -0xft
        0x33t
        -0x2ft
        0x0t
        0x1dt
        0xft
        0x3t
        -0x34t
        0x1t
        0xct
        0x48t
        -0x46t
        0x5t
        -0x8t
        -0x3t
        0x7t
        0x1t
        0x2at
        -0x1at
        0x4t
        0x20t
        -0x25t
        -0x6t
        0xft
        -0x9t
        -0x6t
        0x21t
        -0x12t
        -0xdt
        -0x4t
        0xdt
        0x6t
        -0x2t
        0x2t
        0xet
        -0xdt
        0x29t
        -0x1bt
        -0x27t
        0x3t
        0x24t
        -0x50t
        0x7t
        -0x5t
        0x7t
        0x47t
        -0x42t
        0x1t
        -0x2t
        -0x8t
        -0x5t
        -0x6t
        0xft
        -0x9t
        -0x6t
        0x54t
        -0x53t
        0xet
        -0xdt
        -0x4t
        0xdt
        0x6t
        -0x2t
        0x45t
        -0x41t
        -0x2t
        -0x11t
        0xbt
        -0x6t
        0x1t
        0x4et
        -0x1at
        0x1at
        0xft
        -0x7t
        0x20t
        -0x1at
        -0x14t
        -0x10t
        -0x8t
        0xft
        0x7t
        -0x5t
        0x7t
        -0x18t
        0xbt
        0xft
        -0xet
        -0x1t
        0x3t
        0x6t
        0x2ct
        -0x45t
        -0x13t
        0x15t
        -0x2t
        -0xbt
        -0x4t
        0xbt
        -0x6t
        0x1t
        0x4et
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v1, 0x1bb

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v2, 0x66

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v3, 0x13

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/datami/smi/SmiIntentService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static checkForLoop()Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    invoke-virtual {v2}, Lcom/datami/smi/c/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/datami/smi/c/d;

    sget-object v3, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/datami/smi/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/datami/smi/c/d;->run()V

    sget-object v2, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    invoke-virtual {v2}, Lcom/datami/smi/c/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/datami/smi/SmiIntentService;->TAG:Ljava/lang/String;

    sget v1, Lcom/datami/smi/SmiIntentService;->$$:I

    shl-int/lit8 v1, v1, 0x1

    const/16 v2, 0xc7

    sget v3, Lcom/datami/smi/SmiIntentService;->$$:I

    or-int/lit8 v3, v3, 0x20

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static checkForLoopCondition()Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    invoke-virtual {v2}, Lcom/datami/smi/c/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/datami/smi/c/d;

    sget-object v3, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/datami/smi/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/datami/smi/c/d;->run()V

    sget-object v2, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    invoke-virtual {v2}, Lcom/datami/smi/c/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/datami/smi/SmiIntentService;->TAG:Ljava/lang/String;

    sget v1, Lcom/datami/smi/SmiIntentService;->$$:I

    shl-int/lit8 v1, v1, 0x1

    const/16 v2, 0xc7

    sget v3, Lcom/datami/smi/SmiIntentService;->$$:I

    or-int/lit8 v3, v3, 0x20

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static exclusionDomainListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x86

    const/16 v7, 0x3c

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v3, v3, v8

    neg-int v3, v3

    const/16 v4, 0x1c2

    sget-object v5, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v6, 0xd

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v3, v3, v8

    neg-int v3, v3

    or-int/lit16 v4, v3, 0x140

    sget-object v5, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v6, 0x20

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-static {v0}, Lcom/datami/smi/SmiIntentService;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v0, v0, v7

    invoke-static {v0, v0, v0}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v0, v0, v7

    invoke-static {v0, v0, v0}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0x1bd

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v5, 0x43

    aget-byte v4, v4, v5

    invoke-static {v3, v4, v4}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static getIconId(Landroid/content/SharedPreferences;)I
    .locals 4

    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v1, 0xce

    aget-byte v0, v0, v1

    const/16 v1, 0xe4

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v3, 0x7e

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSdkKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v2, 0x3a

    aget-byte v1, v1, v2

    sget v2, Lcom/datami/smi/SmiIntentService;->$$:I

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0x7e

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserId(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v1, 0x20

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v2, 0x12d

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v3, 0x7e

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserMessaging(Landroid/content/SharedPreferences;)Z
    .locals 4

    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v1, 0x32

    aget-byte v0, v0, v1

    or-int/lit16 v1, v0, 0xe0

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v3, 0x43

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static handleGwPingTest(Lcom/datami/smi/b/m;)V
    .locals 4

    const/4 v2, 0x2

    invoke-static {p0}, Lcom/datami/smi/b/m;->a(Lcom/datami/smi/b/m;)Lcom/datami/smi/b/t;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/b/t;->b:Lcom/datami/smi/b/t;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v0, v0, v2

    neg-int v0, v0

    const/16 v1, 0x14d

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v3, 0x86

    aget-byte v2, v2, v3

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    new-instance v0, Lcom/datami/smi/SmiResult;

    invoke-direct {v0}, Lcom/datami/smi/SmiResult;-><init>()V

    sget-object v1, Lcom/datami/smi/SdReason;->SD_NOT_AVAILABLE_GW_CONNECTION_FAILURE:Lcom/datami/smi/SdReason;

    invoke-virtual {v0, v1}, Lcom/datami/smi/SmiResult;->setSdReason(Lcom/datami/smi/SdReason;)V

    sget-object v1, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    invoke-virtual {v0, v1}, Lcom/datami/smi/SmiResult;->setSdState(Lcom/datami/smi/SdState;)V

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/datami/smi/i;

    invoke-direct {v2, v0}, Lcom/datami/smi/i;-><init>(Lcom/datami/smi/SmiResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v0, v0, v2

    neg-int v0, v0

    const/16 v1, 0x8a

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v3, 0x2c

    aget-byte v2, v2, v3

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    goto :goto_0
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x7e

    invoke-static {p2}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v2, 0x3a

    aget-byte v1, v1, v2

    sget v2, Lcom/datami/smi/SmiIntentService;->$$:I

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v2, 0x20

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v3, 0x12d

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IZLjava/util/List;)V
    .locals 5

    const/16 v4, 0x7e

    invoke-static {p2}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v2, 0x3a

    aget-byte v1, v1, v2

    sget v2, Lcom/datami/smi/SmiIntentService;->$$:I

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v2, 0x20

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v3, 0x12d

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v2, 0xce

    aget-byte v1, v1, v2

    const/16 v2, 0xe4

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v2, 0x32

    aget-byte v1, v1, v2

    or-int/lit16 v2, v1, 0xe0

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0x43

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v2, 0x59

    aget-byte v1, v1, v2

    neg-int v1, v1

    const/16 v2, 0x168

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0x58

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p5}, Lcom/datami/smi/SmiIntentService;->exclusionDomainListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private resetUramPreferenceData(Landroid/content/SharedPreferences;)V
    .locals 6

    const/16 v5, 0x181

    const/16 v4, 0x28

    const/16 v3, 0x20

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v2, v2, v4

    invoke-static {v1, v5, v2}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v2, v2, v4

    invoke-static {v1, v5, v2}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static sendClearCacheEventIntent()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    const-class v2, Lcom/datami/smi/SmiIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v2, 0xad

    aget-byte v1, v1, v2

    const/16 v2, 0xee

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0x2e

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static sendGwPingTestIntent(Lcom/datami/smi/b/m;)V
    .locals 6

    const/4 v5, 0x5

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    const-class v2, Lcom/datami/smi/SmiIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v3, 0xf4

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0x1a

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v1, v1, v5

    sget v2, Lcom/datami/smi/SmiIntentService;->$$:I

    or-int/lit16 v2, v2, 0xe0

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v3, v3, v5

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget-object v1, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static sendReAuthEventIntent()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    const-class v2, Lcom/datami/smi/SmiIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3b

    const/16 v2, 0x71

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0x2e

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    const/16 v7, 0x1bb

    :try_start_0
    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v2, 0x8b

    aget-byte v0, v0, v2

    const/16 v2, 0x1d4

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0x10a

    aget-byte v3, v3, v4

    invoke-static {v0, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0xce

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v5, 0x19e

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v6, 0x59

    aget-byte v5, v5, v6

    neg-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0x2c

    aget-byte v3, v3, v4

    neg-int v3, v3

    const/16 v4, 0x12e

    sget-object v5, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v6, 0x1a

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/datami/smi/SmiIntentService;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v2, 0x8c

    aget-byte v1, v1, v2

    neg-int v1, v1

    const/16 v2, 0x1a4

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0x8f

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    aget-byte v0, v0, v7

    sget v1, Lcom/datami/smi/SmiIntentService;->$$:I

    or-int/lit16 v1, v1, 0xc2

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v3, 0xf4

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    const/4 v3, 0x2

    aget-byte v0, v0, v3

    neg-int v0, v0

    const/16 v3, 0x1bc

    sget-object v4, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v5, 0x86

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v0, v3, v4}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/datami/smi/SmiIntentService;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v2, 0x8b

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0x58

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/datami/smi/b/m;->a(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x3b

    const/16 v3, 0x71

    sget-object v4, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v5, 0x2e

    aget-byte v4, v4, v5

    invoke-static {v0, v3, v4}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    :try_start_2
    sget-object v0, Lcom/datami/smi/SmiIntentService;->TAG:Ljava/lang/String;

    const/16 v2, 0x3b

    const/16 v3, 0x17e

    sget-object v4, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v5, 0x10

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/SmiIntentService;->getSdkKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/datami/smi/b/m;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/datami/smi/SmiIntentService;->getUserId(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/datami/smi/SmiIntentService;->getIconId(Landroid/content/SharedPreferences;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1}, Lcom/datami/smi/SmiIntentService;->getUserMessaging(Landroid/content/SharedPreferences;)Z

    move-result v1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/datami/smi/SmiSdk;->getAppSDAuthInternal(Landroid/content/Context;Ljava/lang/String;ILcom/datami/smi/h;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/datami/smi/b/m;->v()V

    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v1, 0x96

    aget-byte v0, v0, v1

    const/16 v1, 0x67

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v3, 0xce

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v1, 0x1bb

    aget-byte v0, v0, v1

    const/16 v1, 0x15c

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0x5c

    aget-byte v3, v3, v4

    invoke-static {v0, v1, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v1, 0x1bb

    aget-byte v0, v0, v1

    const/16 v1, 0x15c

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v3, 0x5c

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/datami/smi/h/f;->a(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v1, 0x1bb

    aget-byte v0, v0, v1

    or-int/lit16 v1, v0, 0x110

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0x1a

    aget-byte v3, v3, v4

    invoke-static {v0, v1, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/datami/smi/b/m;->L()V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v1, 0xad

    aget-byte v0, v0, v1

    const/16 v1, 0xee

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0x2e

    aget-byte v3, v3, v4

    invoke-static {v0, v1, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v1, 0x106

    aget-byte v0, v0, v1

    const/16 v1, 0x1f9

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v3, 0x11c

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    invoke-static {}, Lcom/datami/smi/SmiIntentService;->checkForLoopCondition()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/datami/smi/b/m;->O()Lcom/datami/smi/SmiResult;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/datami/smi/b/m;->a(Landroid/content/Context;Lcom/datami/smi/SmiResult;Ljava/lang/Exception;)Z

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/c/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/datami/smi/SmiIntentService;->sendReAuthEventIntent()V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v3, 0xf4

    aget-byte v1, v1, v3

    sget-object v3, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v4, 0x1a

    aget-byte v3, v3, v4

    invoke-static {v0, v1, v3}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v1, 0x106

    aget-byte v0, v0, v1

    const/16 v1, 0x123

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    const/16 v3, 0x2b

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/SmiIntentService;->$:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    sget v1, Lcom/datami/smi/SmiIntentService;->$$:I

    or-int/lit16 v1, v1, 0xe0

    sget-object v2, Lcom/datami/smi/SmiIntentService;->$:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/SmiIntentService;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/b/m;

    invoke-static {v0}, Lcom/datami/smi/SmiIntentService;->handleGwPingTest(Lcom/datami/smi/b/m;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
