.class final Ldfh;
.super Lcpd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcpd",
        "<",
        "Ldfo;",
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

    invoke-virtual/range {v0 .. v6}, Ldfh;->a(Landroid/content/Context;Landroid/os/Looper;Lctn;Lcpa;Lcpv;Lcpw;)Ldfo;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lctn;Lcpa;Lcpv;Lcpw;)Ldfo;
    .locals 6

    new-instance v0, Ldfo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ldfo;-><init>(Landroid/content/Context;Landroid/os/Looper;Lctn;Lcpv;Lcpw;)V

    return-object v0
.end method
