.class public Lmrd;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lmla;",
        "Ljava/lang/Void;",
        "Lmkz;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/Dialog;

.field private c:Lgkv;


# direct methods
.method public constructor <init>(Lgkv;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lmrd;->c:Lgkv;

    .line 30
    iput-object p2, p0, Lmrd;->a:Landroid/app/Activity;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs a([Lmla;)Lmkz;
    .locals 6

    .prologue
    .line 43
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 44
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 45
    const-class v2, Lmkz;

    invoke-static {}, Lhas;->I()Ljava/lang/String;

    move-result-object v3

    const-string v4, "detalhar"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmkz;

    return-object v0
.end method

.method protected a(Lmkz;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lmrd;->c:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lmrd;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lmrd;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lmrd;->b:Landroid/app/Dialog;

    .line 57
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Lmla;

    invoke-virtual {p0, p1}, Lmrd;->a([Lmla;)Lmkz;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lmkz;

    invoke-virtual {p0, p1}, Lmrd;->a(Lmkz;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmrd;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lmrd;->b:Landroid/app/Dialog;

    .line 38
    return-void
.end method
