.class Ljbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Ljbk;


# direct methods
.method constructor <init>(Ljbk;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Ljbl;->a:Ljbk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ljbl;->a:Ljbk;

    invoke-static {v0}, Ljbk;->a(Ljbk;)Lgkw;

    move-result-object v0

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 42
    return-void
.end method
