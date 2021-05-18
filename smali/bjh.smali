.class public abstract Lbjh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/BroadcastReceiver;

.field private final b:Landroid/support/v4/content/LocalBroadcastManager;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbjh;->c:Z

    .line 55
    invoke-static {}, Lbqx;->b()V

    .line 56
    new-instance v0, Lbjj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbjj;-><init>(Lbjh;Lbji;)V

    iput-object v0, p0, Lbjh;->a:Landroid/content/BroadcastReceiver;

    .line 58
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lbjh;->b:Landroid/support/v4/content/LocalBroadcastManager;

    .line 59
    invoke-virtual {p0}, Lbjh;->a()V

    .line 60
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    const-string v1, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lbjh;->b:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lbjh;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 115
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lbjh;->c:Z

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Lbjh;->d()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbjh;->c:Z

    goto :goto_0
.end method

.method protected abstract a(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
.end method

.method public b()V
    .locals 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lbjh;->c:Z

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lbjh;->b:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lbjh;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbjh;->c:Z

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lbjh;->c:Z

    return v0
.end method
