.class public Lkct;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lkcc;",
        "Ljava/lang/Void;",
        "Lkcb;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;


# direct methods
.method public constructor <init>(Lgkv;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p1, p0, Lkct;->a:Lgkv;

    .line 33
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 84
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->h()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 88
    const-string v0, ""

    .line 105
    :goto_0
    return-object v0

    .line 96
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lnaf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 105
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 73
    const-string v1, "dataHash"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v1, "//soapenv:Body"

    invoke-static {p1, v1, v0}, Lmxj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0}, Lkct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Lkcc;)Lkcb;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    aget-object v0, p1, v4

    .line 45
    new-instance v1, Lmzd;

    invoke-direct {v1}, Lmzd;-><init>()V

    const-string v2, "notificarPhishing"

    invoke-virtual {v1, v0, v2}, Lmzd;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "</texto>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</texto><dataHash>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lkct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</dataHash>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {}, Lhas;->ao()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v0, v2, v4}, Ljcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 50
    const/4 v1, 0x0

    .line 51
    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    new-instance v2, Lmzd;

    invoke-direct {v2}, Lmzd;-><init>()V

    const-class v3, Lkcb;

    invoke-virtual {v2, v3, v0}, Lmzd;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkcb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v2, "ERROR_LOG_SMS)"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lkcb;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lkct;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, [Lkcc;

    invoke-virtual {p0, p1}, Lkct;->a([Lkcc;)Lkcb;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lkcb;

    invoke-virtual {p0, p1}, Lkct;->a(Lkcb;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 38
    return-void
.end method
