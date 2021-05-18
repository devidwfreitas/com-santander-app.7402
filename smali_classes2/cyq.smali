.class public Lcyq;
.super Lcyl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcyl",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1

    new-instance v0, Lcyr;

    invoke-direct {v0, p0, p1, p2}, Lcyr;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v0}, Ldhp;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method
