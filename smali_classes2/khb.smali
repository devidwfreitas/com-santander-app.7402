.class Lkhb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lkgx;


# direct methods
.method constructor <init>(Lkgx;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lkhb;->a:Lkgx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lkhb;->a:Lkgx;

    invoke-static {v0}, Lkgx;->a(Lkgx;)Lkgu;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgm;

    invoke-interface {v1, v0}, Lkgu;->a(Lkgm;)V

    .line 103
    return-void
.end method
