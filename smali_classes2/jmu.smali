.class public Ljmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static a:Ljmu;

.field private static b:Ljlu;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a(Ljlu;)Ljmu;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Ljmu;->a:Ljmu;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljmu;

    invoke-direct {v0}, Ljmu;-><init>()V

    sput-object v0, Ljmu;->a:Ljmu;

    .line 31
    :cond_0
    sput-object p0, Ljmu;->b:Ljlu;

    .line 33
    sget-object v0, Ljmu;->a:Ljmu;

    return-object v0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Ljmu;->b:Ljlu;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Ljmu;->b:Ljlu;

    invoke-interface {v0, p1}, Ljlu;->a(Landroid/location/Location;)V

    .line 41
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
