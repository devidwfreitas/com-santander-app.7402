.class Ldlf;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private final b:Ldlv;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ldlf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldlf;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ldlv;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ldlf;->b:Ldlv;

    return-void
.end method

.method static synthetic a(Ldlf;)Ldlv;
    .locals 1

    iget-object v0, p0, Ldlf;->b:Ldlv;

    return-object v0
.end method

.method private d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ldlf;->b:Ldlv;

    invoke-virtual {v0}, Ldlv;->s()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private e()Ldkw;
    .locals 1

    iget-object v0, p0, Ldlf;->b:Ldlv;

    invoke-virtual {v0}, Ldlv;->f()Ldkw;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldlf;->b:Ldlv;

    invoke-virtual {v0}, Ldlv;->a()V

    iget-object v0, p0, Ldlf;->b:Ldlv;

    invoke-virtual {v0}, Ldlv;->C()V

    iget-boolean v0, p0, Ldlf;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Ldlf;->d()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Ldlf;->b:Ldlv;

    invoke-virtual {v0}, Ldlv;->r()Ldla;

    move-result-object v0

    invoke-virtual {v0}, Ldla;->x()Z

    move-result v0

    iput-boolean v0, p0, Ldlf;->d:Z

    invoke-direct {p0}, Ldlf;->e()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Registering connectivity change receiver. Network connected"

    iget-boolean v2, p0, Ldlf;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldlf;->c:Z

    goto :goto_0
.end method

.method public b()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Ldlf;->b:Ldlv;

    invoke-virtual {v0}, Ldlv;->a()V

    iget-object v0, p0, Ldlf;->b:Ldlv;

    invoke-virtual {v0}, Ldlv;->C()V

    invoke-virtual {p0}, Ldlf;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Ldlf;->e()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    iput-boolean v2, p0, Ldlf;->c:Z

    iput-boolean v2, p0, Ldlf;->d:Z

    invoke-direct {p0}, Ldlf;->d()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Ldlf;->e()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldlf;->b:Ldlv;

    invoke-virtual {v0}, Ldlv;->C()V

    iget-boolean v0, p0, Ldlf;->c:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Ldlf;->b:Ldlv;

    invoke-virtual {v0}, Ldlv;->a()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Ldlf;->e()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->D()Ldky;

    move-result-object v1

    const-string v2, "NetworkBroadcastReceiver received action"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Ldlf;->b:Ldlv;

    invoke-virtual {v0}, Ldlv;->r()Ldla;

    move-result-object v0

    invoke-virtual {v0}, Ldla;->x()Z

    move-result v0

    iget-boolean v1, p0, Ldlf;->d:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Ldlf;->d:Z

    iget-object v1, p0, Ldlf;->b:Ldlv;

    invoke-virtual {v1}, Ldlv;->h()Ldlq;

    move-result-object v1

    new-instance v2, Ldlg;

    invoke-direct {v2, p0, v0}, Ldlg;-><init>(Ldlf;Z)V

    invoke-virtual {v1, v2}, Ldlq;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Ldlf;->e()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->z()Ldky;

    move-result-object v1

    const-string v2, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {v1, v2, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
