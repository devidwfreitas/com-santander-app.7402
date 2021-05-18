.class public Ldds;
.super Ldap;


# instance fields
.field private e:Legw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Legw",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lddk;)V
    .locals 2

    invoke-direct {p0, p1}, Ldap;-><init>(Lddk;)V

    new-instance v0, Legw;

    invoke-direct {v0}, Legw;-><init>()V

    iput-object v0, p0, Ldds;->e:Legw;

    iget-object v0, p0, Ldds;->d:Lddk;

    const-string v1, "GmsAvailabilityHelper"

    invoke-interface {v0, v1, p0}, Lddk;->a(Ljava/lang/String;Lddj;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;)Ldds;
    .locals 3

    invoke-static {p0}, Ldds;->a(Landroid/app/Activity;)Lddk;

    move-result-object v1

    const-string v0, "GmsAvailabilityHelper"

    const-class v2, Ldds;

    invoke-interface {v1, v0, v2}, Lddk;->a(Ljava/lang/String;Ljava/lang/Class;)Lddj;

    move-result-object v0

    check-cast v0, Ldds;

    if-eqz v0, :cond_1

    iget-object v1, v0, Ldds;->e:Legw;

    invoke-virtual {v1}, Legw;->a()Legv;

    move-result-object v1

    invoke-virtual {v1}, Legv;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Legw;

    invoke-direct {v1}, Legw;-><init>()V

    iput-object v1, v0, Ldds;->e:Legw;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ldds;

    invoke-direct {v0, v1}, Ldds;-><init>(Lddk;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldds;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 2

    iget-object v0, p0, Ldds;->e:Legw;

    invoke-static {p1}, Lcsy;->a(Lcom/google/android/gms/common/ConnectionResult;)Lcql;

    move-result-object v1

    invoke-virtual {v0, v1}, Legw;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method protected c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ldds;->c:Lcon;

    iget-object v1, p0, Ldds;->d:Lddk;

    invoke-interface {v1}, Lddk;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcon;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldds;->e:Legw;

    invoke-virtual {v0, v2}, Legw;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Ldds;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method public e()Legv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Legv",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldds;->e:Legw;

    invoke-virtual {v0}, Legw;->a()Legv;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 3

    invoke-super {p0}, Ldap;->g()V

    iget-object v0, p0, Ldds;->e:Legw;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Host activity was destroyed before Google Play services could be made available."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Legw;->a(Ljava/lang/Exception;)V

    return-void
.end method
