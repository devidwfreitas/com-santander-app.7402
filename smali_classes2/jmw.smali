.class Ljmw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Ljmv;


# direct methods
.method constructor <init>(Ljmv;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Ljmw;->a:Ljmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ljmw;->a:Ljmv;

    invoke-static {v0}, Ljmv;->a(Ljmv;)Ljlv;

    move-result-object v0

    invoke-interface {v0, p1}, Ljlv;->b(Lis;)V

    .line 82
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ljmw;->a:Ljmv;

    invoke-static {v0}, Ljmv;->a(Ljmv;)Ljlv;

    move-result-object v0

    invoke-interface {v0, p1}, Ljlv;->a(Lis;)V

    .line 77
    return-void
.end method
