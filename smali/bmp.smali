.class final Lbmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/nsd/NsdManager$RegistrationListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lbmp;->a:Ljava/lang/String;

    iput-object p2, p0, Lbmp;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lbmp;->b:Ljava/lang/String;

    invoke-static {v0}, Lbmo;->b(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lbmp;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lbmp;->b:Ljava/lang/String;

    invoke-static {v0}, Lbmo;->b(Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method

.method public onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method
