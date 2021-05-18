.class Lhxz;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lhyq;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ElegibilidadeDTTask"


# instance fields
.field private b:Lgkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgkv",
            "<",
            "Lhyq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lgkv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkv",
            "<",
            "Lhyq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    iput-object p1, p0, Lhxz;->b:Lgkv;

    .line 26
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lhyq;
    .locals 7

    .prologue
    .line 31
    :try_start_0
    new-instance v1, Lhyp;

    invoke-direct {v1}, Lhyp;-><init>()V

    .line 32
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 33
    const-class v2, Lhyq;

    .line 36
    invoke-static {}, Lhas;->T()Ljava/lang/String;

    move-result-object v3

    const-string v4, "identificaAntecipacao13"

    const-string v5, "return"

    const/4 v6, 0x1

    .line 33
    invoke-interface/range {v0 .. v6}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v1, "ElegibilidadeDTTask"

    const-string v2, "doInBackground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lhyq;)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lhxz;->b:Lgkv;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lhxz;->b:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 52
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lhxz;->a([Ljava/lang/Void;)Lhyq;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lhyq;

    invoke-virtual {p0, p1}, Lhxz;->a(Lhyq;)V

    return-void
.end method
