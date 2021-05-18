.class public Laqz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "[ChatSession]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 25
    const-string v0, "[ChatSession]"

    const-string v1, "##################### INIT START SESSION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const-string v0, "[ChatSession]"

    const-string v1, "Chat Version: 2.1.8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lard;->x()Landroid/content/Context;

    move-result-object v1

    .line 31
    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v2

    invoke-interface {v2}, Lapa;->a()V

    .line 35
    :cond_0
    invoke-virtual {v0}, Lard;->q()Lapw;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 36
    sget-object v2, Lara;->a:[I

    invoke-virtual {v0}, Lard;->q()Lapw;

    move-result-object v3

    invoke-virtual {v3}, Lapw;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 39
    :pswitch_0
    const-string v2, "[ChatSession]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chat indisponivel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lard;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v2, "Voc\u00ea pode tentar depois?"

    .line 42
    invoke-virtual {v0}, Lard;->l()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Fechar"

    .line 41
    invoke-static {v1, v2, v0, v3}, Lase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :pswitch_1
    invoke-virtual {v0}, Lard;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lard;->u()Z

    move-result v2

    if-nez v2, :cond_2

    .line 47
    invoke-virtual {v0}, Lard;->b()V

    .line 49
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 53
    :pswitch_2
    const-string v0, "Chat Santander"

    const-string v2, "Chat indispon\u00edvel no momento."

    const-string v3, "Cancelar"

    invoke-static {v1, v0, v2, v3}, Lase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {v0}, Lard;->k()I

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    const-string v2, "[ChatSession]"

    invoke-virtual {v0}, Lard;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v0, "Voc\u00ea pode tentar depois?"

    const-string v2, "Desculpe, estamos resolvendo uma quest\u00e3o t\u00e9cnica e voc\u00ea j\u00e1 vai conseguir usar o chat."

    const-string v3, "Fechar"

    invoke-static {v1, v0, v2, v3}, Lase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
