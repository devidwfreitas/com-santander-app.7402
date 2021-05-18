.class final Lgqw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    .line 252
    invoke-virtual {v0}, Ljow;->e()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 263
    :goto_0
    return v0

    .line 253
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    .line 254
    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {v0}, Ljow;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    invoke-static {v0}, Lgpu;->b(Ljow;)V

    .line 259
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 260
    invoke-static {v0}, Lgpu;->c(Ljow;)V

    :cond_3
    :goto_1
    move v0, v1

    .line 263
    goto :goto_0

    .line 261
    :cond_4
    invoke-virtual {v0}, Ljow;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 262
    invoke-virtual {v0}, Ljow;->g()Ljox;

    move-result-object v0

    invoke-static {}, Lgpu;->l()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v2

    invoke-static {v0, v2}, Lgpu;->a(Ljox;Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V

    goto :goto_1
.end method
