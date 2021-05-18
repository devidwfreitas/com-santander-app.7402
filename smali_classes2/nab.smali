.class public Lnab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ERROR_DLCRYPTO"

.field private static final b:Ljava/lang/String; = "MBB"

.field private static c:Lnab;


# instance fields
.field private d:Lji;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lji;->a()Lji;

    move-result-object v0

    iput-object v0, p0, Lnab;->d:Lji;

    .line 37
    return-void
.end method

.method public static a()Lnab;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lnab;->c:Lnab;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lnab;

    invoke-direct {v0}, Lnab;-><init>()V

    sput-object v0, Lnab;->c:Lnab;

    .line 43
    :cond_0
    sget-object v0, Lnab;->c:Lnab;

    return-object v0
.end method

.method static synthetic a(Lnab;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lnab;->d(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lnab;->d:Lji;

    invoke-virtual {v0, p1}, Lji;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v1, "ERROR_DLCRYPTO"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private g()Lir;
    .locals 6

    .prologue
    .line 134
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 136
    :try_start_0
    const-string v0, "clientPublicKey"

    invoke-virtual {p0}, Lnab;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v0, "system"

    const-string v1, "MBB"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 144
    :try_start_1
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v1

    invoke-virtual {v1}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "appKey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    :goto_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Lgny;->SECURY_PUBLIC_KEY:Lgny;

    invoke-virtual {v1}, Lgny;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    return-object v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "ERROR_DLCRYPTO"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    const-string v1, "Error"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private h()Lih;
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lnac;

    invoke-direct {v0, p0}, Lnac;-><init>(Lnab;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lnab;->d:Lji;

    invoke-virtual {v0, p1}, Lji;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v1, "ERROR_DLCRYPTO"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    const-string v0, ""

    .line 100
    :try_start_0
    iget-object v1, p0, Lnab;->d:Lji;

    invoke-virtual {v1, p1}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    const-string v1, "//s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    const-string v2, "ERROR_DLCRYPTO"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->b()Ljava/lang/String;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Lnab;->a(Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lnab;->e()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    const-string v0, ""

    .line 114
    :try_start_0
    iget-object v1, p0, Lnab;->d:Lji;

    invoke-virtual {v1, p1}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    const-string v2, "ERROR_DLCRYPTO"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnab;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v1, "ERROR_DLCRYPTO"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lnab;->d:Lji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lji;->a(Z)V

    .line 66
    const-string v0, ""

    .line 69
    :try_start_0
    iget-object v1, p0, Lnab;->d:Lji;

    invoke-virtual {v1}, Lji;->c()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    const-string v2, "ERROR_DLCRYPTO"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    invoke-virtual {v0}, Lgnp;->b()Lie;

    move-result-object v0

    invoke-direct {p0}, Lnab;->g()Lir;

    move-result-object v1

    invoke-direct {p0}, Lnab;->h()Lih;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v1, "ERROR_CALL_HUB"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public f()Lji;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lnab;->d:Lji;

    return-object v0
.end method
