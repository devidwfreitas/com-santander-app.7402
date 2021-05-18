.class Lmil;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmik;

.field private b:Lmij;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmij",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lmij;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmij",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lmik;Lmij;Lmij;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmij",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lmij",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lmil;->a:Lmik;

    invoke-direct {p0}, Lgne;-><init>()V

    .line 42
    iput-object p2, p0, Lmil;->b:Lmij;

    .line 43
    iput-object p3, p0, Lmil;->c:Lmij;

    .line 44
    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/net/Uri;)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 55
    if-eqz p1, :cond_0

    :try_start_0
    array-length v1, p1

    if-gtz v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 57
    iget-object v2, p0, Lmil;->a:Lmik;

    invoke-static {v2}, Lmik;->a(Lmik;)Lgrs;

    move-result-object v2

    invoke-static {v2, v1}, Lmim;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lmil;->a([Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "file-service-tag"

    const-string v1, "loading"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method protected a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 67
    if-eqz p1, :cond_1

    .line 68
    iget-object v0, p0, Lmil;->b:Lmij;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lmil;->b:Lmij;

    invoke-interface {v0, p1}, Lmij;->a(Ljava/lang/Object;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lmil;->c:Lmij;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lmil;->c:Lmij;

    const-string v1, ""

    invoke-interface {v0, v1}, Lmij;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lmil;->a(Ljava/io/File;)V

    return-void
.end method
