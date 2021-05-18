.class Lkja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkv",
        "<",
        "Lkht;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Lkiz;


# direct methods
.method constructor <init>(Lkiz;Lgkw;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lkja;->b:Lkiz;

    iput-object p2, p0, Lkja;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lkht;

    invoke-virtual {p0, p1}, Lkja;->a(Lkht;)V

    return-void
.end method

.method public a(Lkht;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lkja;->b:Lkiz;

    invoke-static {v0, p1}, Lkiz;->a(Lkiz;Lkht;)Lkht;

    .line 52
    iget-object v0, p0, Lkja;->a:Lgkw;

    iget-object v1, p0, Lkja;->b:Lkiz;

    invoke-static {v1}, Lkiz;->a(Lkiz;)Lkht;

    move-result-object v1

    invoke-interface {v0, v1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 53
    return-void
.end method
