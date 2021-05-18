.class public Lcom/adjust/sdk/AdjustReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 16
    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 23
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/adjust/sdk/AdjustInstance;->sendReferrer(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
