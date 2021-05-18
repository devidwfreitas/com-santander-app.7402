.class Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/MSGSDK$Callback;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG$1;->this$0:Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "RegIntentService"

    const-string v1, "Subscribe error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->saveUserPreferences()V

    .line 59
    return-void
.end method
