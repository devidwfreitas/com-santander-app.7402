.class public Laqt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "santander.com.br"

.field private static b:Ljava/lang/String; = null

.field private static c:Laqw; = null

.field private static d:Lard; = null

.field private static final e:Ljava/lang/String; = "[ChatComponent]"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Laqt;->b:Ljava/lang/String;

    .line 37
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    sput-object v0, Laqt;->d:Lard;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lard;)Lard;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Laqt;->d:Lard;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 30
    invoke-static {p0, p1}, Laqt;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    sget-object v0, Laqt;->d:Lard;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Laqt;->d:Lard;

    invoke-virtual {v0}, Lard;->e()V

    .line 69
    sget-object v0, Laqt;->d:Lard;

    invoke-virtual {v0, v1}, Lard;->a(Larb;)V

    .line 70
    sput-object v1, Laqt;->d:Lard;

    .line 72
    :cond_0
    return-void
.end method

.method public static a(Laqx;)V
    .locals 4

    .prologue
    .line 43
    const-string v0, "[ChatComponent]"

    const-string v1, "Chat init version: 2.1.8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    sput-object v0, Laqt;->d:Lard;

    .line 47
    sget-object v0, Laqt;->d:Lard;

    invoke-virtual {p0}, Laqx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Laqx;->d()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {p0}, Laqx;->b()Larb;

    move-result-object v3

    .line 47
    invoke-virtual {v0, v1, v2, v3}, Lard;->a(Ljava/lang/String;Ljava/lang/String;Larb;)V

    .line 49
    sget-object v0, Laqt;->d:Lard;

    invoke-virtual {p0}, Laqx;->f()Lapa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lard;->a(Lapa;)V

    .line 50
    sget-object v0, Laqt;->d:Lard;

    invoke-virtual {p0}, Laqx;->g()Larv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lard;->a(Larv;)V

    .line 51
    sget-object v0, Laqt;->d:Lard;

    invoke-virtual {p0}, Laqx;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lard;->a(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0}, Laqx;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laqt;->b:Ljava/lang/String;

    .line 53
    sget-object v0, Laqt;->d:Lard;

    invoke-virtual {p0}, Laqx;->h()Laqw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lard;->a(Laqw;)V

    .line 54
    sget-object v0, Laqt;->d:Lard;

    invoke-virtual {v0}, Lard;->I()Laqw;

    move-result-object v0

    sput-object v0, Laqt;->c:Laqw;

    .line 56
    sget-object v0, Laqt;->d:Lard;

    invoke-virtual {p0}, Laqx;->i()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lard;->c(Ljava/lang/Integer;)V

    .line 57
    sget-object v0, Laqt;->d:Lard;

    invoke-virtual {p0}, Laqx;->j()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lard;->d(Ljava/lang/Integer;)V

    .line 59
    sget-object v0, Laqt;->d:Lard;

    invoke-virtual {p0}, Laqx;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lard;->g(Z)V

    .line 62
    new-instance v0, Laqv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laqv;-><init>(Laqu;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Laqv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "chat.santander.com.br"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "google.com.br"

    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lapn;->cert_middle_prod:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 141
    const-string v1, "[ChatComponent]"

    const-string v2, "loadHTTPSCA ==> PROD"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    return-object v0

    .line 142
    :cond_2
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "esdblue.paas.santanderbr.corp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lapn;->cert_chat_oculto:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 144
    const-string v1, "[ChatComponent]"

    const-string v2, "loadHTTPSCA ==> OCULTO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_3
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "chathomolog.santander.com.br"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lapn;->cert_chat_hi:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 147
    const-string v1, "[ChatComponent]"

    const-string v2, "loadHTTPSCA ==> HI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_4
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "esd.paas.santanderbr.pre.corp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lapn;->cert_chat_hk:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 150
    const-string v1, "[ChatComponent]"

    const-string v2, "loadHTTPSCA ==> HK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_5
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "esd.paas.isbanbr.dev.corp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lapn;->cert_chat_hg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 153
    const-string v1, "[ChatComponent]"

    const-string v2, "loadHTTPSCA ==> HG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :cond_6
    const-string v1, "[ChatComponent]"

    const-string v2, "loadHTTPSCA ==> O Chat n\u00e3o est\u00e1 dispon\u00edvel nesse ambiente"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Laqt;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Lard;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Laqt;->d:Lard;

    return-object v0
.end method

.method static synthetic d()Laqw;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Laqt;->c:Laqw;

    return-object v0
.end method
