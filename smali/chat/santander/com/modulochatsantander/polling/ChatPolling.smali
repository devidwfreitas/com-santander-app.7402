.class public Lchat/santander/com/modulochatsantander/polling/ChatPolling;
.super Lasd;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "[ChatPolling]"


# instance fields
.field private b:Ljava/util/UUID;

.field private d:Larx;

.field private e:Lard;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "ChatPolling"

    invoke-direct {p0, v0}, Lasd;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lary;->b()Lary;

    move-result-object v0

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->d:Larx;

    .line 40
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    .line 33
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->b:Ljava/util/UUID;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 128
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "[ChatPolling]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->b:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ChatPolling Exception "

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    :cond_0
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    invoke-virtual {v0}, Lard;->k()I

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    invoke-virtual {v0}, Lard;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    const-string v0, "[ChatPolling]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->b:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ChatPolling error desc "

    iget-object v3, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    invoke-virtual {v3}, Lard;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    invoke-virtual {v0}, Lard;->z()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 139
    const-string v0, "[ChatPolling]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->b:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ChatPolling error json "

    iget-object v3, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    invoke-virtual {v3}, Lard;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_2
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 4

    .prologue
    .line 51
    invoke-super {p0}, Lasd;->onDestroy()V

    .line 52
    const-string v0, "[ChatPolling]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->b:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ChatPolling onDestroy service end "

    .line 53
    invoke-static {}, Lase;->a()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 59
    .line 61
    const-string v1, "[ChatPolling]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->b:Ljava/util/UUID;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ChatPolling onHandleIntent isValidChatSession: "

    iget-object v5, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    invoke-virtual {v5}, Lard;->f()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 65
    :goto_0
    iget-object v2, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    invoke-virtual {v2}, Lard;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    iget-object v2, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    invoke-virtual {v2}, Lard;->P()Z

    move-result v2

    if-nez v2, :cond_3

    .line 67
    const-string v4, "[ChatPolling]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->b:Ljava/util/UUID;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " => exec polling nro "

    add-int/lit8 v2, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    invoke-virtual {v1}, Lard;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    :try_start_0
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->d:Larx;

    iget-object v4, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    invoke-interface {v1, v4}, Larx;->g(Lard;)Lard;
    :try_end_0
    .catch Laqd; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    :goto_1
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    invoke-virtual {v1}, Lard;->r()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lase;->f(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    invoke-virtual {v0, v3}, Lard;->e(Z)V

    .line 82
    const-string v0, "[ChatPolling]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->b:Ljava/util/UUID;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " POLLING NOTIFY NEW DISCONNECT EVENT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v0, "DISCONNECT_EVENT"

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->a(Ljava/lang/String;)V

    move v0, v3

    .line 102
    :cond_0
    :goto_2
    :try_start_1
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    invoke-virtual {v1}, Lard;->B()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move v1, v2

    .line 107
    goto/16 :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    invoke-direct {p0, v1}, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 75
    :catch_1
    move-exception v1

    .line 76
    invoke-direct {p0, v1}, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 88
    :cond_1
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    invoke-virtual {v1}, Lard;->r()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lase;->k(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    invoke-virtual {v1}, Lard;->r()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lase;->f(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->e:Lard;

    invoke-virtual {v0, v3}, Lard;->e(Z)V

    .line 92
    const-string v0, "[ChatPolling]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->b:Ljava/util/UUID;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " POLLING NOTIFY NEW DISCONNECT EVENT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v0, "DISCONNECT_EVENT"

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->a(Ljava/lang/String;)V

    move v0, v3

    goto :goto_2

    .line 95
    :cond_2
    const-string v1, "[ChatPolling]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->b:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " POLLING NOTIFY NEW TRANSCRIPT EVENT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v1, "NEW_EVENT"

    invoke-virtual {p0, v1}, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 103
    :catch_2
    move-exception v1

    .line 104
    invoke-direct {p0, v1}, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->a(Ljava/lang/Exception;)V

    move v1, v2

    .line 107
    goto/16 :goto_0

    .line 105
    :catch_3
    move-exception v1

    .line 106
    const-string v4, "[ChatPolling]"

    const-string v5, "Pooling Interval "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 107
    goto/16 :goto_0

    .line 117
    :cond_3
    const-string v0, "DISCONNECT_EVENT"

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/polling/ChatPolling;->a(Ljava/lang/String;)V

    .line 118
    return-void

    :cond_4
    move v1, v2

    goto/16 :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lasd;->onStart(Landroid/content/Intent;I)V

    .line 46
    const-string v0, "[ChatPolling]"

    const-string v1, "ChatPolling service start "

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method
