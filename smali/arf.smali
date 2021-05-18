.class public Larf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Larp;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lard;

.field private c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Larf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Larf;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    iput-object v0, p0, Larf;->b:Lard;

    .line 32
    return-void
.end method

.method static synthetic a(Larf;)Lard;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Larf;->b:Lard;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Larf;->g()V

    .line 37
    iget-object v0, p0, Larf;->b:Lard;

    invoke-virtual {v0}, Lard;->R()V

    .line 39
    iget-object v0, p0, Larf;->b:Lard;

    invoke-virtual {v0}, Lard;->H()Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    move-result-object v0

    iput-object v0, p0, Larf;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    .line 40
    iget-object v0, p0, Larf;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Larf;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-virtual {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a()V

    .line 43
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Larf;->b:Lard;

    invoke-virtual {v0}, Lard;->H()Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    move-result-object v0

    iput-object v0, p0, Larf;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    .line 48
    iget-object v0, p0, Larf;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Larf;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-virtual {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->b()V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Larf;->b:Lard;

    invoke-static {v0}, Lase;->c(Lard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Larf;->b:Lard;

    const/4 v1, 0x0

    sget-object v2, Larf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lard;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Larf;->b:Lard;

    invoke-virtual {v0}, Lard;->H()Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    move-result-object v0

    iput-object v0, p0, Larf;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    .line 59
    iget-object v0, p0, Larf;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Larf;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-virtual {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->c()V

    .line 62
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Larf;->b:Lard;

    invoke-virtual {v0}, Lard;->x()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Larf;->d:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Larf;->b:Lard;

    invoke-virtual {v0}, Lard;->H()Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    move-result-object v0

    iput-object v0, p0, Larf;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    .line 68
    iget-object v0, p0, Larf;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Larf;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-virtual {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->d()V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "ChatEventReceiverImpl"

    const-string v1, "else : onMessageErrorDefault "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Larf;->h()V

    .line 78
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Larf;->b:Lard;

    invoke-virtual {v0}, Lard;->H()Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    move-result-object v0

    iput-object v0, p0, Larf;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    .line 83
    iget-object v0, p0, Larf;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Larf;->c:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-virtual {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->f()V

    .line 86
    :cond_0
    return-void
.end method

.method g()V
    .locals 6

    .prologue
    .line 89
    iget-object v0, p0, Larf;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Larf;->e:Ljava/util/ArrayList;

    .line 93
    :cond_0
    iget-object v0, p0, Larf;->b:Lard;

    invoke-virtual {v0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 94
    invoke-virtual {v0}, Lark;->i()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Larf;->e:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v0}, Lark;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v2

    sget-object v3, Lapu;->TextMessageSent:Lapu;

    if-ne v2, v3, :cond_1

    .line 97
    iget-object v2, p0, Larf;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lark;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v2, p0, Larf;->b:Lard;

    invoke-virtual {v2}, Lard;->I()Laqw;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_1

    .line 100
    invoke-interface {v2, v0}, Laqw;->a(Lark;)V

    goto :goto_0

    .line 104
    :cond_2
    return-void
.end method

.method h()V
    .locals 6

    .prologue
    .line 107
    iget-object v0, p0, Larf;->b:Lard;

    invoke-virtual {v0}, Lard;->x()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Larf;->d:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Larf;->b:Lard;

    invoke-static {v0}, Lase;->c(Lard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Larf;->d:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Larf;->d:Landroid/content/Context;

    const-class v3, Lchat/santander/com/modulochatsantander/polling/ChatPolling;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 125
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v0, Larf;->a:Ljava/lang/String;

    const-string v1, "handleSessionCreationResult dialog Desculpe, estamos resolvendo uma quest\u00e3o t\u00e9cnica e voc\u00ea j\u00e1 vai conseguir usar o chat."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Larf;->d:Landroid/content/Context;

    const-string v1, "Voc\u00ea pode tentar depois?"

    const-string v2, "Desculpe, estamos resolvendo uma quest\u00e3o t\u00e9cnica e voc\u00ea j\u00e1 vai conseguir usar o chat."

    const-string v3, "Fechar"

    new-instance v4, Larg;

    invoke-direct {v4, p0}, Larg;-><init>(Larf;)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0
.end method
