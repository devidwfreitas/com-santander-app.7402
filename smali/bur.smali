.class final Lbur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lbum;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbut;


# direct methods
.method constructor <init>(Lbut;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lbur;->a:Lbut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lbum;
    .locals 3

    .prologue
    .line 208
    new-instance v1, Lbum;

    invoke-direct {v1}, Lbum;-><init>()V

    .line 210
    :try_start_0
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    .line 211
    iget-object v2, p0, Lbur;->a:Lbut;

    invoke-static {v0, v2}, Lbva;->b(Landroid/content/Context;Lbut;)Lbvc;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Lbvc;->a()V

    .line 214
    invoke-interface {v0}, Lbvc;->b()Lbvb;

    move-result-object v2

    iput-object v2, v1, Lbum;->d:Lbvb;

    .line 215
    invoke-interface {v0}, Lbvc;->c()Z

    move-result v2

    iput-boolean v2, v1, Lbum;->c:Z

    .line 217
    iget-boolean v2, v1, Lbum;->c:Z

    if-eqz v2, :cond_0

    .line 219
    invoke-interface {v0}, Lbvc;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lbum;->e:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    :goto_0
    return-object v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-string v2, "Exception scanning for wifi access points"

    invoke-static {v2, v0}, Lbun;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, v1, Lbum;->c:Z

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lbur;->a()Lbum;

    move-result-object v0

    return-object v0
.end method
