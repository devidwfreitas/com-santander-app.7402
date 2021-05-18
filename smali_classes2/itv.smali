.class public Litv;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lmir;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/app/Dialog;

.field private c:Lmip;

.field private d:Lgkv;

.field private e:Landroid/app/Activity;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgkv;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p2, p0, Litv;->a:Ljava/lang/String;

    .line 33
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Litv;->c:Lmip;

    .line 34
    iput-object p5, p0, Litv;->d:Lgkv;

    .line 35
    iput-object p1, p0, Litv;->e:Landroid/app/Activity;

    .line 36
    iput-object p3, p0, Litv;->f:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Litv;->g:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lmir;
    .locals 5

    .prologue
    .line 48
    .line 49
    :try_start_0
    invoke-static {}, Lhat;->c()Lhbk;

    move-result-object v0

    iget-object v1, p0, Litv;->e:Landroid/app/Activity;

    iget-object v2, p0, Litv;->a:Ljava/lang/String;

    iget-object v3, p0, Litv;->f:Ljava/lang/String;

    iget-object v4, p0, Litv;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lhbk;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmir;
    :try_end_0
    .catch Lhbo; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Litv;->cancel(Z)Z

    .line 57
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected a(Lmir;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Litv;->d:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Litv;->a([Ljava/lang/Void;)Lmir;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lmir;

    invoke-virtual {p0, p1}, Litv;->a(Lmir;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
