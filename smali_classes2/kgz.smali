.class Lkgz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lkgx;


# direct methods
.method constructor <init>(Lkgx;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lkgz;->b:Lkgx;

    iput-object p2, p0, Lkgz;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 75
    iget-object v0, p0, Lkgz;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    iget-object v0, p0, Lkgz;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 78
    iget-object v0, p0, Lkgz;->b:Lkgx;

    iget-object v0, v0, Lkgx;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgm;

    invoke-virtual {v0, v2}, Lkgm;->a(Z)V

    .line 80
    iget-object v0, p0, Lkgz;->b:Lkgx;

    invoke-static {v0}, Lkgx;->b(Lkgx;)Lkgv;

    move-result-object v0

    invoke-interface {v0}, Lkgv;->a()V

    .line 82
    return v2
.end method
