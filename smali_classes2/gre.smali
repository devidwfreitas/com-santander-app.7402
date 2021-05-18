.class final Lgre;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 270
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 280
    :goto_0
    return v0

    .line 273
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    invoke-virtual {v0}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    .line 275
    invoke-virtual {v0}, Ljow;->e()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {v0}, Ljow;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    invoke-static {v0}, Lgpu;->b(Ljow;)V

    :goto_1
    move v0, v1

    .line 280
    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {v0}, Ljow;->g()Ljox;

    move-result-object v0

    invoke-static {}, Lgpu;->l()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v2

    invoke-static {v0, v2}, Lgpu;->a(Ljox;Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V

    goto :goto_1
.end method
