.class public Lhxg;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lhux;",
        "Ljava/lang/Void;",
        "Lhuy;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgkv",
            "<",
            "Lhuy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgkv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkv",
            "<",
            "Lhuy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p1, p0, Lhxg;->a:Lgkv;

    .line 28
    return-void
.end method


# virtual methods
.method protected varargs a([Lhux;)Lhuy;
    .locals 7

    .prologue
    .line 33
    :try_start_0
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 35
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lhuy;

    .line 37
    invoke-static {}, Lhas;->u()Ljava/lang/String;

    move-result-object v3

    const-string v4, "obterTermos"

    const-string v5, "return"

    const/4 v6, 0x1

    .line 35
    invoke-interface/range {v0 .. v6}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    sget-object v1, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    const-string v2, "doInBackground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lhuy;)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lhxg;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Lhux;

    invoke-virtual {p0, p1}, Lhxg;->a([Lhux;)Lhuy;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lhuy;

    invoke-virtual {p0, p1}, Lhxg;->a(Lhuy;)V

    return-void
.end method
