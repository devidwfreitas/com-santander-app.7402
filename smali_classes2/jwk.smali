.class Ljwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Ljwj;


# direct methods
.method constructor <init>(Ljwj;Lgkw;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Ljwk;->b:Ljwj;

    iput-object p2, p0, Ljwk;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 57
    check-cast p1, Ljsr;

    .line 58
    iget-object v0, p0, Ljwk;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 59
    return-void
.end method
