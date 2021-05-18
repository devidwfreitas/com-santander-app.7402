.class Lgxx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgxv;


# direct methods
.method constructor <init>(Lgxv;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lgxx;->a:Lgxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lgxx;->a:Lgxv;

    invoke-static {v0}, Lgxv;->a(Lgxv;)Lgkw;

    move-result-object v0

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 74
    return-void
.end method
