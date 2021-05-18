.class Lcom/ca/mdo/MDOLocationTracker;
.super Ljava/lang/Object;
.source "MDOLocationTracker.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static final BASE_MIN_LOCATION_UPDATE:J = 0x493e0L

.field public static final MIN_DISTANCE_CHANGE_FOR_UPDATES:J = 0x1f4L

.field public static final MIN_TIME_BETWEEN_UPDATES:J = 0x927c0L


# instance fields
.field public lastLocation:Landroid/location/Location;

.field public locationManager:Landroid/location/LocationManager;

.field public trackingLocation:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ca/mdo/MDOLocationTracker;->trackingLocation:Z

    .line 25
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    const-string v2, "location"

    .line 26
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 27
    .local v0, "locationManager":Landroid/location/LocationManager;
    iput-object v0, p0, Lcom/ca/mdo/MDOLocationTracker;->locationManager:Landroid/location/LocationManager;

    .line 28
    return-void
.end method

.method private stopLocationChanges()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ca/mdo/MDOLocationTracker;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ca/mdo/MDOLocationTracker;->trackingLocation:Z

    .line 59
    return-void
.end method

.method private subscribeToLocationChanges(Ljava/lang/String;)V
    .locals 7
    .param p1, "aProvider"    # Ljava/lang/String;

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/ca/mdo/MDOLocationTracker;->locationManager:Landroid/location/LocationManager;

    const-wide/32 v2, 0x927c0

    const/high16 v4, 0x43fa0000    # 500.0f

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ca/mdo/MDOLocationTracker;->trackingLocation:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v6

    .line 51
    .local v6, "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ca/mdo/MDOLocationTracker;->trackingLocation:Z

    goto :goto_0
.end method


# virtual methods
.method public getLastLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ca/mdo/MDOLocationTracker;->lastLocation:Landroid/location/Location;

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/ca/mdo/MDOLocationTracker;->lastLocation:Landroid/location/Location;

    .line 68
    invoke-static {p1}, Lcom/ca/mdo/CAMobileDevOps;->updateLocationChangesToHeader(Landroid/location/Location;)V

    .line 69
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 84
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 79
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 74
    return-void
.end method

.method public startTrackingUpdates(I)V
    .locals 4
    .param p1, "locationCheck"    # I

    .prologue
    const/4 v3, 0x1

    .line 31
    if-le p1, v3, :cond_0

    .line 32
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 33
    .local v0, "criteria":Landroid/location/Criteria;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 34
    iget-object v2, p0, Lcom/ca/mdo/MDOLocationTracker;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "provider":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/ca/mdo/MDOLocationTracker;->subscribeToLocationChanges(Ljava/lang/String;)V

    .line 37
    .end local v0    # "criteria":Landroid/location/Criteria;
    .end local v1    # "provider":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public stopTrackingUpdates()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ca/mdo/MDOLocationTracker;->stopLocationChanges()V

    .line 41
    return-void
.end method
