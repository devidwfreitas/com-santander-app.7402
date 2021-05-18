.class public Llo;
.super Labw;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Llt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Labw;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Labw;-><init>()V

    .line 40
    iput-object p1, p0, Llo;->a:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic a(Llo;)Llt;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Llo;->b:Llt;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Labp;->b()Labp;

    move-result-object v0

    invoke-virtual {v0}, Labp;->a()Lje;

    move-result-object v0

    sget-object v1, Labq;->MANTER_CARRINHO:Labq;

    .line 78
    invoke-virtual {v1}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Llo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Llo;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Llo;->b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lir;

    move-result-object v1

    new-instance v2, Llp;

    invoke-direct {v2, p0}, Llp;-><init>(Llo;)V

    .line 77
    invoke-virtual {v0, v1, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    iget-object v1, p0, Llo;->b:Llt;

    new-instance v2, Laby;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Llt;->a(Laby;)V

    goto :goto_0
.end method

.method static synthetic b(Llo;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Llo;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 142
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 144
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Leju;

    invoke-direct {v2}, Leju;-><init>()V

    invoke-virtual {v2}, Leju;->j()Lejm;

    move-result-object v2

    new-instance v3, Llu;

    const-string v4, "MA"

    invoke-direct {v3, v4}, Llu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    invoke-direct {p0, v0}, Llo;->a(Lorg/json/JSONObject;)V

    .line 150
    new-instance v0, Llr;

    invoke-direct {v0, p0}, Llr;-><init>(Llo;)V

    iput-object v0, p0, Llo;->b:Llt;

    .line 161
    return-void

    .line 145
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/util/List;Llt;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lace;",
            ">;",
            "Llt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p2, p0, Llo;->b:Llt;

    .line 49
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 51
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Leju;

    invoke-direct {v2}, Leju;-><init>()V

    invoke-virtual {v2}, Leju;->j()Lejm;

    move-result-object v2

    new-instance v3, Llu;

    const-string v4, "MA"

    invoke-direct {v3, v4, p1}, Llu;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    const-string v1, "requestCarrinho"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    :goto_0
    invoke-direct {p0, v0}, Llo;->a(Lorg/json/JSONObject;)V

    .line 59
    return-void

    .line 54
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 55
    :goto_1
    iget-object v2, p0, Llo;->b:Llt;

    new-instance v3, Laby;

    const/4 v4, -0x1

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Llt;->a(Laby;)V

    goto :goto_0

    .line 54
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public a(Llt;)V
    .locals 4

    .prologue
    .line 107
    iput-object p1, p0, Llo;->b:Llt;

    .line 110
    :try_start_0
    invoke-static {}, Labp;->b()Labp;

    move-result-object v0

    invoke-virtual {v0}, Labp;->a()Lje;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Labq;->MANTER_CARRINHO:Labq;

    .line 111
    invoke-virtual {v2}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Llo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&operationType=C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {p0}, Llo;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 111
    invoke-virtual {p0, v1, v2}, Llo;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lir;

    move-result-object v1

    new-instance v2, Llq;

    invoke-direct {v2, p0, p1}, Llq;-><init>(Llo;Llt;)V

    .line 110
    invoke-virtual {v0, v1, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    iget-object v1, p0, Llo;->b:Llt;

    new-instance v2, Laby;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Llt;->a(Laby;)V

    goto :goto_0
.end method

.method public b(Ljava/util/List;Llt;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lace;",
            ">;",
            "Llt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    iput-object p2, p0, Llo;->b:Llt;

    .line 64
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 66
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Leju;

    invoke-direct {v2}, Leju;-><init>()V

    invoke-virtual {v2}, Leju;->j()Lejm;

    move-result-object v2

    new-instance v3, Llu;

    const-string v4, "MR"

    invoke-direct {v3, v4, p1}, Llu;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :try_start_1
    const-string v1, "requestCarrinho"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :goto_0
    invoke-direct {p0, v0}, Llo;->a(Lorg/json/JSONObject;)V

    .line 73
    return-void

    .line 68
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 69
    :goto_1
    iget-object v2, p0, Llo;->b:Llt;

    new-instance v3, Laby;

    const/4 v4, -0x1

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Llt;->a(Laby;)V

    goto :goto_0

    .line 68
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public b(Llt;)V
    .locals 3

    .prologue
    .line 164
    iput-object p1, p0, Llo;->b:Llt;

    .line 166
    :try_start_0
    invoke-static {}, Labp;->b()Labp;

    move-result-object v0

    invoke-virtual {v0}, Labp;->a()Lje;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Labq;->USER_INFO:Labq;

    .line 167
    invoke-virtual {v2}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Llo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&flagOnlyCartIndicator=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {p0}, Llo;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 167
    invoke-virtual {p0, v1, v2}, Llo;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lir;

    move-result-object v1

    new-instance v2, Lls;

    invoke-direct {v2, p0, p1}, Lls;-><init>(Llo;Llt;)V

    .line 166
    invoke-virtual {v0, v1, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
