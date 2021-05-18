.class Lmvk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmvj;


# direct methods
.method constructor <init>(Lmvj;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lmvk;->a:Lmvj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lmvk;->a:Lmvj;

    iget-object v0, v0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->b(Lmvi;)Lmsc;

    move-result-object v0

    invoke-interface {v0}, Lmsc;->e()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lmvk;->a:Lmvj;

    iget-object v1, v1, Lmvj;->a:Lmvi;

    invoke-static {v1}, Lmvi;->a(Lmvi;)Lmuk;

    move-result-object v1

    invoke-interface {v1, v0}, Lmuk;->a(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lmvk;->a:Lmvj;

    iget-object v0, v0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->a(Lmvi;)Lmuk;

    move-result-object v0

    invoke-interface {v0}, Lmuk;->g()V

    .line 108
    iget-object v0, p0, Lmvk;->a:Lmvj;

    iget-object v0, v0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->a(Lmvi;)Lmuk;

    move-result-object v0

    invoke-interface {v0}, Lmuk;->e()V

    .line 109
    return-void
.end method
