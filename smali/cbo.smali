.class Lcbo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnx;


# instance fields
.field final synthetic a:Lcom/facebook/share/model/AppInviteContent;

.field final synthetic b:Lcbn;


# direct methods
.method constructor <init>(Lcbn;Lcom/facebook/share/model/AppInviteContent;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcbo;->b:Lcbn;

    iput-object p2, p0, Lcbo;->a:Lcom/facebook/share/model/AppInviteContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcbo;->a:Lcom/facebook/share/model/AppInviteContent;

    invoke-static {v0}, Lcbk;->a(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 241
    const-string v0, "AppInviteDialog"

    const-string v1, "Attempting to present the AppInviteDialog with an outdated Facebook app on the device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
