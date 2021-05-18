.class public Ljlz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/model/LatLng;

.field final synthetic b:Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Ljlz;->b:Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;

    iput-object p2, p0, Ljlz;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 153
    const-string v0, "Outros_Agencias_Acao"

    const-string v1, "TracarRota"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Ljlz;->b:Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;

    invoke-static {v0}, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->a(Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;)Ljmm;

    move-result-object v0

    iget-object v1, p0, Ljlz;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljlz;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljmm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method
