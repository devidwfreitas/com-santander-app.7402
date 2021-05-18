.class Ldof;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldob;


# direct methods
.method constructor <init>(Ldob;)V
    .locals 0

    iput-object p1, p0, Ldof;->a:Ldob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ldof;->a:Ldob;

    iget-object v0, v0, Ldob;->a:Ldno;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Ldof;->a:Ldob;

    iget-object v2, v2, Ldob;->a:Ldno;

    invoke-virtual {v2}, Ldno;->n()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ldof;->a:Ldob;

    iget-object v3, v3, Ldob;->a:Ldno;

    invoke-virtual {v3}, Ldno;->w()Ldka;

    move-result-object v3

    invoke-virtual {v3}, Ldka;->V()Z

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ldno;->a(Ldno;Landroid/content/ComponentName;)V

    return-void
.end method
