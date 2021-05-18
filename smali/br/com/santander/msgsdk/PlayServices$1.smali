.class Lbr/com/santander/msgsdk/PlayServices$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/MSGSDK$Callback;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/PlayServices;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/PlayServices;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lbr/com/santander/msgsdk/PlayServices$1;->this$0:Lbr/com/santander/msgsdk/PlayServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "PlayServices"

    const-string v1, "Error unsubscribe."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lbr/com/santander/msgsdk/PlayServices$1;->this$0:Lbr/com/santander/msgsdk/PlayServices;

    invoke-static {v0}, Lbr/com/santander/msgsdk/PlayServices;->access$000(Lbr/com/santander/msgsdk/PlayServices;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbr/com/santander/msgsdk/util/Preferences;->clearUserRegistered(Landroid/content/Context;)V

    .line 56
    iget-object v0, p0, Lbr/com/santander/msgsdk/PlayServices$1;->this$0:Lbr/com/santander/msgsdk/PlayServices;

    invoke-static {v0}, Lbr/com/santander/msgsdk/PlayServices;->access$000(Lbr/com/santander/msgsdk/PlayServices;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG;->start(Landroid/content/Context;)V

    .line 57
    return-void
.end method
