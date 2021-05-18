.class public Lgop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/CheckCardGroup;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/CheckCardGroup;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lgop;->a:Lcom/santander/app/components/view/CheckCardGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    iget-object v0, p0, Lgop;->a:Lcom/santander/app/components/view/CheckCardGroup;

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Lcom/santander/app/components/view/CheckCardView;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 50
    check-cast v0, Lcom/santander/app/components/view/CheckCardView;

    .line 51
    iput-boolean v2, v0, Lcom/santander/app/components/view/CheckCardView;->a:Z

    .line 52
    iget-object v1, p0, Lgop;->a:Lcom/santander/app/components/view/CheckCardGroup;

    invoke-static {v1}, Lcom/santander/app/components/view/CheckCardGroup;->a(Lcom/santander/app/components/view/CheckCardGroup;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/CheckCardView;->setOnCheckChangeListener(Lgoy;)V

    .line 54
    iget-object v1, p0, Lgop;->a:Lcom/santander/app/components/view/CheckCardGroup;

    invoke-static {v1}, Lcom/santander/app/components/view/CheckCardGroup;->b(Lcom/santander/app/components/view/CheckCardGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/CheckCardView;->setChecked(Z)V

    .line 58
    :cond_0
    iget-object v1, p0, Lgop;->a:Lcom/santander/app/components/view/CheckCardGroup;

    invoke-static {v1}, Lcom/santander/app/components/view/CheckCardGroup;->b(Lcom/santander/app/components/view/CheckCardGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_1
    iget-object v0, p0, Lgop;->a:Lcom/santander/app/components/view/CheckCardGroup;

    invoke-static {v0}, Lcom/santander/app/components/view/CheckCardGroup;->c(Lcom/santander/app/components/view/CheckCardGroup;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lgop;->a:Lcom/santander/app/components/view/CheckCardGroup;

    invoke-static {v0}, Lcom/santander/app/components/view/CheckCardGroup;->c(Lcom/santander/app/components/view/CheckCardGroup;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 63
    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lgop;->a:Lcom/santander/app/components/view/CheckCardGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lcom/santander/app/components/view/CheckCardView;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 68
    check-cast v0, Lcom/santander/app/components/view/CheckCardView;

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/CheckCardView;->setOnCheckChangeListener(Lgoy;)V

    .line 70
    iget-object v1, p0, Lgop;->a:Lcom/santander/app/components/view/CheckCardGroup;

    invoke-static {v1}, Lcom/santander/app/components/view/CheckCardGroup;->b(Lcom/santander/app/components/view/CheckCardGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    iget-object v0, p0, Lgop;->a:Lcom/santander/app/components/view/CheckCardGroup;

    invoke-static {v0}, Lcom/santander/app/components/view/CheckCardGroup;->c(Lcom/santander/app/components/view/CheckCardGroup;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lgop;->a:Lcom/santander/app/components/view/CheckCardGroup;

    invoke-static {v0}, Lcom/santander/app/components/view/CheckCardGroup;->c(Lcom/santander/app/components/view/CheckCardGroup;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 75
    :cond_1
    return-void
.end method
