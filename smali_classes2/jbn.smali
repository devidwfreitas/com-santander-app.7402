.class Ljbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Ljbm;


# direct methods
.method constructor <init>(Ljbm;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Ljbn;->a:Ljbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ljbn;->a:Ljbm;

    invoke-static {v0}, Ljbm;->a(Ljbm;)Lgkw;

    move-result-object v0

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 40
    return-void
.end method
