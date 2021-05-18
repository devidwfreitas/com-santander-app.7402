.class final Ldtx;
.super Lcpd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcpd",
        "<",
        "Ldjh;",
        "Lcpa;",
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
.method public synthetic a(Landroid/content/Context;Landroid/os/Looper;Lctn;Ljava/lang/Object;Lcpv;Lcpw;)Lcph;
    .locals 7

    move-object v4, p4

    check-cast v4, Lcpa;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ldtx;->a(Landroid/content/Context;Landroid/os/Looper;Lctn;Lcpa;Lcpv;Lcpw;)Ldjh;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lctn;Lcpa;Lcpv;Lcpw;)Ldjh;
    .locals 7

    new-instance v0, Ldjh;

    const-string v5, "locationServices"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ldjh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcpv;Lcpw;Ljava/lang/String;Lctn;)V

    return-object v0
.end method
