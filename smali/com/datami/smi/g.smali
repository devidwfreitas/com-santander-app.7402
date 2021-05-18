.class final Lcom/datami/smi/g;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/datami/smi/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/datami/smi/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/datami/smi/c;->a(Z)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
