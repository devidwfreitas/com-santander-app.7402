.class Lgnx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lgnw;


# direct methods
.method constructor <init>(Lgnw;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lgnx;->a:Lgnw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lgnx;->a:Lgnw;

    iget-object v0, v0, Lgnw;->a:Lgnv;

    invoke-static {v0}, Lgnv;->b(Lgnv;)Lgkw;

    move-result-object v0

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lgnx;->a:Lgnw;

    iget-object v0, v0, Lgnw;->a:Lgnv;

    invoke-static {v0}, Lgnv;->b(Lgnv;)Lgkw;

    move-result-object v0

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
