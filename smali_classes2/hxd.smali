.class public Lhxd;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lhum;",
        "Ljava/lang/Void;",
        "Lhus;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "CPUConsultarTask"


# instance fields
.field private b:Lgkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgkv",
            "<",
            "Lhus;",
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
            "Lhus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p1, p0, Lhxd;->b:Lgkv;

    .line 28
    return-void
.end method


# virtual methods
.method protected varargs a([Lhum;)Lhus;
    .locals 7

    .prologue
    .line 33
    :try_start_0
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 34
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lhus;

    .line 37
    invoke-static {}, Lhas;->u()Ljava/lang/String;

    move-result-object v3

    const-string v4, "consultarContratos"

    const-string v5, "return"

    const/4 v6, 0x1

    .line 34
    invoke-interface/range {v0 .. v6}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-string v1, "CPUConsultarTask"

    const-string v2, "doInBackground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lhus;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lhxd;->b:Lgkv;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lhxd;->b:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 53
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [Lhum;

    invoke-virtual {p0, p1}, Lhxd;->a([Lhum;)Lhus;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lhus;

    invoke-virtual {p0, p1}, Lhxd;->a(Lhus;)V

    return-void
.end method