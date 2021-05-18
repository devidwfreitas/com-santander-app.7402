.class Lbvf;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbvd;


# direct methods
.method private constructor <init>(Lbvd;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lbvf;->a:Lbvd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbvd;Lbve;)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lbvf;-><init>(Lbvd;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 251
    if-eqz p2, :cond_0

    .line 252
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lbvf;->a:Lbvd;

    invoke-static {v0}, Lbvd;->a(Lbvd;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Lbvf;->a:Lbvd;

    invoke-static {v0}, Lbvd;->a(Lbvd;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 255
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iget-object v0, p0, Lbvf;->a:Lbvd;

    invoke-static {v0}, Lbvd;->b(Lbvd;)V

    .line 259
    :cond_0
    return-void

    .line 255
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
