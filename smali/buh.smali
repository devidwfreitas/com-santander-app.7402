.class Lbuh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lbug;


# direct methods
.method constructor <init>(Lbug;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lbuh;->b:Lbug;

    iput-object p2, p0, Lbuh;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lbuh;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :try_start_1
    iget-object v0, p0, Lbuh;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 139
    monitor-exit v1

    .line 143
    :goto_0
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string v1, "Exception waiting for main looper"

    invoke-static {v1, v0}, Lbug;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
