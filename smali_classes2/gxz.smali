.class public Lgxz;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lgwz;",
        "Ljava/lang/Void;",
        "Lgwy;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;

.field private b:Landroid/app/Activity;

.field private c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lgkv;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p1, p0, Lgxz;->a:Lgkv;

    .line 31
    iput-object p2, p0, Lgxz;->b:Landroid/app/Activity;

    .line 32
    return-void
.end method


# virtual methods
.method protected varargs a([Lgwz;)Lgwy;
    .locals 6

    .prologue
    .line 46
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 47
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lgwy;

    invoke-static {}, Lhas;->W()Ljava/lang/String;

    move-result-object v3

    const-string v4, "aceiteCampanha"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgwy;

    .line 49
    return-object v0
.end method

.method protected a(Lgwy;)V
    .locals 3

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lgxz;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgxz;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lgxz;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lgxz;->c:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lgwy;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 64
    :cond_1
    iget-object v0, p0, Lgxz;->b:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 68
    :goto_1
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v1, "AceiteCampanha"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lgxz;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Lgwz;

    invoke-virtual {p0, p1}, Lgxz;->a([Lgwz;)Lgwy;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lgwy;

    invoke-virtual {p0, p1}, Lgxz;->a(Lgwy;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 3

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lgxz;->b:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lgxz;->c:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v1, "AceiteCampanha"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
