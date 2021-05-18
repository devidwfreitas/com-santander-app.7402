.class public Lbux;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lbuw;


# static fields
.field private static final a:J = 0x64L

.field private static final b:F


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/location/LocationManager;

.field private e:Lbut;

.field private f:Landroid/location/Location;

.field private final g:Ljava/lang/Object;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbut;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbux;->g:Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lbux;->c:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lbux;->e:Lbut;

    .line 58
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lbux;->d:Landroid/location/LocationManager;

    .line 59
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/location/Location;
    .locals 6

    .prologue
    .line 81
    iget-object v0, p0, Lbux;->d:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 85
    iget-object v1, p0, Lbux;->e:Lbut;

    invoke-virtual {v1}, Lbut;->e()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Landroid/location/Location;
    .locals 9

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lbux;->f:Landroid/location/Location;

    .line 105
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "LocationScanner"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 107
    :try_start_0
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 108
    iget-object v0, p0, Lbux;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lbux;->d:Landroid/location/LocationManager;

    const-wide/16 v2, 0x64

    const/4 v4, 0x0

    .line 114
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    .line 109
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbux;->d:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 125
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    throw v0

    .line 117
    :cond_0
    :try_start_1
    iget-object v1, p0, Lbux;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :try_start_2
    iget-object v0, p0, Lbux;->g:Ljava/lang/Object;

    iget-object v2, p0, Lbux;->e:Lbut;

    invoke-virtual {v2}, Lbut;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 119
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    :goto_1
    iget-object v0, p0, Lbux;->d:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 125
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 128
    iget-object v0, p0, Lbux;->f:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->TIMEOUT:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0

    .line 119
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :catch_0
    move-exception v0

    goto :goto_1

    .line 131
    :cond_1
    iget-object v0, p0, Lbux;->f:Landroid/location/Location;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 64
    iget-object v0, p0, Lbux;->c:Landroid/content/Context;

    invoke-static {v0}, Lbqx;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->PERMISSION_DENIED:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0

    .line 68
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbux;->e:Lbut;

    invoke-virtual {v1}, Lbut;->b()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbux;->h:Ljava/util/List;

    .line 69
    iget-object v0, p0, Lbux;->e:Lbut;

    invoke-virtual {v0}, Lbut;->b()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 70
    iget-object v4, p0, Lbux;->d:Landroid/location/LocationManager;

    invoke-virtual {v4, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    iget-object v4, p0, Lbux;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lbux;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    new-instance v0, Lbuy;

    sget-object v1, Lbuz;->DISABLED:Lbuz;

    invoke-direct {v0, v1}, Lbuy;-><init>(Lbuz;)V

    throw v0

    .line 78
    :cond_3
    return-void
.end method

.method public b()Landroid/location/Location;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lbux;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    invoke-direct {p0, v0}, Lbux;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lbux;->c()Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lbux;->f:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lbux;->e:Lbut;

    invoke-virtual {v1}, Lbut;->c()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 138
    iget-object v1, p0, Lbux;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iput-object p1, p0, Lbux;->f:Landroid/location/Location;

    .line 140
    iget-object v0, p0, Lbux;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 141
    monitor-exit v1

    .line 144
    :cond_0
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method
