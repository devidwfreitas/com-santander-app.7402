.class public Larq;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Larr;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Larq;->a:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Larq;->b:Ljava/lang/Boolean;

    .line 23
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Larq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larr;

    .line 43
    invoke-direct {p0, v0}, Larq;->b(Larr;)V

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method private b(Larr;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Larq;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Larq;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-interface {p1}, Larr;->g()V

    goto :goto_0

    .line 54
    :cond_2
    invoke-interface {p1}, Larr;->h()V

    goto :goto_0
.end method


# virtual methods
.method public a(Larr;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Larq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-direct {p0, p1}, Larq;->b(Larr;)V

    .line 61
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 26
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 30
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_3

    .line 33
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Larq;->b:Ljava/lang/Boolean;

    .line 38
    :cond_2
    :goto_1
    invoke-direct {p0}, Larq;->a()V

    goto :goto_0

    .line 34
    :cond_3
    const-string v0, "noConnectivity"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Larq;->b:Ljava/lang/Boolean;

    goto :goto_1
.end method
