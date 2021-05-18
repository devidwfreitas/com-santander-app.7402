.class public Litt;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lgkv;


# direct methods
.method public constructor <init>(Lgkv;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Litt;->a:Lgkv;

    .line 23
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    .line 28
    const/4 v0, 0x0

    .line 31
    invoke-static {}, Lhat;->b()Lhbi;

    move-result-object v2

    invoke-virtual {v2}, Lhbi;->a()Lfwu;

    .line 33
    invoke-virtual {v1}, Lmiq;->h()[B

    move-result-object v2

    .line 34
    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    .line 37
    if-eqz v2, :cond_0

    array-length v2, v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    invoke-static {}, Lhat;->b()Lhbi;

    move-result-object v0

    invoke-virtual {v0}, Lhbi;->b()Lfwo;

    move-result-object v0

    .line 41
    :cond_1
    if-eqz v0, :cond_2

    .line 42
    const/4 v0, 0x1

    .line 47
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 44
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Litt;->a:Lgkv;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Litt;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 57
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Litt;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Litt;->a(Ljava/lang/Boolean;)V

    return-void
.end method
