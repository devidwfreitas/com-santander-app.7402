.class Lmqt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Lmqn;


# direct methods
.method constructor <init>(Lmqn;Lgkw;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lmqt;->b:Lmqn;

    iput-object p2, p0, Lmqt;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lmqt;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 103
    return-void
.end method
