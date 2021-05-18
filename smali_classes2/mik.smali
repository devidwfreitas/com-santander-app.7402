.class public Lmik;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "file-service-tag"


# instance fields
.field private b:Lgrs;


# direct methods
.method public constructor <init>(Lgrs;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lmik;->b:Lgrs;

    .line 26
    return-void
.end method

.method static synthetic a(Lmik;)Lgrs;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lmik;->b:Lgrs;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lmij;Lmij;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
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
    .line 31
    new-instance v0, Lmil;

    invoke-direct {v0, p0, p2, p3}, Lmil;-><init>(Lmik;Lmij;Lmij;)V

    .line 33
    sget-object v1, Lgne;->e:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lmil;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lgne;

    .line 34
    return-void
.end method
