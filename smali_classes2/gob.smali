.class Lgob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lgoa;


# direct methods
.method constructor <init>(Lgoa;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lgob;->a:Lgoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnp;->a(Z)V

    .line 249
    iget-object v0, p0, Lgob;->a:Lgoa;

    iget-object v0, v0, Lgoa;->a:Lih;

    invoke-interface {v0, p1}, Lih;->onFailure(Lis;)V

    .line 250
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 2

    .prologue
    .line 242
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnp;->a(Z)V

    .line 243
    iget-object v0, p0, Lgob;->a:Lgoa;

    iget-object v0, v0, Lgoa;->a:Lih;

    invoke-interface {v0, p1}, Lih;->onSuccess(Lis;)V

    .line 244
    return-void
.end method
