.class Lghm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Lghk;


# direct methods
.method constructor <init>(Lghk;Lgkw;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lghm;->b:Lghk;

    iput-object p2, p0, Lghm;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 48
    check-cast p1, Lggt;

    .line 49
    iget-object v0, p0, Lghm;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 50
    return-void
.end method
