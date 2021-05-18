.class public Lchat/santander/com/modulochatsantander/tasks/StartSession;
.super Lasd;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lchat/santander/com/modulochatsantander/tasks/StartSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lchat/santander/com/modulochatsantander/tasks/StartSession;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "StartSession"

    invoke-direct {p0, v0}, Lasd;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    .line 32
    :try_start_0
    invoke-static {v0}, Lase;->d(Lard;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-static {}, Lary;->b()Lary;

    move-result-object v1

    invoke-virtual {v1, v0}, Lary;->b(Lard;)Lard;

    .line 37
    :cond_0
    const-string v0, "START_SESSION_EVENT"

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/tasks/StartSession;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Laqd; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    sget-object v1, Lchat/santander/com/modulochatsantander/tasks/StartSession;->b:Ljava/lang/String;

    const-string v2, "StartSession Exception: "

    invoke-virtual {v0}, Laqd;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 40
    :catch_1
    move-exception v0

    .line 41
    sget-object v1, Lchat/santander/com/modulochatsantander/tasks/StartSession;->b:Ljava/lang/String;

    const-string v2, "StartSession Exception: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
