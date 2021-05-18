.class Lgnu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lih;

.field final synthetic c:Lgnt;


# direct methods
.method constructor <init>(Lgnt;ZLih;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lgnu;->c:Lgnt;

    iput-boolean p2, p0, Lgnu;->a:Z

    iput-object p3, p0, Lgnu;->b:Lih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lgnu;->c:Lgnt;

    invoke-static {v0}, Lgnt;->a(Lgnt;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lgnu;->a:Z

    invoke-static {v0, v1}, Lgnt;->a(Landroid/content/Context;Z)Lgnt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnt;->a(Z)V

    .line 107
    iget-object v0, p0, Lgnu;->b:Lih;

    invoke-interface {v0, p1}, Lih;->onFailure(Lis;)V

    .line 108
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lgnu;->c:Lgnt;

    invoke-static {v0}, Lgnt;->a(Lgnt;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lgnu;->a:Z

    invoke-static {v0, v1}, Lgnt;->a(Landroid/content/Context;Z)Lgnt;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnt;->a(Z)V

    .line 101
    iget-object v0, p0, Lgnu;->b:Lih;

    invoke-interface {v0, p1}, Lih;->onSuccess(Lis;)V

    .line 102
    return-void
.end method
