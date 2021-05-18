.class public Ljcu;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljci;",
        "Ljava/lang/Void;",
        "Ljch;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/app/Dialog;

.field private b:Lgkv;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lgkv;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Ljcu;->b:Lgkv;

    .line 29
    iput-object p2, p0, Ljcu;->c:Landroid/app/Activity;

    .line 30
    return-void
.end method


# virtual methods
.method protected varargs a([Ljci;)Ljch;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Ljcu;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 48
    :goto_0
    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 46
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Ljch;

    invoke-static {}, Lhas;->G()Ljava/lang/String;

    move-result-object v3

    const-string v4, "obterTicketRedirecionamentoWay"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 48
    goto :goto_0
.end method

.method protected a(Ljch;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ljcu;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcu;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Ljcu;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 59
    :cond_0
    if-eqz p1, :cond_1

    .line 60
    iget-object v0, p0, Ljcu;->b:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 62
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljci;

    invoke-virtual {p0, p1}, Ljcu;->a([Ljci;)Ljch;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljch;

    invoke-virtual {p0, p1}, Ljcu;->a(Ljch;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ljcu;->c:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ljcu;->a:Landroid/app/Dialog;

    .line 35
    return-void
.end method
