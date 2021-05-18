.class Ljms;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljmn;


# direct methods
.method constructor <init>(Ljmn;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Ljms;->a:Ljmn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 440
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Ljms;->a:Ljmn;

    invoke-virtual {v0}, Ljmn;->d()V

    .line 443
    :cond_0
    return-void
.end method
