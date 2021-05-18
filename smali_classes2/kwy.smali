.class public Lkwy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private b:Lgne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgne",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbr/com/zup/multistatelayout/MultiStateLayout;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lkwy;->a:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 41
    return-void
.end method

.method static synthetic a(Lkwy;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lkwy;->a:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private a(Lkxa;Ljava/lang/String;Lim;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 65
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 67
    :try_start_0
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

    .line 68
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 75
    if-eqz p4, :cond_0

    move-object v4, p4

    .line 78
    :cond_0
    iget-object v0, p0, Lkwy;->a:Lbr/com/zup/multistatelayout/MultiStateLayout;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lkwy;->a:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 81
    :cond_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    const/4 v5, 0x1

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 82
    new-instance v1, Lgnv;

    invoke-direct {p0, p1}, Lkwy;->b(Lkxa;)Lgkw;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 84
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 87
    :try_start_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    :cond_2
    :goto_1
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-interface {p1}, Lkxa;->a()V

    goto :goto_1
.end method

.method private b(Lkxa;)Lgkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkxa;",
            ")",
            "Lgkw",
            "<",
            "Lis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lkwz;

    invoke-direct {v0, p0, p1}, Lkwz;-><init>(Lkwy;Lkxa;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkxa;)V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string v1, "claimNumber"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {v0}, Lgnp;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkwr;->SURVEY_ANSWERS:Lkwr;

    invoke-virtual {v2}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    sget-object v1, Lim;->GET:Lim;

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Lkwy;->a(Lkxa;Ljava/lang/String;Lim;Lorg/json/JSONObject;)V

    .line 52
    return-void
.end method

.method public a(Lkvm;Lkxa;)V
    .locals 4

    .prologue
    .line 59
    sget-object v0, Lkwr;->SURVEY_ANSWERS:Lkwr;

    invoke-virtual {v0}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lim;->POST:Lim;

    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lejm;

    invoke-direct {v3}, Lejm;-><init>()V

    invoke-virtual {v3, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v0, v1, v2}, Lkwy;->a(Lkxa;Ljava/lang/String;Lim;Lorg/json/JSONObject;)V

    .line 60
    return-void
.end method

.method public a(Lkxa;)V
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lkwr;->SURVEY_QUESTIONS:Lkwr;

    invoke-virtual {v0}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lim;->GET:Lim;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lkwy;->a(Lkxa;Ljava/lang/String;Lim;Lorg/json/JSONObject;)V

    .line 56
    return-void
.end method
