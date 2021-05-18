.class public Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegIntentService"

.field private static final intentExtraUpdateToken:Ljava/lang/String; = "updateToken"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "RegIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private callback()Lbr/com/santander/msgsdk/MSGSDK$Callback;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG$1;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG$1;-><init>(Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG;)V

    return-object v0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG;->start(Landroid/content/Context;Z)V

    .line 25
    return-void
.end method

.method public static start(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    if-eqz p1, :cond_0

    const-string v1, "updateToken"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 33
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v1

    invoke-direct {p0}, Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG;->callback()Lbr/com/santander/msgsdk/MSGSDK$Callback;

    move-result-object v2

    invoke-interface {v1, v2}, Lbr/com/santander/msgsdk/MSG;->subscribeArch(Lbr/com/santander/msgsdk/MSGSDK$Callback;)V

    .line 43
    const-string v1, "RegIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSGSDK - GCM Registration Token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    const-string v1, "updateToken"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "spUtFile"

    invoke-virtual {p0, v0, v4}, Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    const-string v1, "sput"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    :cond_0
    return-void
.end method
