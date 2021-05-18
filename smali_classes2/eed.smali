.class public Leed;
.super Lefi;


# instance fields
.field final synthetic a:Leee;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;Leee;)V
    .locals 0

    iput-object p2, p0, Leed;->a:Leee;

    invoke-direct {p0}, Lefi;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)Lcom/google/android/gms/maps/model/Tile;
    .locals 1

    iget-object v0, p0, Leed;->a:Leee;

    invoke-interface {v0, p1, p2, p3}, Leee;->a(III)Lcom/google/android/gms/maps/model/Tile;

    move-result-object v0

    return-object v0
.end method
