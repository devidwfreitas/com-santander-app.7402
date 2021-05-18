.class Lmni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmnh;


# direct methods
.method constructor <init>(Lmnh;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lmni;->a:Lmnh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lmlk;

    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lmni;->a:Lmnh;

    invoke-static {v0}, Lmnh;->a(Lmnh;)Lmng;

    move-result-object v0

    invoke-interface {v0, p1}, Lmng;->a(Lmlk;)V

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lmni;->a:Lmnh;

    invoke-static {v0}, Lmnh;->a(Lmnh;)Lmng;

    move-result-object v0

    invoke-interface {v0, p1}, Lmng;->b(Lmlk;)V

    goto :goto_0
.end method
