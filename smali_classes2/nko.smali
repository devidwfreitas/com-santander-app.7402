.class final Lnko;
.super Ljava/lang/Object;

# interfaces
.implements Lnja;
.implements Lnji;


# instance fields
.field private final a:Landroid/content/BroadcastReceiver;

.field private final b:Landroid/content/Context;

.field private volatile c:I

.field private volatile d:Z

.field private volatile e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lnhp;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnko;->b:Landroid/content/Context;

    invoke-direct {p0, p2}, Lnko;->a(Lnhp;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lnko;->a:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lnko;->a:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lnko;->b:Landroid/content/Context;

    iget-object v2, p0, Lnko;->b:Landroid/content/Context;

    iget-object v3, p0, Lnko;->a:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lnko;)I
    .locals 1

    iget v0, p0, Lnko;->c:I

    return v0
.end method

.method static synthetic a(Lnko;I)I
    .locals 0

    iput p1, p0, Lnko;->c:I

    return p1
.end method

.method private a(Lnhp;)Landroid/content/BroadcastReceiver;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lnkp;

    invoke-direct {v0, p0, p1}, Lnkp;-><init>(Lnko;Lnhp;)V

    return-object v0
.end method

.method static synthetic a(Lnko;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnko;->e:Z

    return p1
.end method

.method static synthetic b(Lnko;)Z
    .locals 1

    iget-boolean v0, p0, Lnko;->e:Z

    return v0
.end method

.method static synthetic b(Lnko;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnko;->d:Z

    return p1
.end method


# virtual methods
.method public a(Lnil;)V
    .locals 3

    iget v0, p0, Lnko;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "device_battery_percent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lnko;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnil;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "device_ischarging"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lnko;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnil;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lnkg;)V
    .locals 2

    iget-object v0, p0, Lnko;->b:Landroid/content/Context;

    iget-object v1, p0, Lnko;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
