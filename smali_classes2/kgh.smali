.class public Lkgh;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lkcz;",
        "Ljava/lang/Void;",
        "Lkcy;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;


# direct methods
.method public constructor <init>(Lgkv;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    iput-object p1, p0, Lkgh;->a:Lgkv;

    .line 25
    return-void
.end method


# virtual methods
.method protected varargs a([Lkcz;)Lkcy;
    .locals 6

    .prologue
    .line 36
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 37
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-class v2, Lkcy;

    invoke-static {}, Lhas;->ad()Ljava/lang/String;

    move-result-object v3

    const-string v4, "consultarSaldo"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkcy;

    .line 38
    return-object v0
.end method

.method protected a(Lkcy;)V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lkgh;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Lkcz;

    invoke-virtual {p0, p1}, Lkgh;->a([Lkcz;)Lkcy;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lkcy;

    invoke-virtual {p0, p1}, Lkgh;->a(Lkcy;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 31
    return-void
.end method
