.class Lkhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkhc;


# direct methods
.method constructor <init>(Lkhc;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lkhe;->a:Lkhc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lkhe;->a:Lkhc;

    invoke-static {v0}, Lkhc;->b(Lkhc;)Lkgj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lkhe;->a:Lkhc;

    invoke-static {v0}, Lkhc;->a(Lkhc;)Lkgw;

    move-result-object v0

    iget-object v1, p0, Lkhe;->a:Lkhc;

    invoke-static {v1}, Lkhc;->b(Lkhc;)Lkgj;

    move-result-object v1

    invoke-interface {v0, v1}, Lkgw;->a(Lkgj;)V

    .line 48
    :cond_0
    return-void
.end method
