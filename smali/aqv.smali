.class Laqv;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laqu;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Laqv;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 82
    :try_start_0
    invoke-static {}, Lary;->b()Lary;

    move-result-object v0

    invoke-static {}, Laqt;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Laqt;->c()Lard;

    move-result-object v2

    invoke-virtual {v2}, Lard;->x()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Laqt;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laqt;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lary;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 85
    invoke-static {}, Lary;->b()Lary;

    move-result-object v0

    invoke-static {}, Laqt;->c()Lard;

    move-result-object v1

    invoke-virtual {v0, v1}, Lary;->a(Lard;)Lard;
    :try_end_0
    .catch Laqd; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v1, "[ChatComponent]"

    const-string v2, "==>Ocorreu um erro ChatServiceException: "

    invoke-virtual {v0}, Laqd;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    const-string v1, "[ChatComponent]"

    const-string v2, "==>Ocorreu um erro Exception: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 100
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    invoke-static {v0}, Laqt;->a(Lard;)Lard;

    .line 102
    invoke-static {}, Laqt;->c()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->q()Lapw;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Laqu;->a:[I

    invoke-static {}, Laqt;->c()Lard;

    move-result-object v1

    invoke-virtual {v1}, Lard;->q()Lapw;

    move-result-object v1

    invoke-virtual {v1}, Lapw;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 112
    invoke-static {}, Laqt;->d()Laqw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Laqt;->d()Laqw;

    move-result-object v0

    invoke-interface {v0, v2}, Laqw;->a(Z)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 107
    :pswitch_0
    invoke-static {}, Laqt;->d()Laqw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Laqt;->d()Laqw;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Laqw;->a(Z)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {}, Laqt;->c()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->k()I

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    new-instance v0, Larh;

    invoke-direct {v0}, Larh;-><init>()V

    .line 121
    invoke-static {}, Laqt;->c()Lard;

    move-result-object v1

    invoke-virtual {v1}, Lard;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Larh;->a(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Laqt;->c()Lard;

    move-result-object v1

    invoke-virtual {v1}, Lard;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Larh;->b(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Laqt;->d()Laqw;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 124
    invoke-static {}, Laqt;->d()Laqw;

    move-result-object v1

    invoke-interface {v1, v0}, Laqw;->a(Larh;)V

    .line 127
    :cond_2
    invoke-static {}, Laqt;->d()Laqw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Laqt;->d()Laqw;

    move-result-object v0

    invoke-interface {v0, v2}, Laqw;->a(Z)V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Laqv;->a([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Laqv;->a(Lorg/json/JSONObject;)V

    return-void
.end method
