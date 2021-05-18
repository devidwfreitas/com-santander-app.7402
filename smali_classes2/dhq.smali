.class public Ldhq;
.super Ljava/lang/Object;

# interfaces
.implements Ldtl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcpt;JLandroid/app/PendingIntent;)Lcpy;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "J",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v1, Ldhr;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ldhr;-><init>(Ldhq;Lcpt;JLandroid/app/PendingIntent;)V

    invoke-virtual {p1, v1}, Lcpt;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcpt;Landroid/app/PendingIntent;)Lcpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldhs;

    invoke-direct {v0, p0, p1, p2}, Ldhs;-><init>(Ldhq;Lcpt;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcpt;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method
