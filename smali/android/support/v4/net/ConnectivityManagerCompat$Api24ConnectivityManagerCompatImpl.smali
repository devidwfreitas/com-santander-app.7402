.class Landroid/support/v4/net/ConnectivityManagerCompat$Api24ConnectivityManagerCompatImpl;
.super Landroid/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
    .locals 1

    .prologue
    .line 138
    invoke-static {p1}, Landroid/support/v4/net/ConnectivityManagerCompatApi24;->getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I

    move-result v0

    return v0
.end method
