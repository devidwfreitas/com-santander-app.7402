.class public Litp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Litn;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Litp;->a:Landroid/app/Activity;

    .line 50
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SovereignBrasilProfile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    const-string v1, "segmento"

    const-string v2, "999"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lgkw;)V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Litt;

    new-instance v1, Litr;

    invoke-direct {v1, p0, p1}, Litr;-><init>(Litp;Lgkw;)V

    invoke-direct {v0, v1}, Litt;-><init>(Lgkv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 109
    invoke-virtual {v0, v1}, Litt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    return-void
.end method

.method public a(Lgkw;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 55
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    invoke-virtual {v0}, Lnab;->d()Ljava/lang/String;

    move-result-object v4

    .line 57
    :goto_0
    new-instance v0, Litv;

    iget-object v1, p0, Litp;->a:Landroid/app/Activity;

    invoke-static {}, Lmwz;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Litq;

    invoke-direct {v5, p0, p1}, Litq;-><init>(Litp;Lgkw;)V

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Litv;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgkv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 66
    invoke-virtual {v0, v1}, Litv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    return-void

    .line 55
    :cond_0
    const-string v4, ""

    goto :goto_0
.end method

.method public a(Lito;)V
    .locals 6

    .prologue
    .line 122
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 123
    const-string v0, "uuid"

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v0, "version"

    const-string v1, "7.4.0.2"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 127
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v0

    const-string v1, "version/v1/checkVersionAndroid"

    sget-object v2, Lim;->POST:Lim;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lgnz;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 135
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    invoke-virtual {v1}, Lgnz;->g()Lje;

    move-result-object v1

    .line 136
    new-instance v2, Lits;

    invoke-direct {v2, p0, p1}, Lits;-><init>(Litp;Lito;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v0

    invoke-virtual {v0}, Lgnz;->b()Lje;

    move-result-object v0

    sget-object v1, Lgnz;->b:Liv;

    invoke-virtual {v0, v1}, Lje;->a(Liv;)Lje;

    .line 163
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    :goto_1
    :try_start_1
    invoke-interface {p1}, Lito;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v0

    invoke-virtual {v0}, Lgnz;->b()Lje;

    move-result-object v0

    sget-object v1, Lgnz;->b:Liv;

    invoke-virtual {v0, v1}, Lje;->a(Liv;)Lje;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    invoke-virtual {v1}, Lgnz;->b()Lje;

    move-result-object v1

    sget-object v2, Lgnz;->b:Liv;

    invoke-virtual {v1, v2}, Lje;->a(Liv;)Lje;

    throw v0

    .line 158
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SovereignBrasilProfile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 81
    const-string v2, "l"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SovereignBrasilProfile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    const-string v1, "l"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SovereignBrasilProfile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    const-string v1, "l"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    return-void
.end method

.method public d()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    return-object v0
.end method
