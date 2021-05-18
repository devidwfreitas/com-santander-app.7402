.class public Lbug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbuf;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BleScannerImpl"


# instance fields
.field private b:Landroid/bluetooth/BluetoothAdapter;

.field private c:Landroid/bluetooth/le/BluetoothLeScanner;

.field private d:Lbut;

.field private e:I

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbul;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lbuj;

.field private i:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lbut;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbug;->f:Ljava/util/List;

    .line 65
    iput-object p1, p0, Lbug;->i:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lbug;->d:Lbut;

    .line 67
    return-void
.end method

.method static synthetic a(Lbug;I)I
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lbug;->e:I

    return p1
.end method

.method static synthetic a(Landroid/bluetooth/le/ScanResult;)Lbul;
    .locals 1

    .prologue
    .line 51
    invoke-static {p0}, Lbug;->b(Landroid/bluetooth/le/ScanResult;)Lbul;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    .line 235
    :cond_1
    invoke-static {p0}, Lbug;->b([B)I

    move-result v0

    .line 236
    invoke-static {p0, v0}, Lbug;->a([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([BI)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 256
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 257
    if-ltz p1, :cond_0

    array-length v0, p0

    if-le p1, v0, :cond_1

    .line 258
    :cond_0
    array-length p1, p0

    :cond_1
    move v0, v1

    .line 260
    :goto_0
    if-ge v0, p1, :cond_2

    .line 261
    aget-byte v3, p0, v0

    .line 262
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbug;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lbug;->f:Ljava/util/List;

    return-object v0
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 129
    :try_start_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 130
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    new-instance v2, Lbuh;

    invoke-direct {v2, p0, v1}, Lbuh;-><init>(Lbug;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 147
    monitor-exit v1

    .line 151
    :goto_0
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v1, "Exception waiting for main looper"

    invoke-static {v1, v0}, Lbug;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1}, Lbug;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private static b([B)I
    .locals 2

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 242
    aget-byte v1, p0, v0

    .line 243
    if-nez v1, :cond_0

    .line 252
    :goto_1
    return v0

    .line 246
    :cond_0
    if-gez v1, :cond_1

    .line 248
    array-length v0, p0

    goto :goto_1

    .line 250
    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 251
    goto :goto_0

    .line 252
    :cond_2
    array-length v0, p0

    goto :goto_1
.end method

.method private static b(Landroid/bluetooth/le/ScanResult;)Lbul;
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lbug;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v1

    .line 227
    new-instance v2, Lbul;

    invoke-direct {v2, v0, v1}, Lbul;-><init>(Ljava/lang/String;I)V

    .line 228
    return-object v2
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 268
    invoke-static {}, Lbhv;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "BleScannerImpl"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 72
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->NOT_SUPPORTED:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbug;->i:Landroid/content/Context;

    invoke-static {v0}, Lbqx;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->PERMISSION_DENIED:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0

    .line 77
    :cond_1
    iget-object v0, p0, Lbug;->i:Landroid/content/Context;

    invoke-static {v0}, Lbqx;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->PERMISSION_DENIED:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0

    .line 80
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lbug;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 81
    iget-object v0, p0, Lbug;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbug;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 82
    :cond_3
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->DISABLED:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0

    .line 84
    :cond_4
    iget-object v0, p0, Lbug;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lbug;->c:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 85
    iget-object v0, p0, Lbug;->c:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_5

    .line 86
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->UNKNOWN_ERROR:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :cond_5
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()V
    .locals 4

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbug;->g:Z

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->SCAN_ALREADY_IN_PROGRESS:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_0
    :try_start_1
    new-instance v0, Lbuj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbuj;-><init>(Lbug;Lbuh;)V

    iput-object v0, p0, Lbug;->h:Lbuj;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbug;->g:Z

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lbug;->e:I

    .line 99
    iget-object v1, p0, Lbug;->f:Ljava/util/List;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    iget-object v0, p0, Lbug;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    :try_start_3
    iget-object v0, p0, Lbug;->c:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->UNKNOWN_ERROR:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 108
    :cond_1
    :try_start_6
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 109
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 110
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 111
    iget-object v1, p0, Lbug;->c:Landroid/bluetooth/le/BluetoothLeScanner;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    iget-object v3, p0, Lbug;->h:Lbuj;

    invoke-virtual {v1, v2, v0, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbug;->g:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    :try_start_7
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->UNKNOWN_ERROR:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbug;->c:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lbug;->h:Lbuj;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->flushPendingScanResults(Landroid/bluetooth/le/ScanCallback;)V

    .line 121
    iget-object v0, p0, Lbug;->c:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lbug;->h:Lbuj;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 122
    iget-object v0, p0, Lbug;->d:Lbut;

    invoke-virtual {v0}, Lbut;->n()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbug;->a(J)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbug;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()I
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lbug;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbul;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lbug;->f:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    iget-object v0, p0, Lbug;->d:Lbut;

    invoke-virtual {v0}, Lbut;->o()I

    move-result v2

    .line 163
    iget-object v0, p0, Lbug;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    new-instance v3, Lbui;

    invoke-direct {v3, p0}, Lbui;-><init>(Lbug;)V

    .line 172
    iget-object v4, p0, Lbug;->f:Ljava/util/List;

    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 173
    iget-object v3, p0, Lbug;->f:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    monitor-exit p0

    return-object v0

    .line 175
    :cond_0
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lbug;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    iget-object v2, p0, Lbug;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
