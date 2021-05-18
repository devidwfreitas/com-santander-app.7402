.class public Lbr/com/santander/msgsdk/customView/ViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUNDLE_MAP_KEY:Ljava/lang/String; = "ViewHelper_Bundle_Map_Key"


# instance fields
.field private lockedSwipeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mapLayouts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbr/com/santander/msgsdk/customView/SwipeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mapStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile openOnlyOne:Z

.field private final stateChangeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapStates:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapLayouts:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->lockedSwipeSet:Ljava/util/Set;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->openOnlyOne:Z

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->stateChangeLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lbr/com/santander/msgsdk/customView/ViewHelper;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapStates:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lbr/com/santander/msgsdk/customView/ViewHelper;)Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->openOnlyOne:Z

    return v0
.end method

.method static synthetic access$200(Lbr/com/santander/msgsdk/customView/ViewHelper;Ljava/lang/String;Lbr/com/santander/msgsdk/customView/SwipeLayout;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lbr/com/santander/msgsdk/customView/ViewHelper;->closeOthers(Ljava/lang/String;Lbr/com/santander/msgsdk/customView/SwipeLayout;)V

    return-void
.end method

.method private closeOthers(Ljava/lang/String;Lbr/com/santander/msgsdk/customView/SwipeLayout;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 122
    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->stateChangeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 124
    :try_start_0
    invoke-direct {p0}, Lbr/com/santander/msgsdk/customView/ViewHelper;->getOpenCount()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 125
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 131
    :cond_1
    :try_start_1
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapLayouts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/customView/SwipeLayout;

    .line 132
    if-eq v0, p2, :cond_2

    .line 133
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->close(Z)V

    goto :goto_1

    .line 137
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    return-void
.end method

.method private getOpenCount()I
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 160
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 161
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 162
    :cond_0
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 164
    goto :goto_0

    .line 165
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private varargs setLockSwipe(Z[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 141
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 155
    :cond_0
    return-void

    .line 144
    :cond_1
    if-eqz p1, :cond_3

    .line 145
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->lockedSwipeSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 149
    :goto_0
    array-length v2, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 150
    iget-object v3, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapLayouts:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/customView/SwipeLayout;

    .line 151
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0, p1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->setLockDrag(Z)V

    .line 149
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 147
    :cond_3
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->lockedSwipeSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public bind(Lbr/com/santander/msgsdk/customView/SwipeLayout;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->shouldRequestLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->requestLayout()V

    .line 24
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapLayouts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapLayouts:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {p1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->abort()V

    .line 27
    new-instance v0, Lbr/com/santander/msgsdk/customView/ViewHelper$1;

    invoke-direct {v0, p0, p2, p1}, Lbr/com/santander/msgsdk/customView/ViewHelper$1;-><init>(Lbr/com/santander/msgsdk/customView/ViewHelper;Ljava/lang/String;Lbr/com/santander/msgsdk/customView/SwipeLayout;)V

    invoke-virtual {p1, v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->setDragStateChangeListener(Lbr/com/santander/msgsdk/customView/SwipeLayout$DragStateChangeListener;)V

    .line 37
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapStates:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapStates:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p1, v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->close(Z)V

    .line 50
    :goto_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->lockedSwipeSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->setLockDrag(Z)V

    .line 51
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapStates:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 43
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 45
    :cond_2
    invoke-virtual {p1, v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->close(Z)V

    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {p1, v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->open(Z)V

    goto :goto_0
.end method

.method public closeLayout(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->stateChangeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapStates:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapLayouts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapLayouts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/customView/SwipeLayout;

    .line 116
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->close(Z)V

    .line 118
    :cond_0
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs lockSwipe([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lbr/com/santander/msgsdk/customView/ViewHelper;->setLockSwipe(Z[Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public openLayout(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->stateChangeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapStates:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapLayouts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapLayouts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/customView/SwipeLayout;

    .line 103
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->open(Z)V

    .line 107
    :cond_0
    :goto_0
    monitor-exit v1

    .line 108
    return-void

    .line 104
    :cond_1
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->openOnlyOne:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapLayouts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-direct {p0, p1, v0}, Lbr/com/santander/msgsdk/customView/ViewHelper;->closeOthers(Ljava/lang/String;Lbr/com/santander/msgsdk/customView/SwipeLayout;)V

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreStates(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 66
    if-nez p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v0, "ViewHelper_Bundle_Map_Key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 72
    const-string v0, "ViewHelper_Bundle_Map_Key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 81
    :cond_2
    iput-object v1, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapStates:Ljava/util/Map;

    goto :goto_0
.end method

.method public saveStates(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 58
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->mapStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 62
    :cond_1
    const-string v0, "ViewHelper_Bundle_Map_Key"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setOpenOnlyOne(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lbr/com/santander/msgsdk/customView/ViewHelper;->openOnlyOne:Z

    .line 95
    return-void
.end method

.method public varargs unlockSwipe([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lbr/com/santander/msgsdk/customView/ViewHelper;->setLockSwipe(Z[Ljava/lang/String;)V

    .line 91
    return-void
.end method
