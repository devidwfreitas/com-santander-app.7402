.class public Ljjv;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/Dialog;

.field private c:Lgkv;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lgkv;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Ljjv;->a:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Ljjv;->c:Lgkv;

    .line 30
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    new-instance v1, Lmzw;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v1, v2}, Lmzw;-><init>(Ljava/lang/String;)V

    .line 43
    :try_start_0
    invoke-virtual {v1}, Lmzw;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ljjv;->c:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Ljjv;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Ljjv;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Ljjv;->b:Landroid/app/Dialog;

    .line 57
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljjv;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljjv;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 35
    iget-object v0, p0, Ljjv;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ljjv;->b:Landroid/app/Dialog;

    .line 36
    return-void
.end method
