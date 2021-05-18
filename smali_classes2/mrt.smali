.class Lmrt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lmrr;

.field final synthetic b:Lmrs;


# direct methods
.method constructor <init>(Lmrs;Lmrr;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lmrt;->b:Lmrs;

    iput-object p2, p0, Lmrt;->a:Lmrr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lmrt;->a:Lmrr;

    invoke-static {}, Ljcd;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lmrr;->a(Z)V

    .line 84
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
