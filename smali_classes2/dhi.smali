.class public Ldhi;
.super Ldhd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldhd",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ldhd;-><init>(ILjava/lang/String;Ljava/lang/Object;Ldhe;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ldhl;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ldhi;->b(Ldhl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ldhl;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ldhi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ldhi;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Ldhi;->d()I

    move-result v2

    invoke-interface {p1, v1, v0, v2}, Ldhl;->getStringFlagValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldhi;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
