.class Lbr/com/santander/msgsdk/PlayServices;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328

.field private static final TAG:Ljava/lang/String; = "PlayServices"


# instance fields
.field private apiAvailability:Lcon;

.field private context:Landroid/content/Context;

.field private hashUser:Ljava/lang/String;

.field private isSuccess:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lbr/com/santander/msgsdk/PlayServices;->context:Landroid/content/Context;

    .line 29
    invoke-static {}, Lcon;->a()Lcon;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/PlayServices;->apiAvailability:Lcon;

    .line 30
    iput-object p2, p0, Lbr/com/santander/msgsdk/PlayServices;->hashUser:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lbr/com/santander/msgsdk/PlayServices;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lbr/com/santander/msgsdk/PlayServices;->context:Landroid/content/Context;

    return-object v0
.end method

.method private callback()Lbr/com/santander/msgsdk/MSGSDK$Callback;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lbr/com/santander/msgsdk/PlayServices$1;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/PlayServices$1;-><init>(Lbr/com/santander/msgsdk/PlayServices;)V

    return-object v0
.end method

.method private check()Z
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lbr/com/santander/msgsdk/PlayServices;->apiAvailability:Lcon;

    iget-object v1, p0, Lbr/com/santander/msgsdk/PlayServices;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcon;->a(Landroid/content/Context;)I

    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    iget-object v1, p0, Lbr/com/santander/msgsdk/PlayServices;->apiAvailability:Lcon;

    invoke-virtual {v1, v0}, Lcon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "PlayServices"

    iget-object v2, p0, Lbr/com/santander/msgsdk/PlayServices;->apiAvailability:Lcon;

    invoke-virtual {v2, v0}, Lcon;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    const/4 v0, 0x0

    .line 76
    :goto_1
    return v0

    .line 72
    :cond_0
    const-string v0, "PlayServices"

    const-string v1, "This device is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private validateUser()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lbr/com/santander/msgsdk/PlayServices;->context:Landroid/content/Context;

    invoke-static {v1}, Lbr/com/santander/msgsdk/util/Preferences;->getUserRegistered(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 42
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    const/4 v0, 0x1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lbr/com/santander/msgsdk/PlayServices;->hashUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v1

    invoke-direct {p0}, Lbr/com/santander/msgsdk/PlayServices;->callback()Lbr/com/santander/msgsdk/MSGSDK$Callback;

    move-result-object v2

    invoke-interface {v1, v2}, Lbr/com/santander/msgsdk/MSG;->unsubscribeArch(Lbr/com/santander/msgsdk/MSGSDK$Callback;)V

    goto :goto_0
.end method


# virtual methods
.method isSuccess()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/PlayServices;->isSuccess:Z

    return v0
.end method

.method showErrorDialog(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lbr/com/santander/msgsdk/PlayServices;->apiAvailability:Lcon;

    iget-object v1, p0, Lbr/com/santander/msgsdk/PlayServices;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcon;->a(Landroid/content/Context;)I

    move-result v0

    .line 85
    iget-object v1, p0, Lbr/com/santander/msgsdk/PlayServices;->apiAvailability:Lcon;

    const/16 v2, 0x2328

    invoke-virtual {v1, p1, v0, v2}, Lcon;->a(Landroid/app/Activity;II)Landroid/app/Dialog;

    .line 86
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lbr/com/santander/msgsdk/PlayServices;->check()Z

    move-result v0

    iput-boolean v0, p0, Lbr/com/santander/msgsdk/PlayServices;->isSuccess:Z

    .line 35
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/PlayServices;->isSuccess:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lbr/com/santander/msgsdk/PlayServices;->validateUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lbr/com/santander/msgsdk/PlayServices;->context:Landroid/content/Context;

    invoke-static {v0}, Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG;->start(Landroid/content/Context;)V

    .line 38
    :cond_0
    return-void
.end method
