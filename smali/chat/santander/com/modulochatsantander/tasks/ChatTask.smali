.class public Lchat/santander/com/modulochatsantander/tasks/ChatTask;
.super Lasd;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field private c:Lard;

.field private d:Larx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lchat/santander/com/modulochatsantander/tasks/ChatTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lchat/santander/com/modulochatsantander/tasks/ChatTask;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "ChatTask"

    invoke-direct {p0, v0}, Lasd;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/tasks/ChatTask;->c:Lard;

    .line 25
    invoke-static {}, Lary;->b()Lary;

    move-result-object v0

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/tasks/ChatTask;->d:Larx;

    .line 29
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Lasd;->onDestroy()V

    .line 43
    sget-object v0, Lchat/santander/com/modulochatsantander/tasks/ChatTask;->b:Ljava/lang/String;

    const-string v1, "ChatTask service end "

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 49
    sget-object v0, Laps;->by:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    sget-object v1, Lchat/santander/com/modulochatsantander/tasks/ChatTask;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChatTask textToSend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_0
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/tasks/ChatTask;->d:Larx;

    iget-object v1, p0, Lchat/santander/com/modulochatsantander/tasks/ChatTask;->c:Lard;

    sget-object v2, Lapu;->TextMessageSent:Lapu;

    invoke-interface {v0, v1, v2}, Larx;->a(Lard;Lapu;)Z
    :try_end_0
    .catch Laqd; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    sget-object v1, Lchat/santander/com/modulochatsantander/tasks/ChatTask;->b:Ljava/lang/String;

    const-string v2, "doInBackground ChatServiceException: "

    invoke-virtual {v0}, Laqd;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    const-string v0, "Desculpe, estamos resolvendo uma quest\u00e3o t\u00e9cnica e voc\u00ea j\u00e1 vai conseguir usar o chat."

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/tasks/ChatTask;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lasd;->onStart(Landroid/content/Intent;I)V

    .line 34
    sget-object v0, Lchat/santander/com/modulochatsantander/tasks/ChatTask;->b:Ljava/lang/String;

    const-string v1, "ChatTask service start "

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v0, "MESSAGE_SENT_EVENT"

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/tasks/ChatTask;->a(Ljava/lang/String;)V

    .line 38
    return-void
.end method
