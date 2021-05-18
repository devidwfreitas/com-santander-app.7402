.class final Ldpu;
.super Lcpd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcpd",
        "<",
        "Ldql;",
        "Ldpy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcpd;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lctn;Ljava/lang/Object;Lcpv;Lcpw;)Lcph;
    .locals 7

    move-object v4, p4

    check-cast v4, Ldpy;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ldpu;->a(Landroid/content/Context;Landroid/os/Looper;Lctn;Ldpy;Lcpv;Lcpw;)Ldql;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lctn;Ldpy;Lcpv;Lcpw;)Ldql;
    .locals 8

    if-nez p4, :cond_0

    sget-object v5, Ldpy;->a:Ldpy;

    :goto_0
    new-instance v0, Ldql;

    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Ldql;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLctn;Ldpy;Lcpv;Lcpw;)V

    return-object v0

    :cond_0
    move-object v5, p4

    goto :goto_0
.end method
