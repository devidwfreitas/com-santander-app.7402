.class public Lkkv;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lkku;",
        "Ljava/lang/Void;",
        "Lkkt;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;


# direct methods
.method public constructor <init>(Lgkv;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Lkkv;->a:Lgkv;

    .line 24
    return-void
.end method


# virtual methods
.method protected varargs a([Lkku;)Lkkt;
    .locals 6

    .prologue
    .line 28
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 29
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 31
    const-class v2, Lkkt;

    invoke-static {}, Lhas;->ai()Ljava/lang/String;

    move-result-object v3

    const-string v4, "obterTicket"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkkt;

    return-object v0
.end method

.method protected a(Lkkt;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lkkv;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 37
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Lkku;

    invoke-virtual {p0, p1}, Lkkv;->a([Lkku;)Lkkt;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lkkt;

    invoke-virtual {p0, p1}, Lkkv;->a(Lkkt;)V

    return-void
.end method
