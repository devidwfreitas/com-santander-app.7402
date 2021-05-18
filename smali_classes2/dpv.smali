.class final Ldpv;
.super Lcpd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcpd",
        "<",
        "Ldql;",
        "Ldpw;",
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

    check-cast v4, Ldpw;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ldpv;->a(Landroid/content/Context;Landroid/os/Looper;Lctn;Ldpw;Lcpv;Lcpw;)Ldql;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lctn;Ldpw;Lcpv;Lcpw;)Ldql;
    .locals 8

    new-instance v0, Ldql;

    const/4 v3, 0x0

    invoke-virtual {p4}, Ldpw;->a()Landroid/os/Bundle;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Ldql;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLctn;Landroid/os/Bundle;Lcpv;Lcpw;)V

    return-object v0
.end method
