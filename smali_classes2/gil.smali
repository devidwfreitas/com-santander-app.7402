.class Lgil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgik;


# direct methods
.method constructor <init>(Lgik;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lgil;->a:Lgik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 50
    check-cast p1, Lgid;

    .line 51
    invoke-virtual {p1}, Lgid;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1}, Lgid;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lgil;->a:Lgik;

    invoke-static {v0}, Lgik;->a(Lgik;)Lgij;

    move-result-object v0

    invoke-interface {v0, p1}, Lgij;->a(Lgid;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lgil;->a:Lgik;

    invoke-static {v0}, Lgik;->a(Lgik;)Lgij;

    move-result-object v0

    invoke-interface {v0, p1}, Lgij;->b(Lgid;)V

    goto :goto_0
.end method
