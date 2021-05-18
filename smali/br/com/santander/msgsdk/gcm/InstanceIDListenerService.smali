.class public Lbr/com/santander/msgsdk/gcm/InstanceIDListenerService;
.super Lczs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lczs;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 0

    .prologue
    .line 10
    invoke-static {p0}, Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG;->start(Landroid/content/Context;)V

    .line 11
    return-void
.end method
