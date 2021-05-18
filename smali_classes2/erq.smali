.class public final Lerq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:J = 0x493e0L


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/content/BroadcastReceiver;

.field private e:Z

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lerq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lerq;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lerq;->e:Z

    .line 43
    iput-object p1, p0, Lerq;->c:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lerq;->g:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Lers;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lers;-><init>(Lerq;Lerr;)V

    iput-object v0, p0, Lerq;->d:Landroid/content/BroadcastReceiver;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lerq;->f:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic a(Lerq;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lerq;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lerq;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lerq;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 95
    iput-boolean p1, p0, Lerq;->h:Z

    .line 98
    iget-boolean v0, p0, Lerq;->e:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lerq;->a()V

    .line 102
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lerq;->e:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lerq;->c:Landroid/content/Context;

    iget-object v1, p0, Lerq;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lerq;->e:Z

    .line 81
    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 84
    iget-boolean v0, p0, Lerq;->e:Z

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lerq;->c:Landroid/content/Context;

    iget-object v1, p0, Lerq;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lerq;->e:Z

    .line 88
    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lerq;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 92
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 54
    invoke-direct {p0}, Lerq;->f()V

    .line 55
    iget-boolean v0, p0, Lerq;->h:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lerq;->f:Landroid/os/Handler;

    iget-object v1, p0, Lerq;->g:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lerq;->e()V

    .line 65
    invoke-virtual {p0}, Lerq;->a()V

    .line 66
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lerq;->f()V

    .line 73
    invoke-direct {p0}, Lerq;->d()V

    .line 74
    return-void
.end method
