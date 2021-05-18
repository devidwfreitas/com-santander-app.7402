.class Lffi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lffg;


# direct methods
.method private constructor <init>(Lffg;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lffi;->a:Lffg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lffg;Lffh;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lffi;-><init>(Lffg;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 302
    const-string v0, "LocationRetriever"

    const-string v1, "onLocationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lffi;->a:Lffg;

    invoke-static {v0, p1}, Lffg;->a(Lffg;Landroid/location/Location;)V

    .line 304
    iget-object v0, p0, Lffi;->a:Lffg;

    iget-object v1, p0, Lffi;->a:Lffg;

    invoke-static {v1}, Lffg;->c(Lffg;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lffg;->b(Lffg;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lffi;->a:Lffg;

    invoke-static {v0}, Lffg;->d(Lffg;)V

    .line 306
    iget-object v0, p0, Lffi;->a:Lffg;

    invoke-static {v0}, Lffg;->e(Lffg;)V

    .line 307
    iget-object v0, p0, Lffi;->a:Lffg;

    invoke-static {v0}, Lffg;->f(Lffg;)V

    .line 308
    iget-object v0, p0, Lffi;->a:Lffg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lffg;->a(Lffg;I)I

    .line 310
    :cond_0
    iget-object v0, p0, Lffi;->a:Lffg;

    invoke-static {v0}, Lffg;->g(Lffg;)V

    .line 311
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 320
    return-void
.end method
