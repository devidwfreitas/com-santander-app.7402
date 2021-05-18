.class public Lbun;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "LocationPackageManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lbut;)Ljava/util/concurrent/FutureTask;
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lbun;->d(Lbut;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbuw;Lbut;)Ljava/util/concurrent/FutureTask;
    .locals 1

    .prologue
    .line 37
    invoke-static {p0, p1}, Lbun;->b(Lbuw;Lbut;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lbut;Lbus;)V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lbhv;->f()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lbuo;

    invoke-direct {v1, p0, p1}, Lbuo;-><init>(Lbut;Lbus;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 37
    invoke-static {p0, p1}, Lbun;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lbut;)Ljava/util/concurrent/FutureTask;
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lbun;->c(Lbut;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lbuw;Lbut;)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbuw;",
            "Lbut;",
            ")",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Lbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lbup;

    invoke-direct {v1, p0}, Lbup;-><init>(Lbuw;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Lbhv;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "LocationPackageManager"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    :cond_0
    return-void
.end method

.method private static c(Lbut;)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbut;",
            ")",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Lbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lbuq;

    invoke-direct {v1, p0}, Lbuq;-><init>(Lbut;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method private static d(Lbut;)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbut;",
            ")",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Lbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lbur;

    invoke-direct {v1, p0}, Lbur;-><init>(Lbut;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
