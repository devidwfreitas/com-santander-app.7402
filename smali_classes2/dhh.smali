.class public Ldhh;
.super Ldhd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldhd",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ldhd;-><init>(ILjava/lang/String;Ljava/lang/Object;Ldhe;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ldhl;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ldhh;->b(Ldhl;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public b(Ldhl;)Ljava/lang/Long;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Ldhh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ldhh;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Ldhh;->d()I

    move-result v0

    invoke-interface {p1, v1, v2, v3, v0}, Ldhl;->getLongFlagValue(Ljava/lang/String;JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldhh;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0
.end method
