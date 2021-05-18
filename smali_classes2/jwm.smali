.class Ljwm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Ljwj;


# direct methods
.method constructor <init>(Ljwj;Lgkw;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Ljwm;->b:Ljwj;

    iput-object p2, p0, Ljwm;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Ljwm;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Ljwm;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 83
    return-void
.end method
