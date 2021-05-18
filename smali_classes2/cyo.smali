.class public Lcyo;
.super Lcyl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcyl",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    new-instance v0, Lcyp;

    invoke-direct {v0, p0, p1, p2}, Lcyp;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0}, Ldhp;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
