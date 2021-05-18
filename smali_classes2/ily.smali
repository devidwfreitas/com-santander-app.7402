.class public Lily;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

.field private b:Lfoh;


# direct methods
.method public constructor <init>(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;Lfoh;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lily;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lily;->b:Lfoh;

    .line 83
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lily;->b:Lfoh;

    invoke-interface {v0, p1}, Lfoh;->a(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lily;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    invoke-static {v0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->b(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;)V

    .line 103
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lily;->a:Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    invoke-static {v0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;)V

    .line 98
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
