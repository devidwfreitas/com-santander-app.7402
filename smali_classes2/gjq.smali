.class Lgjq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Lgjn;


# direct methods
.method constructor <init>(Lgjn;Lgkw;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lgjq;->b:Lgjn;

    iput-object p2, p0, Lgjq;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lgjq;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 64
    return-void
.end method
