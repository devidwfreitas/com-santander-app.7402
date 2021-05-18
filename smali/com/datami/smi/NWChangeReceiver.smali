.class public Lcom/datami/smi/NWChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final $:[B

.field private static $$:I

.field private static final TAG:Ljava/lang/String;

.field private static mConnectedToWifiMobile:I

.field private static mConnectionResetReceived:Z

.field private static mNwChangeOccuredInBg:Z


# direct methods
.method private static $(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    rsub-int/lit8 v0, p1, 0x44

    new-instance v7, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x41

    add-int/lit8 v2, p0, 0x5

    sget-object v8, Lcom/datami/smi/NWChangeReceiver;->$:[B

    new-array v1, v2, [B

    if-nez v8, :cond_1

    move-object v3, v1

    move v4, v5

    move v6, v0

    move v1, v2

    :goto_0
    neg-int v0, v0

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v3, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v0

    move v9, v3

    move-object v3, v1

    move v1, v9

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x4e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/NWChangeReceiver;->$:[B

    const/16 v0, 0xf

    sput v0, Lcom/datami/smi/NWChangeReceiver;->$$:I

    const-class v0, Lcom/datami/smi/NWChangeReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/NWChangeReceiver;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/datami/smi/NWChangeReceiver;->mConnectedToWifiMobile:I

    sput-boolean v1, Lcom/datami/smi/NWChangeReceiver;->mConnectionResetReceived:Z

    sput-boolean v1, Lcom/datami/smi/NWChangeReceiver;->mNwChangeOccuredInBg:Z

    return-void

    :array_0
    .array-data 1
        0x1ft
        0x2ft
        0x1et
        -0x70t
        -0xbt
        0x2t
        0x1t
        0xat
        0x3t
        -0x10t
        0xct
        -0xct
        0xet
        -0xat
        -0x4t
        0x9t
        -0x6t
        0x2t
        0xat
        -0xet
        0x1t
        -0xet
        0xdt
        0x10t
        -0x1at
        0x1ft
        -0x13t
        0x2t
        0xdt
        -0x4t
        -0x2t
        0xet
        0x2t
        -0xat
        -0x12t
        0x1ct
        -0x4t
        -0x9t
        0x11t
        -0xbt
        -0x6t
        0x12t
        -0xct
        -0x6t
        -0x5t
        0x10t
        0x8t
        -0x4t
        0x8t
        0xat
        -0xet
        0x48t
        -0x46t
        -0x4t
        0xat
        0xct
        0x46t
        -0x48t
        -0x4t
        0x6t
        -0xat
        0xct
        0x9t
        -0xat
        0x4t
        -0x10t
        0x16t
        0x2t
        0x8t
        -0x4t
        0x8t
        0x9t
        -0x1t
        -0x1t
        -0x10t
        0xct
        -0x5t
        0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static handleNwChnageInBg()Z
    .locals 1

    sget-boolean v0, Lcom/datami/smi/NWChangeReceiver;->mNwChangeOccuredInBg:Z

    return v0
.end method

.method private makeIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/datami/smi/SmiIntentService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static setConnectionResetFlag()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/datami/smi/NWChangeReceiver;->mConnectionResetReceived:Z

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3

    sget v0, Lcom/datami/smi/NWChangeReceiver;->$$:I

    ushr-int/lit8 v0, v0, 0x1

    const/16 v1, 0x40

    const/16 v2, 0x22

    invoke-static {v0, v1, v2}, Lcom/datami/smi/NWChangeReceiver;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    sput v0, Lcom/datami/smi/NWChangeReceiver;->mConnectedToWifiMobile:I

    sget v0, Lcom/datami/smi/NWChangeReceiver;->$$:I

    sget-object v1, Lcom/datami/smi/NWChangeReceiver;->$:[B

    const/16 v2, 0x1a

    aget-byte v1, v1, v2

    neg-int v1, v1

    const/16 v2, 0x2d

    invoke-static {v0, v1, v2}, Lcom/datami/smi/NWChangeReceiver;->$(III)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/16 v8, 0x31

    const/16 v7, 0x3b

    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/datami/smi/NWChangeReceiver;->$:[B

    aget-byte v1, v1, v7

    sget-object v2, Lcom/datami/smi/NWChangeReceiver;->$:[B

    aget-byte v2, v2, v6

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/smi/NWChangeReceiver;->$:[B

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/NWChangeReceiver;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/datami/smi/NWChangeReceiver;->$:[B

    const/16 v1, 0x17

    aget-byte v0, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/datami/smi/NWChangeReceiver;->$:[B

    aget-byte v2, v2, v7

    invoke-static {v0, v1, v2}, Lcom/datami/smi/NWChangeReceiver;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/datami/smi/NWChangeReceiver;->makeIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/datami/smi/NWChangeReceiver;->$$:I

    ushr-int/lit8 v0, v0, 0x1

    const/16 v1, 0x40

    const/16 v2, 0x22

    invoke-static {v0, v1, v2}, Lcom/datami/smi/NWChangeReceiver;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    sget-object v0, Lcom/datami/smi/NWChangeReceiver;->$:[B

    aget-byte v0, v0, v6

    add-int/lit8 v0, v0, -0x1

    or-int/lit8 v2, v0, 0x35

    sget-object v3, Lcom/datami/smi/NWChangeReceiver;->$:[B

    aget-byte v3, v3, v4

    invoke-static {v0, v2, v3}, Lcom/datami/smi/NWChangeReceiver;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Lcom/datami/smi/b/m;->b(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/b/m;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v4, v0, :cond_4

    invoke-static {}, Lcom/datami/smi/SmiSdk;->isForeground()Z

    move-result v0

    if-nez v0, :cond_4

    sput-boolean v4, Lcom/datami/smi/NWChangeReceiver;->mNwChangeOccuredInBg:Z

    :goto_1
    sget-boolean v0, Lcom/datami/smi/b/m;->j:Z

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_5

    sget v0, Lcom/datami/smi/NWChangeReceiver;->mConnectedToWifiMobile:I

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/datami/smi/NWChangeReceiver;->mConnectionResetReceived:Z

    if-eqz v0, :cond_5

    :cond_2
    sget-boolean v0, Lcom/datami/smi/NWChangeReceiver;->mConnectionResetReceived:Z

    if-eqz v0, :cond_3

    sput-boolean v5, Lcom/datami/smi/NWChangeReceiver;->mConnectionResetReceived:Z

    :cond_3
    sget-object v0, Lcom/datami/smi/b/f;->d:Lcom/datami/smi/b/f;

    sput-object v0, Lcom/datami/smi/b/m;->l:Lcom/datami/smi/b/f;

    sput v5, Lcom/datami/smi/NWChangeReceiver;->mConnectedToWifiMobile:I

    sget-object v0, Lcom/datami/smi/NWChangeReceiver;->$:[B

    aget-byte v0, v0, v7

    sget-object v1, Lcom/datami/smi/NWChangeReceiver;->$:[B

    aget-byte v1, v1, v6

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v8, v1}, Lcom/datami/smi/NWChangeReceiver;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/datami/smi/NWChangeReceiver;->makeIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/datami/smi/a/a;->a()Lcom/datami/smi/a/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/datami/smi/a/a;->a(Z)V

    goto/16 :goto_0

    :cond_4
    sput-boolean v5, Lcom/datami/smi/NWChangeReceiver;->mNwChangeOccuredInBg:Z

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v4, v0, :cond_0

    sget v0, Lcom/datami/smi/NWChangeReceiver;->mConnectedToWifiMobile:I

    if-eq v4, v0, :cond_0

    sput v4, Lcom/datami/smi/NWChangeReceiver;->mConnectedToWifiMobile:I

    invoke-static {p1}, Lcom/datami/smi/c;->c(Landroid/content/Context;)V

    sget-object v0, Lcom/datami/smi/NWChangeReceiver;->$:[B

    aget-byte v0, v0, v7

    sget-object v1, Lcom/datami/smi/NWChangeReceiver;->$:[B

    aget-byte v1, v1, v6

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v8, v1}, Lcom/datami/smi/NWChangeReceiver;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/datami/smi/NWChangeReceiver;->makeIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/datami/smi/a/a;->a()Lcom/datami/smi/a/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/datami/smi/a/a;->a(Z)V

    goto/16 :goto_0
.end method
