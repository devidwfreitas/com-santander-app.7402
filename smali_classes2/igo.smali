.class public Ligo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ligm;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/app/Activity;

.field private c:Lmiq;

.field private d:Landroid/app/Dialog;

.field private e:Liia;

.field private f:Lign;


# direct methods
.method public constructor <init>(Lign;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "ERROR_JSON_OBJECT"

    iput-object v0, p0, Ligo;->a:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Ligo;->f:Lign;

    .line 42
    iput-object p2, p0, Ligo;->b:Landroid/app/Activity;

    .line 43
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ligo;->c:Lmiq;

    .line 44
    new-instance v0, Liib;

    invoke-direct {v0}, Liib;-><init>()V

    iput-object v0, p0, Ligo;->e:Liia;

    .line 45
    return-void
.end method

.method static synthetic a(Ligo;)Lign;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Ligo;->f:Lign;

    return-object v0
.end method

.method static synthetic b(Ligo;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Ligo;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method private b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 73
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    :try_start_0
    const-string v0, "statusType"

    const-string v2, "C"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v2, "ERROR_JSON_OBJECT"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(I)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 138
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 141
    :try_start_0
    const-string v0, "proposalCode"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v2, "ERROR_JSON_OBJECT"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Ligk;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 149
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 152
    :try_start_0
    const-string v0, "proposalId"

    invoke-virtual {p1}, Ligk;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    const-string v0, "statusId"

    invoke-virtual {p1}, Ligk;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v0, "cancellationReasonCode"

    invoke-virtual {p1}, Ligk;->c()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const-string v2, "ERROR_JSON_OBJECT"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Ligo;->b:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ligo;->d:Landroid/app/Dialog;

    .line 51
    iget-object v0, p0, Ligo;->e:Liia;

    new-instance v1, Ligp;

    invoke-direct {v1, p0}, Ligp;-><init>(Ligo;)V

    .line 68
    invoke-direct {p0}, Ligo;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 51
    invoke-interface {v0, v1, v2}, Liia;->c(Lgkw;Lorg/json/JSONObject;)V

    .line 69
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Ligo;->e:Liia;

    new-instance v1, Ligr;

    invoke-direct {v1, p0}, Ligr;-><init>(Ligo;)V

    .line 134
    invoke-direct {p0, p1}, Ligo;->b(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 115
    invoke-interface {v0, v1, v2}, Liia;->d(Lgkw;Lorg/json/JSONObject;)V

    .line 135
    return-void
.end method

.method public a(Ligk;)V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Ligo;->b:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ligo;->d:Landroid/app/Dialog;

    .line 88
    iget-object v0, p0, Ligo;->e:Liia;

    new-instance v1, Ligq;

    invoke-direct {v1, p0}, Ligq;-><init>(Ligo;)V

    .line 109
    invoke-direct {p0, p1}, Ligo;->b(Ligk;)Lorg/json/JSONObject;

    move-result-object v2

    .line 88
    invoke-interface {v0, v1, v2}, Liia;->b(Lgkw;Lorg/json/JSONObject;)V

    .line 110
    return-void
.end method
