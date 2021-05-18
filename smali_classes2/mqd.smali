.class Lmqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Lmqc;


# direct methods
.method constructor <init>(Lmqc;Lgkw;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lmqd;->b:Lmqc;

    iput-object p2, p0, Lmqd;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmqd;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 58
    return-void
.end method
