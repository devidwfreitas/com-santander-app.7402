.class Lkcj;
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
    .line 45
    iput-object p1, p0, Lkcj;->a:Lkch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lkcj;->a:Lkch;

    invoke-static {v0}, Lkch;->a(Lkch;)Lkcg;

    move-result-object v0

    invoke-interface {v0}, Lkcg;->e()V

    .line 49
    return-void
.end method
