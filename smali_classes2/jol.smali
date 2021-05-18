.class Ljol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljoh;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljoi;)V
    .locals 5

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 56
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    const-string v2, "/campaigns/v1/getCampaign"

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnz;->a(Ljava/lang/String;Lim;Ljava/lang/String;Z)Liq;

    move-result-object v0

    .line 65
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    invoke-virtual {v1}, Lgnz;->b()Lje;

    move-result-object v1

    new-instance v2, Ljon;

    invoke-direct {v2, p0, p2}, Ljon;-><init>(Ljol;Ljoi;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    :goto_1
    new-instance v1, Ljnb;

    invoke-direct {v1, v0}, Ljnb;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Ljoi;->a(Ljnb;)V

    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljok;)V
    .locals 5

    .prologue
    .line 86
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 87
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    const-string v2, "/campaigns/v1/getTerm"

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnz;->a(Ljava/lang/String;Lim;Ljava/lang/String;Z)Liq;

    move-result-object v0

    .line 95
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    invoke-virtual {v1}, Lgnz;->b()Lje;

    move-result-object v1

    new-instance v2, Ljoo;

    invoke-direct {v2, p0, p2}, Ljoo;-><init>(Ljol;Ljok;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :goto_1
    new-instance v1, Ljnb;

    invoke-direct {v1, v0}, Ljnb;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Ljok;->a(Ljnb;)V

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljoj;)V
    .locals 5

    .prologue
    .line 29
    :try_start_0
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v0

    const-string v1, "/campaigns/v1/getHome"

    sget-object v2, Lim;->POST:Lim;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnz;->a(Ljava/lang/String;Lim;Ljava/lang/String;Z)Liq;

    move-result-object v0

    .line 34
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    invoke-virtual {v1}, Lgnz;->b()Lje;

    move-result-object v1

    new-instance v2, Ljom;

    invoke-direct {v2, p0, p1}, Ljom;-><init>(Ljol;Ljoj;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    :goto_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljoj;->a(Ljnc;)V

    goto :goto_0

    .line 47
    :catch_1
    move-exception v0

    goto :goto_1
.end method
