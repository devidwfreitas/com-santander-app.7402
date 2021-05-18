.class public Lchat/santander/com/modulochatsantander/tasks/EndSession;
.super Lasd;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lard;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lchat/santander/com/modulochatsantander/tasks/EndSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lchat/santander/com/modulochatsantander/tasks/EndSession;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "EndSession"

    invoke-direct {p0, v0}, Lasd;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/tasks/EndSession;->c:Lard;

    .line 27
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 31
    const-string v0, "END_SESSION_EVENT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 33
    :try_start_0
    invoke-static {}, Lary;->b()Lary;

    move-result-object v0

    iget-object v2, p0, Lchat/santander/com/modulochatsantander/tasks/EndSession;->c:Lard;

    invoke-virtual {v0, v2}, Lary;->c(Lard;)Lard;
    :try_end_0
    .catch Laqd; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/tasks/EndSession;->c:Lard;

    invoke-virtual {v0}, Lard;->d()V

    .line 42
    :goto_0
    if-eqz v1, :cond_0

    .line 43
    const-string v0, "END_SESSION_EVENT"

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/tasks/EndSession;->a(Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    :try_start_1
    sget-object v2, Lchat/santander/com/modulochatsantander/tasks/EndSession;->b:Ljava/lang/String;

    const-string v3, "Exit button erro Exception: "

    invoke-virtual {v0}, Laqd;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/tasks/EndSession;->c:Lard;

    invoke-virtual {v0}, Lard;->d()V

    goto :goto_0

    .line 36
    :catch_1
    move-exception v0

    .line 37
    :try_start_2
    sget-object v2, Lchat/santander/com/modulochatsantander/tasks/EndSession;->b:Ljava/lang/String;

    const-string v3, "End Chat Session Exception: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/tasks/EndSession;->c:Lard;

    invoke-virtual {v0}, Lard;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lchat/santander/com/modulochatsantander/tasks/EndSession;->c:Lard;

    invoke-virtual {v1}, Lard;->d()V

    throw v0
.end method
