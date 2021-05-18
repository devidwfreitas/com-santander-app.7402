.class Lnfh;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/concurrent/ConcurrentLinkedQueue",
        "<",
        "Lnfj;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lnfg;


# direct methods
.method constructor <init>(Lnfg;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lnfh;->a:Lnfg;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lnfj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lnfh;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    return-object v0
.end method
