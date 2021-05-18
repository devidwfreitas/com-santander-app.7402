.class public Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field protected static b:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lkce;",
            ">;>;"
        }
    .end annotation
.end field

.field public static d:Z = false

.field private static final g:Ljava/lang/String; = "PhishingSMSReceiver"


# instance fields
.field public c:Lkcl;

.field public e:Landroid/content/Intent;

.field public f:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Lkce;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->j:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    sget-object v0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkce;

    .line 116
    invoke-virtual {v0}, Lkce;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Lkcd;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkcd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkcd;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    sget-object v0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkce;

    .line 125
    invoke-virtual {v0}, Lkce;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Lkcd;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkcd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkcd;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lkce;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    sget-object v0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkce;

    .line 134
    invoke-virtual {v0}, Lkce;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_1
    return-object v1
.end method

.method private d()V
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->d:Z

    if-nez v0, :cond_2

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->d:Z

    .line 66
    iget-object v0, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->c:Lkcl;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lkcm;

    invoke-direct {v0, p0}, Lkcm;-><init>(Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;)V

    iput-object v0, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->c:Lkcl;

    .line 70
    :cond_0
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/santander/app/MinhaConta;->a(Landroid/content/Context;)V

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->a()V

    .line 76
    :cond_2
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->c:Lkcl;

    invoke-interface {v0}, Lkcl;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->c:Lkcl;

    invoke-interface {v0}, Lkcl;->h()V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->j:Z

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->b()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 80
    iget-object v0, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->e:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 81
    iget-object v0, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->e:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_6

    .line 84
    sget-object v0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->b:Ljava/util/HashMap;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->e:Landroid/content/Intent;

    invoke-static {v0}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 88
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_5

    aget-object v0, v2, v1

    .line 89
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 91
    sget-object v5, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 92
    :cond_1
    sget-object v5, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->b:Ljava/util/HashMap;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_2
    new-instance v5, Lkce;

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lkce;-><init>(Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-direct {p0, v4}, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v4}, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    :cond_3
    iput-object v4, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->h:Ljava/lang/String;

    .line 99
    iput-object v5, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->i:Lkce;

    .line 101
    invoke-direct {p0}, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->e()V

    .line 88
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->h:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->i:Lkce;

    if-nez v0, :cond_6

    .line 106
    invoke-virtual {p0}, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->c()V

    .line 109
    :cond_6
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->c:Lkcl;

    iget-object v1, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->i:Lkce;

    invoke-interface {v0, v1, v2}, Lkcl;->a(Ljava/lang/String;Lkce;)V

    .line 154
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    const/4 v0, 0x0

    sput-boolean v0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->d:Z

    .line 159
    sput-object v1, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->b:Ljava/util/HashMap;

    .line 160
    iput-object v1, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->h:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->i:Lkce;

    .line 162
    iget-boolean v0, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->j:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiq;->a(Lfwu;)V

    .line 164
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiq;->a(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiq;->a([B)V

    .line 168
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 49
    iput-object p2, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->e:Landroid/content/Intent;

    .line 50
    iput-object p1, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->f:Landroid/content/Context;

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->f:Landroid/content/Context;

    const-string v1, "android.permission.READ_SMS"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->d()V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/phishingsms/receiver/PhishingSMSReceiver;->d()V

    goto :goto_0
.end method
