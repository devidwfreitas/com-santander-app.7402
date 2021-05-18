.class Lkhr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkgu;


# instance fields
.field final synthetic a:Lkhp;


# direct methods
.method constructor <init>(Lkhp;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lkhr;->a:Lkhp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lkhr;->a:Lkhp;

    invoke-static {v0}, Lkhp;->a(Lkhp;)Lkhk;

    move-result-object v0

    iget-object v1, p0, Lkhr;->a:Lkhp;

    invoke-static {v1}, Lkhp;->b(Lkhp;)Lfvn;

    move-result-object v1

    invoke-interface {v0, v1}, Lkhk;->a(Lfvn;)V

    .line 73
    return-void
.end method

.method public a(Lkgm;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lkhr;->a:Lkhp;

    invoke-static {v0}, Lkhp;->a(Lkhp;)Lkhk;

    move-result-object v0

    invoke-interface {v0, p1}, Lkhk;->a(Lkgm;)V

    .line 78
    return-void
.end method
