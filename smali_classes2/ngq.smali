.class public abstract Lngq;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lngq;
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Lngr;

    invoke-direct {v1, v0}, Lngr;-><init>(Landroid/net/ConnectivityManager;)V

    return-object v1
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method
