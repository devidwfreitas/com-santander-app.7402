.class Lkgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lkgq;


# direct methods
.method constructor <init>(Lkgq;I)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lkgr;->b:Lkgq;

    iput p2, p0, Lkgr;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lkgr;->b:Lkgq;

    invoke-static {v0}, Lkgq;->b(Lkgq;)Lkgx;

    move-result-object v1

    iget-object v0, p0, Lkgr;->b:Lkgq;

    invoke-static {v0}, Lkgq;->a(Lkgq;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lkgr;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgm;

    invoke-virtual {v1, v0}, Lkgx;->b(Lkgm;)V

    .line 96
    iget-object v0, p0, Lkgr;->b:Lkgq;

    invoke-static {v0}, Lkgq;->b(Lkgq;)Lkgx;

    move-result-object v0

    invoke-virtual {v0}, Lkgx;->d()V

    .line 97
    return-void
.end method
