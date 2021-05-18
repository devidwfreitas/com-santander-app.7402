.class Lgnr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lgnq;


# direct methods
.method constructor <init>(Lgnq;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lgnr;->a:Lgnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnp;->a(Z)V

    .line 121
    iget-object v0, p0, Lgnr;->a:Lgnq;

    iget-object v0, v0, Lgnq;->a:Lih;

    invoke-interface {v0, p1}, Lih;->onFailure(Lis;)V

    .line 122
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnp;->a(Z)V

    .line 115
    iget-object v0, p0, Lgnr;->a:Lgnq;

    iget-object v0, v0, Lgnq;->a:Lih;

    invoke-interface {v0, p1}, Lih;->onSuccess(Lis;)V

    .line 116
    return-void
.end method
