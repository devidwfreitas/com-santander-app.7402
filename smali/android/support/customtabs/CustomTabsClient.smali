.class public Landroid/support/customtabs/CustomTabsClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mService:Landroid/support/customtabs/ICustomTabsService;

.field private final mServiceComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    .line 49
    iput-object p2, p0, Landroid/support/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    .line 50
    return-void
.end method

.method public static bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroid/support/customtabs/CustomTabsServiceConnection;)Z
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    :cond_0
    const/16 v1, 0x21

    invoke-virtual {p0, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public static connectAndInitialize(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 134
    if-nez p1, :cond_0

    .line 153
    :goto_0
    return v0

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 136
    new-instance v2, Landroid/support/customtabs/CustomTabsClient$1;

    invoke-direct {v2, v1}, Landroid/support/customtabs/CustomTabsClient$1;-><init>(Landroid/content/Context;)V

    .line 151
    :try_start_0
    invoke-static {v1, p1, v2}, Landroid/support/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroid/support/customtabs/CustomTabsServiceConnection;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Landroid/content/Context;Ljava/util/List;Z)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 98
    if-nez p1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    if-nez p2, :cond_1

    .line 102
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    if-eqz p1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move-object v0, v1

    .line 111
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 116
    :goto_1
    return-object v0

    :cond_3
    move-object v0, p1

    .line 98
    goto :goto_0

    .line 116
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 208
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/ICustomTabsService;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newSession(Landroid/support/customtabs/CustomTabsCallback;)Landroid/support/customtabs/CustomTabsSession;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 186
    new-instance v1, Landroid/support/customtabs/CustomTabsClient$2;

    invoke-direct {v1, p0, p1}, Landroid/support/customtabs/CustomTabsClient$2;-><init>(Landroid/support/customtabs/CustomTabsClient;Landroid/support/customtabs/CustomTabsCallback;)V

    .line 199
    :try_start_0
    iget-object v2, p0, Landroid/support/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    invoke-interface {v2, v1}, Landroid/support/customtabs/ICustomTabsService;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/customtabs/CustomTabsSession;

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v3, p0, Landroid/support/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    invoke-direct {v0, v2, v1, v3}, Landroid/support/customtabs/CustomTabsSession;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public warmup(J)Z
    .locals 1

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/ICustomTabsService;->warmup(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 170
    :goto_0
    return v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const/4 v0, 0x0

    goto :goto_0
.end method
