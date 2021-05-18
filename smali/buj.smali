.class Lbuj;
.super Landroid/bluetooth/le/ScanCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbug;


# direct methods
.method private constructor <init>(Lbug;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lbuj;->a:Lbug;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbug;Lbuh;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lbuj;-><init>(Lbug;)V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 194
    :try_start_0
    iget-object v0, p0, Lbuj;->a:Lbug;

    invoke-static {v0}, Lbug;->a(Lbug;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    .line 196
    invoke-static {v0}, Lbug;->a(Landroid/bluetooth/le/ScanResult;)Lbul;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 198
    iget-object v3, p0, Lbuj;->a:Lbug;

    invoke-static {v3}, Lbug;->a(Lbug;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    const-string v1, "Exception in ble scan callback"

    invoke-static {v1, v0}, Lbug;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 205
    :goto_1
    return-void

    .line 201
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onScanFailed(I)V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    .line 187
    iget-object v0, p0, Lbuj;->a:Lbug;

    invoke-static {v0, p1}, Lbug;->a(Lbug;I)I

    .line 188
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 3

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 211
    :try_start_0
    iget-object v0, p0, Lbuj;->a:Lbug;

    invoke-static {v0}, Lbug;->a(Lbug;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :try_start_1
    invoke-static {p2}, Lbug;->a(Landroid/bluetooth/le/ScanResult;)Lbul;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    iget-object v2, p0, Lbuj;->a:Lbug;

    invoke-static {v2}, Lbug;->a(Lbug;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_0
    monitor-exit v1

    .line 220
    :goto_0
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string v1, "Exception in ble scan callback"

    invoke-static {v1, v0}, Lbug;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
