.class Ldar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldap;


# direct methods
.method private constructor <init>(Ldap;)V
    .locals 0

    iput-object p1, p0, Ldar;->a:Ldap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldap;Ldaq;)V
    .locals 0

    invoke-direct {p0, p1}, Ldar;-><init>(Ldap;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Ldar;->a:Ldap;

    iget-boolean v0, v0, Ldap;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldar;->a:Ldap;

    invoke-static {v0}, Ldap;->a(Ldap;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldar;->a:Ldap;

    iget-object v0, v0, Ldap;->d:Lddk;

    iget-object v1, p0, Ldar;->a:Ldap;

    invoke-virtual {v1}, Ldap;->f()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Ldar;->a:Ldap;

    invoke-static {v2}, Ldap;->a(Ldap;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->d()Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Ldar;->a:Ldap;

    invoke-static {v3}, Ldap;->b(Ldap;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->b(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lddk;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldar;->a:Ldap;

    iget-object v0, v0, Ldap;->c:Lcon;

    iget-object v1, p0, Ldar;->a:Ldap;

    invoke-static {v1}, Ldap;->a(Ldap;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcon;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldar;->a:Ldap;

    iget-object v0, v0, Ldap;->c:Lcon;

    iget-object v1, p0, Ldar;->a:Ldap;

    invoke-virtual {v1}, Ldap;->f()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Ldar;->a:Ldap;

    iget-object v2, v2, Ldap;->d:Lddk;

    iget-object v3, p0, Ldar;->a:Ldap;

    invoke-static {v3}, Ldap;->a(Ldap;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v3

    const/4 v4, 0x2

    iget-object v5, p0, Ldar;->a:Ldap;

    invoke-virtual/range {v0 .. v5}, Lcon;->a(Landroid/app/Activity;Lddk;IILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ldar;->a:Ldap;

    invoke-static {v0}, Ldap;->a(Ldap;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Ldar;->a:Ldap;

    iget-object v0, v0, Ldap;->c:Lcon;

    iget-object v1, p0, Ldar;->a:Ldap;

    invoke-virtual {v1}, Ldap;->f()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Ldar;->a:Ldap;

    invoke-virtual {v0, v1, v2}, Lcon;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Ldar;->a:Ldap;

    iget-object v1, v1, Ldap;->c:Lcon;

    iget-object v2, p0, Ldar;->a:Ldap;

    invoke-virtual {v2}, Ldap;->f()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ldas;

    invoke-direct {v3, p0, v0}, Ldas;-><init>(Ldar;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2, v3}, Lcon;->a(Landroid/content/Context;Ldda;)Ldcz;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Ldar;->a:Ldap;

    iget-object v1, p0, Ldar;->a:Ldap;

    invoke-static {v1}, Ldap;->a(Ldap;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    iget-object v2, p0, Ldar;->a:Ldap;

    invoke-static {v2}, Ldap;->b(Ldap;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ldap;->a(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto/16 :goto_0
.end method
