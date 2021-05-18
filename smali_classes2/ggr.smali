.class public Lggr;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lgkf;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lioz;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lfoh;


# direct methods
.method public constructor <init>(Lfoh;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object p1, p0, Lggr;->a:Lfoh;

    .line 27
    return-void
.end method


# virtual methods
.method protected varargs a([Lgkf;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lgkf;",
            ")",
            "Ljava/util/List",
            "<",
            "Lioz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 34
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lgkg;

    invoke-static {}, Lhas;->w()Ljava/lang/String;

    move-result-object v3

    const-string v4, "consultarImagensCartoes"

    const-string v5, "return"

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgkg;

    .line 36
    invoke-virtual {v0}, Lgkg;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lioz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lggr;->a:Lfoh;

    invoke-interface {v0, p1}, Lfoh;->a(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Lgkf;

    invoke-virtual {p0, p1}, Lggr;->a([Lgkf;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lggr;->a(Ljava/util/List;)V

    return-void
.end method
