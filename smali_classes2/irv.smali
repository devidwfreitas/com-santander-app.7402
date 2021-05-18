.class public Lirv;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Liru;",
        "Ljava/lang/Void;",
        "Liph;",
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
    iput-object p1, p0, Lirv;->a:Lfoh;

    .line 24
    return-void
.end method


# virtual methods
.method protected varargs a([Liru;)Liph;
    .locals 6

    .prologue
    .line 35
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 36
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Liph;

    .line 39
    invoke-static {}, Lhas;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, "consultarDadosHomeLogada"

    const-string v5, "return"

    .line 36
    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liph;

    .line 43
    return-object v0
.end method

.method protected a(Liph;)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lirv;->a:Lfoh;

    invoke-interface {v0, p1}, Lfoh;->a(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Liru;

    invoke-virtual {p0, p1}, Lirv;->a([Liru;)Liph;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Liph;

    invoke-virtual {p0, p1}, Lirv;->a(Liph;)V

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
