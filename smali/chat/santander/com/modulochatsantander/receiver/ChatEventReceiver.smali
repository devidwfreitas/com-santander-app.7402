.class public Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field private a:Larp;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Larp;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;->a:Larp;

    .line 30
    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 34
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;->a:Larp;

    if-eqz v1, :cond_1

    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    sget-object v1, Laps;->bx:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 59
    :cond_1
    :goto_1
    return-void

    .line 37
    :sswitch_0
    const-string v2, "NEW_EVENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "DISCONNECT_EVENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "MESSAGE_SENT_EVENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "Desculpe, estamos resolvendo uma quest\u00e3o t\u00e9cnica e voc\u00ea j\u00e1 vai conseguir usar o chat."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "START_SESSION_EVENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "END_SESSION_EVENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 39
    :pswitch_0
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;->a:Larp;

    invoke-interface {v0}, Larp;->a()V

    goto :goto_1

    .line 42
    :pswitch_1
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;->a:Larp;

    invoke-interface {v0}, Larp;->b()V

    goto :goto_1

    .line 45
    :pswitch_2
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;->a:Larp;

    invoke-interface {v0}, Larp;->c()V

    goto :goto_1

    .line 48
    :pswitch_3
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;->a:Larp;

    invoke-interface {v0}, Larp;->d()V

    goto :goto_1

    .line 51
    :pswitch_4
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;->a:Larp;

    invoke-interface {v0}, Larp;->e()V

    goto :goto_1

    .line 54
    :pswitch_5
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;->a:Larp;

    invoke-interface {v0}, Larp;->f()V

    goto :goto_1

    .line 37
    :sswitch_data_0
    .sparse-switch
        -0x7a9ec2e9 -> :sswitch_1
        -0x38074995 -> :sswitch_2
        -0x33261505 -> :sswitch_0
        0x235a36ed -> :sswitch_5
        0x32ccbe34 -> :sswitch_4
        0x37a93a49 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
