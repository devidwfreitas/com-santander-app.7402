.class public Leec;
.super Ljava/lang/Object;

# interfaces
.implements Leee;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/model/TileOverlayOptions;

.field private final c:Lefh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V
    .locals 1

    iput-object p1, p0, Leec;->a:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Leec;->a:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-static {v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lefh;

    move-result-object v0

    iput-object v0, p0, Leec;->c:Lefh;

    return-void
.end method


# virtual methods
.method public a(III)Lcom/google/android/gms/maps/model/Tile;
    .locals 1

    :try_start_0
    iget-object v0, p0, Leec;->c:Lefh;

    invoke-interface {v0, p1, p2, p3}, Lefh;->a(III)Lcom/google/android/gms/maps/model/Tile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
