.class final Lbuo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbut;

.field final synthetic b:Lbus;


# direct methods
.method constructor <init>(Lbut;Lbus;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lbuo;->a:Lbut;

    iput-object p2, p0, Lbuo;->b:Lbus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 61
    new-instance v3, Lbum;

    invoke-direct {v3}, Lbum;-><init>()V

    .line 68
    :try_start_0
    iget-object v1, p0, Lbuo;->a:Lbut;

    invoke-virtual {v1}, Lbut;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 71
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbuo;->a:Lbut;

    .line 70
    invoke-static {v1, v2}, Lbva;->c(Landroid/content/Context;Lbut;)Lbuw;

    move-result-object v1

    .line 76
    invoke-interface {v1}, Lbuw;->a()V

    .line 78
    iget-object v2, p0, Lbuo;->a:Lbut;

    invoke-static {v1, v2}, Lbun;->a(Lbuw;Lbut;)Ljava/util/concurrent/FutureTask;

    move-result-object v1

    .line 79
    invoke-static {}, Lbhv;->f()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object v2, v1

    .line 82
    :goto_0
    iget-object v1, p0, Lbuo;->a:Lbut;

    invoke-virtual {v1}, Lbut;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    iget-object v1, p0, Lbuo;->a:Lbut;

    invoke-static {v1}, Lbun;->a(Lbut;)Ljava/util/concurrent/FutureTask;

    move-result-object v1

    .line 84
    invoke-static {}, Lbhv;->f()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    :goto_1
    iget-object v4, p0, Lbuo;->a:Lbut;

    invoke-virtual {v4}, Lbut;->l()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    iget-object v0, p0, Lbuo;->a:Lbut;

    invoke-static {v0}, Lbun;->b(Lbut;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    .line 88
    invoke-static {}, Lbhv;->f()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lbuy; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 92
    :cond_0
    if-eqz v0, :cond_1

    .line 94
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbum;

    .line 95
    iget-object v4, v0, Lbum;->g:Ljava/util/List;

    iput-object v4, v3, Lbum;->g:Ljava/util/List;

    .line 96
    iget-boolean v0, v0, Lbum;->f:Z

    iput-boolean v0, v3, Lbum;->f:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lbuy; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 106
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbum;

    .line 107
    iget-boolean v1, v0, Lbum;->c:Z

    iput-boolean v1, v3, Lbum;->c:Z

    .line 109
    iget-object v1, v0, Lbum;->d:Lbvb;

    iput-object v1, v3, Lbum;->d:Lbvb;

    .line 110
    iget-object v0, v0, Lbum;->e:Ljava/util/List;

    iput-object v0, v3, Lbum;->e:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lbuy; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 119
    :try_start_3
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbum;

    .line 120
    iget-object v1, v0, Lbum;->b:Lbuz;

    iput-object v1, v3, Lbum;->b:Lbuz;

    .line 121
    iget-object v0, v0, Lbum;->a:Landroid/location/Location;

    iput-object v0, v3, Lbum;->a:Landroid/location/Location;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lbuy; {:try_start_3 .. :try_end_3} :catch_1

    .line 132
    :cond_3
    :goto_4
    iget-object v0, p0, Lbuo;->b:Lbus;

    invoke-interface {v0, v3}, Lbus;->a(Lbum;)V

    .line 133
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    :try_start_4
    const-string v4, "Exception scanning for bluetooth beacons"

    invoke-static {v4, v0}, Lbun;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Lbuy; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 126
    :catch_1
    move-exception v0

    .line 127
    const-string v1, "Exception scanning for locations"

    invoke-static {v1, v0}, Lbun;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    iget-object v0, v0, Lbuy;->a:Lbuz;

    iput-object v0, v3, Lbum;->b:Lbuz;

    goto :goto_4

    .line 111
    :catch_2
    move-exception v0

    .line 112
    :try_start_5
    const-string v1, "Exception scanning for wifi access points"

    invoke-static {v1, v0}, Lbun;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Lbuy; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 129
    :catch_3
    move-exception v0

    .line 130
    const-string v1, "Exception requesting a location package"

    invoke-static {v1, v0}, Lbun;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 122
    :catch_4
    move-exception v0

    .line 123
    :try_start_6
    const-string v1, "Exception getting location"

    invoke-static {v1, v0}, Lbun;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Lbuy; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :cond_4
    move-object v1, v0

    goto :goto_1

    :cond_5
    move-object v2, v0

    goto/16 :goto_0
.end method
