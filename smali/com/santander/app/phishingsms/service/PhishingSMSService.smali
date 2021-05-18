.class public Lcom/santander/app/phishingsms/service/PhishingSMSService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 25
    new-instance v0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;

    invoke-direct {v0}, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;-><init>()V

    iput-object v0, p0, Lcom/santander/app/phishingsms/service/PhishingSMSService;->a:Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 27
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/santander/app/phishingsms/service/PhishingSMSService;->a:Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/phishingsms/service/PhishingSMSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 34
    iget-object v0, p0, Lcom/santander/app/phishingsms/service/PhishingSMSService;->a:Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/santander/app/phishingsms/service/PhishingSMSService;->a:Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;

    invoke-virtual {p0, v0}, Lcom/santander/app/phishingsms/service/PhishingSMSService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 37
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
