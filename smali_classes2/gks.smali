.class public Lgks;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lgkp;",
        "Ljava/lang/Void;",
        "Lgko;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lfoh;


# direct methods
.method public constructor <init>(Lfoh;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Lgks;->a:Lfoh;

    .line 24
    return-void
.end method


# virtual methods
.method protected varargs a([Lgkp;)Lgko;
    .locals 6

    .prologue
    .line 33
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 34
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 36
    const-class v2, Lgko;

    invoke-static {}, Lhas;->ap()Ljava/lang/String;

    move-result-object v3

    const-string v4, "obterTicketChat"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgko;

    return-object v0
.end method

.method protected a(Lgko;)V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lgks;->a:Lfoh;

    invoke-interface {v0, p1}, Lfoh;->a(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Lgkp;

    invoke-virtual {p0, p1}, Lgks;->a([Lgkp;)Lgko;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lgko;

    invoke-virtual {p0, p1}, Lgks;->a(Lgko;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 29
    return-void
.end method
