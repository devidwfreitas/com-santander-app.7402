.class public Lkcs;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfwo;",
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
    iput-object p1, p0, Lkcs;->a:Lgkv;

    .line 23
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfwo;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lhbi;

    invoke-direct {v0}, Lhbi;-><init>()V

    invoke-virtual {v0}, Lhbi;->b()Lfwo;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lfwo;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lkcs;->a:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lkcs;->a([Ljava/lang/Void;)Lfwo;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lfwo;

    invoke-virtual {p0, p1}, Lkcs;->a(Lfwo;)V

    return-void
.end method
