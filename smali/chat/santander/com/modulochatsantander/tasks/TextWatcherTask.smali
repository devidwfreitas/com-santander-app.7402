.class public Lchat/santander/com/modulochatsantander/tasks/TextWatcherTask;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lchat/santander/com/modulochatsantander/tasks/TextWatcherTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lchat/santander/com/modulochatsantander/tasks/TextWatcherTask;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "TextWatcherTask"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 29
    const-string v0, "TEXT_WATCHER_TASK_EVENT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 33
    :try_start_0
    invoke-static {}, Lary;->b()Lary;

    move-result-object v1

    invoke-static {}, Lard;->a()Lard;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lapu;->TypingStarted:Lapu;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lary;->a(Lard;Lapu;)Z

    .line 38
    :goto_1
    return-void

    .line 33
    :cond_0
    sget-object v0, Lapu;->TypingStopped:Lapu;
    :try_end_0
    .catch Laqd; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    sget-object v1, Lchat/santander/com/modulochatsantander/tasks/TextWatcherTask;->a:Ljava/lang/String;

    const-string v2, "doInBackground ChatServiceException: "

    invoke-virtual {v0}, Laqd;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
