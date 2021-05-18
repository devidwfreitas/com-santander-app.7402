.class Lgzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgzl;


# direct methods
.method constructor <init>(Lgzl;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lgzm;->a:Lgzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lgzm;->a:Lgzl;

    iget-object v0, v0, Lgzl;->a:Lgzk;

    iget-object v0, v0, Lgzk;->a:Lgyx;

    iget-object v1, p0, Lgzm;->a:Lgzl;

    iget-object v1, v1, Lgzl;->a:Lgzk;

    iget-object v1, v1, Lgzk;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lgyx;->a(Ljava/lang/Object;)V

    .line 349
    return-void
.end method
