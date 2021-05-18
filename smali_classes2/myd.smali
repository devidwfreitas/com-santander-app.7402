.class Lmyd;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Dialog;

.field final synthetic b:Lmyc;


# direct methods
.method constructor <init>(Lmyc;)V
    .locals 1

    .prologue
    .line 291
    iput-object p1, p0, Lmyd;->b:Lmyc;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lmyd;->a:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 303
    invoke-static {}, Lhat;->b()Lhbi;

    move-result-object v0

    invoke-virtual {v0}, Lhbi;->d()Lfwu;

    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 310
    iget-object v0, p0, Lmyd;->b:Lmyc;

    iget-object v0, v0, Lmyc;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 312
    iget-object v0, p0, Lmyd;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyd;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lmyd;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 316
    :cond_0
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->o()V

    .line 317
    invoke-static {}, Ljcd;->a()V

    .line 318
    invoke-static {}, Laqt;->a()V

    .line 320
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmyd;->b:Lmyc;

    iget-object v1, v1, Lmyc;->a:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    const-string v1, "reopen"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 323
    sput-boolean v3, Lism;->a:Z

    .line 324
    iget-object v1, p0, Lmyd;->b:Lmyc;

    iget-object v1, v1, Lmyc;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 325
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 291
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmyd;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 291
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmyd;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lmyd;->b:Lmyc;

    iget-object v0, v0, Lmyc;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lmyd;->a:Landroid/app/Dialog;

    .line 298
    const-string v0, "DialogUtil"

    const-string v1, "Chat Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void
.end method
