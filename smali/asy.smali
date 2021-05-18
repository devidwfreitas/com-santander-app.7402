.class public abstract Lasy;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "[ChatBaseActivity]"

.field private static b:Lard;

.field private static c:Larx;


# instance fields
.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    sput-object v0, Lasy;->b:Lard;

    .line 32
    invoke-static {}, Lary;->b()Lary;

    move-result-object v0

    sput-object v0, Lasy;->c:Larx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 100
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lasy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 101
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 102
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lasy;->b:Lard;

    if-eqz v0, :cond_0

    sget-object v0, Lasy;->b:Lard;

    .line 117
    invoke-virtual {v0}, Lard;->k()I

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "Chat Santander"

    sget-object v1, Lasy;->b:Lard;

    .line 120
    invoke-virtual {v1}, Lard;->z()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v0, v1, p1}, Lase;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 123
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 1

    .prologue
    .line 135
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p0, p1}, Lasy;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 137
    invoke-virtual {p0}, Lasy;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lasy;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 139
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 130
    const-string v0, "[ChatBaseActivity]"

    const-string v1, "enable finish session when close activity: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-boolean p1, p0, Lasy;->d:Z

    .line 132
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lasy;->d:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lasy;->a(Z)V

    .line 42
    const-string v0, "[ChatBaseActivity]"

    const-string v1, "ChatBaseActivity: onCreate "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 66
    const-string v0, "[ChatBaseActivity]"

    const-string v1, "ChatBaseActivity: onDestroy "

    const-string v2, "init"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v0, Lasy;->b:Lard;

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    sget-object v0, Lasy;->b:Lard;

    invoke-virtual {v0}, Lard;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lasy;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lasy;->b:Lard;

    invoke-virtual {v0}, Lard;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lasy;->b:Lard;

    invoke-virtual {v0}, Lard;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lary;->b()Lary;

    move-result-object v0

    sget-object v1, Lasy;->b:Lard;

    invoke-virtual {v0, v1}, Lary;->c(Lard;)Lard;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :cond_0
    :goto_0
    const-class v0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;

    invoke-direct {p0, v0}, Lasy;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lchat/santander/com/modulochatsantander/polling/ChatPolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lasy;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 95
    :cond_1
    :goto_1
    const-string v0, "[ChatBaseActivity]"

    const-string v1, "ChatBaseActivity: onDestroy "

    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v0, "[ChatBaseActivity]"

    const-string v1, "ChatBaseActivity: onDestroy (NPEX)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :catch_1
    move-exception v0

    .line 83
    const-string v1, "[ChatBaseActivity]"

    const-string v2, "ChatBaseActivity: Error onDestroy endChatSession: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 90
    :catch_2
    move-exception v0

    .line 91
    const-string v1, "[ChatBaseActivity]"

    const-string v2, "ChatPolling: Error onDestroy stop ChatPolling: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 54
    const-string v0, "[ChatBaseActivity]"

    const-string v1, "ChatBaseActivity: onPause "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 48
    const-string v0, "[ChatBaseActivity]"

    const-string v1, "ChatBaseActivity: onResume "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 60
    const-string v0, "[ChatBaseActivity]"

    const-string v1, "ChatBaseActivity: onStop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method
