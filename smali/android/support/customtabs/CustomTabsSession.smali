.class public final Landroid/support/customtabs/CustomTabsSession;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomTabsSession"


# instance fields
.field private final mCallback:Landroid/support/customtabs/ICustomTabsCallback;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mService:Landroid/support/customtabs/ICustomTabsService;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    .line 46
    iput-object p2, p0, Landroid/support/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    .line 47
    iput-object p3, p0, Landroid/support/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    .line 48
    return-void
.end method


# virtual methods
.method getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v1, p0, Landroid/support/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/customtabs/ICustomTabsService;->mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 70
    :goto_0
    return v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v1, "android.support.customtabs.customaction.ICON"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    const-string v1, "android.support.customtabs.customaction.DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 89
    const-string v2, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 91
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0, v2, v1}, Landroid/support/customtabs/ICustomTabsService;->updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 93
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSecondaryToolbarViews(Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Z
    .locals 3
    .param p1    # Landroid/widget/RemoteViews;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    const-string v1, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 110
    const-string v1, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 111
    const-string v1, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 113
    :try_start_0
    iget-object v1, p0, Landroid/support/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v1, v2, v0}, Landroid/support/customtabs/ICustomTabsService;->updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 115
    :goto_0
    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setToolbarItem(ILandroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    const-string v1, "android.support.customtabs.customaction.ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    const-string v1, "android.support.customtabs.customaction.ICON"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    const-string v1, "android.support.customtabs.customaction.DESCRIPTION"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-string v2, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 139
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0, v2, v1}, Landroid/support/customtabs/ICustomTabsService;->updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 141
    :goto_0
    return v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const/4 v0, 0x0

    goto :goto_0
.end method
