.class public Lbvd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbvc;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/wifi/WifiManager;

.field private c:Lbvf;

.field private final d:Ljava/lang/Object;

.field private final e:Lbut;


# direct methods
.method constructor <init>(Landroid/content/Context;Lbut;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbvd;->d:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lbvd;->a:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lbvd;->e:Lbut;

    .line 62
    return-void
.end method

.method static synthetic a(Lbvd;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lbvd;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private static a(Ljava/util/List;J)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    if-eqz p0, :cond_0

    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v0, v2, :cond_1

    .line 168
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    :cond_0
    return-object v1

    .line 170
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 171
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 172
    iget-wide v2, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    sub-long v2, v4, v2

    .line 173
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gez v7, :cond_3

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v8, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long/2addr v2, v8

    .line 177
    :cond_3
    cmp-long v2, v2, p1

    if-gez v2, :cond_2

    .line 178
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static a(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 150
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 151
    new-instance v0, Lbve;

    invoke-direct {v0}, Lbve;-><init>()V

    .line 157
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 158
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    :cond_0
    return-void
.end method

.method static synthetic b(Lbvd;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lbvd;->i()V

    return-void
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lbvd;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbvb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lbvd;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lbvd;->e:Lbut;

    invoke-virtual {v1}, Lbut;->g()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lbvd;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lbvd;->e:Lbut;

    invoke-virtual {v1}, Lbut;->h()I

    move-result v1

    invoke-static {v0, v1}, Lbvd;->a(Ljava/util/List;I)V

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 136
    new-instance v3, Lbvb;

    invoke-direct {v3}, Lbvb;-><init>()V

    .line 137
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v4, v3, Lbvb;->b:Ljava/lang/String;

    .line 138
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v4, v3, Lbvb;->a:Ljava/lang/String;

    .line 139
    iget v4, v0, Landroid/net/wifi/ScanResult;->level:I

    iput v4, v3, Lbvb;->c:I

    .line 140
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, v3, Lbvb;->d:I

    .line 141
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Lbuy;

    sget-object v2, Lbuz;->UNKNOWN_ERROR:Lbuz;

    invoke-direct {v1, v2, v0}, Lbuy;-><init>(Lbuz;Ljava/lang/Exception;)V

    throw v1

    .line 143
    :cond_0
    return-object v1
.end method

.method private g()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbvb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 204
    :try_start_0
    iget-object v1, p0, Lbvd;->a:Landroid/content/Context;

    invoke-static {v1}, Lbqx;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-direct {p0}, Lbvd;->h()V

    .line 206
    iget-object v1, p0, Lbvd;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    .line 207
    if-eqz v1, :cond_0

    .line 209
    :try_start_1
    iget-object v2, p0, Lbvd;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 210
    :try_start_2
    iget-object v1, p0, Lbvd;->d:Ljava/lang/Object;

    iget-object v3, p0, Lbvd;->e:Lbut;

    invoke-virtual {v3}, Lbut;->i()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 211
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lbvd;->f()Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 221
    :cond_0
    invoke-direct {p0}, Lbvd;->i()V

    .line 223
    :goto_1
    return-object v0

    .line 211
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 212
    :catch_0
    move-exception v1

    goto :goto_0

    .line 218
    :catch_1
    move-exception v1

    .line 221
    invoke-direct {p0}, Lbvd;->i()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lbvd;->i()V

    throw v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lbvd;->c:Lbvf;

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lbvd;->i()V

    .line 230
    :cond_0
    new-instance v0, Lbvf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbvf;-><init>(Lbvd;Lbve;)V

    iput-object v0, p0, Lbvd;->c:Lbvf;

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 232
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lbvd;->a:Landroid/content/Context;

    iget-object v2, p0, Lbvd;->c:Lbvf;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lbvd;->c:Lbvf;

    if-eqz v0, :cond_0

    .line 239
    :try_start_0
    iget-object v0, p0, Lbvd;->a:Landroid/content/Context;

    iget-object v1, p0, Lbvd;->c:Lbvf;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbvd;->c:Lbvf;

    .line 245
    :cond_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lbvd;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->NOT_SUPPORTED:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0

    .line 71
    :cond_0
    iget-object v0, p0, Lbvd;->a:Landroid/content/Context;

    invoke-static {v0}, Lbqx;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->PERMISSION_DENIED:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0

    .line 75
    :cond_1
    iget-object v0, p0, Lbvd;->b:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_2

    .line 76
    iget-object v0, p0, Lbvd;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lbvd;->b:Landroid/net/wifi/WifiManager;

    .line 79
    :cond_2
    invoke-direct {p0}, Lbvd;->e()Z

    move-result v0

    .line 81
    if-nez v0, :cond_3

    iget-object v0, p0, Lbvd;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->DISABLED:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0

    .line 84
    :cond_3
    return-void
.end method

.method public b()Lbvb;
    .locals 4

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lbvd;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v2, :cond_2

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 102
    :cond_1
    :goto_0
    return-object v0

    .line 95
    :cond_2
    new-instance v0, Lbvb;

    invoke-direct {v0}, Lbvb;-><init>()V

    .line 96
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lbvb;->b:Ljava/lang/String;

    .line 97
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lbvb;->a:Ljava/lang/String;

    .line 98
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, v0, Lbvb;->c:I

    .line 99
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 100
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    iput v1, v0, Lbvb;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Lbuy;

    sget-object v2, Lbuz;->UNKNOWN_ERROR:Lbuz;

    invoke-direct {v1, v2, v0}, Lbuy;-><init>(Lbuz;Ljava/lang/Exception;)V

    throw v1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0}, Lbvd;->a()V

    .line 112
    iget-object v0, p0, Lbvd;->a:Landroid/content/Context;

    invoke-static {v0}, Lbqx;->d(Landroid/content/Context;)Z
    :try_end_0
    .catch Lbuy; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbvb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    monitor-enter p0

    const/4 v0, 0x0

    .line 190
    :try_start_0
    iget-object v1, p0, Lbvd;->e:Lbut;

    invoke-virtual {v1}, Lbut;->k()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    invoke-direct {p0}, Lbvd;->f()Ljava/util/List;

    move-result-object v0

    .line 193
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    const/4 v1, 0x1

    .line 194
    :goto_0
    iget-object v2, p0, Lbvd;->e:Lbut;

    invoke-virtual {v2}, Lbut;->k()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lbvd;->e:Lbut;

    invoke-virtual {v2}, Lbut;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 195
    :cond_2
    invoke-direct {p0}, Lbvd;->g()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 197
    :cond_3
    monitor-exit p0

    return-object v0

    .line 193
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
