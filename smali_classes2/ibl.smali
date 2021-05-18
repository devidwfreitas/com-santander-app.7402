.class public Libl;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lhzs;",
        "Ljava/lang/Integer;",
        "Lhzt;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgkv",
            "<",
            "Lhzt;",
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
            "Lhzt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Libl;->a:Lgkv;

    .line 24
    return-void
.end method


# virtual methods
.method protected varargs a([Lhzs;)Lhzt;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 28
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 29
    aget-object v1, p1, v7

    const-class v2, Lhzt;

    invoke-static {}, Lhas;->aj()Ljava/lang/String;

    move-result-object v3

    const-string v4, "verificarSistema"

    const-string v5, "return"

    const-string v6, "http://webservice.atendimento.app.bsbr.altec.com/"

    invoke-interface/range {v0 .. v7}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzt;

    return-object v0
.end method

.method protected a(Lhzt;)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Libl;->a:Lgkv;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Libl;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 39
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Lhzs;

    invoke-virtual {p0, p1}, Libl;->a([Lhzs;)Lhzt;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lhzt;

    invoke-virtual {p0, p1}, Libl;->a(Lhzt;)V

    return-void
.end method
