.class Lfg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfa",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfw;

.field final synthetic b:Lfa;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lev;

.field final synthetic e:Lfd;


# direct methods
.method constructor <init>(Lfd;Lfw;Lfa;Ljava/util/concurrent/Executor;Lev;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lfg;->e:Lfd;

    iput-object p2, p0, Lfg;->a:Lfw;

    iput-object p3, p0, Lfg;->b:Lfa;

    iput-object p4, p0, Lfg;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lfg;->d:Lev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 708
    iget-object v0, p0, Lfg;->a:Lfw;

    iget-object v1, p0, Lfg;->b:Lfa;

    iget-object v2, p0, Lfg;->c:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lfg;->d:Lev;

    invoke-static {v0, v1, p1, v2, v3}, Lfd;->b(Lfw;Lfa;Lfd;Ljava/util/concurrent/Executor;Lev;)V

    .line 709
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b(Lfd;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 705
    invoke-virtual {p0, p1}, Lfg;->a(Lfd;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
