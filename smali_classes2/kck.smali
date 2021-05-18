.class Lkck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lkch;


# direct methods
.method constructor <init>(Lkch;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lkck;->a:Lkch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lkck;->a:Lkch;

    invoke-static {v0}, Lkch;->a(Lkch;)Lkcg;

    move-result-object v0

    invoke-interface {v0}, Lkcg;->a()V

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lkck;->a:Lkch;

    invoke-static {v0}, Lkch;->a(Lkch;)Lkcg;

    move-result-object v0

    invoke-interface {v0}, Lkcg;->b()V

    goto :goto_0
.end method
