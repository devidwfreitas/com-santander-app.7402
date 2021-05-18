.class public Lgea;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lgao;",
        "Ljava/lang/Void;",
        "Lgbc;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkw;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lgkw;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object p1, p0, Lgea;->a:Lgkw;

    .line 37
    iput-object p2, p0, Lgea;->c:Landroid/app/Activity;

    .line 38
    return-void
.end method


# virtual methods
.method protected varargs a([Lgao;)Lgbc;
    .locals 6

    .prologue
    .line 43
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 44
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lgbc;

    invoke-static {}, Lhas;->ah()Ljava/lang/String;

    move-result-object v3

    const-string v4, "calcularCambio"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbc;

    .line 46
    return-object v0
.end method

.method protected a(Lgbc;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lgea;->a:Lgkw;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lgea;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lgea;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lgea;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lgea;->b:Landroid/app/Dialog;

    .line 59
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Lgao;

    invoke-virtual {p0, p1}, Lgea;->a([Lgao;)Lgbc;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lgbc;

    invoke-virtual {p0, p1}, Lgea;->a(Lgbc;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 32
    iget-object v0, p0, Lgea;->c:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lgea;->b:Landroid/app/Dialog;

    .line 33
    return-void
.end method
