.class Ldvg;
.super Ljava/lang/Object;

# interfaces
.implements Ldxb;


# instance fields
.field final synthetic a:Lecf;


# direct methods
.method constructor <init>(Ldvf;Lecf;)V
    .locals 0

    iput-object p2, p0, Ldvg;->a:Lecf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvg;->a:Lecf;

    invoke-interface {v0, p1}, Lecf;->a(Landroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
