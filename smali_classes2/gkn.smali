.class Lgkn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lgkm;


# direct methods
.method constructor <init>(Lgkm;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lgkn;->a:Lgkm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 24
    check-cast p1, Lgko;

    .line 26
    if-nez p1, :cond_0

    .line 27
    iget-object v0, p0, Lgkn;->a:Lgkm;

    iget-object v0, v0, Lgkm;->b:Lfoh;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lfoh;->a(Ljava/lang/Object;)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lgkn;->a:Lgkm;

    iget-object v0, v0, Lgkm;->b:Lfoh;

    invoke-virtual {p1}, Lgko;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lfoh;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
