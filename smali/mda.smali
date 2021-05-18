.class public Lmda;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lmdt;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String; = "bundle_selections"

.field protected static final b:Ljava/lang/String; = "bundle_expanded"

.field private static final c:Ljava/lang/String; = "FastAdapter"


# instance fields
.field private A:Lmde;

.field private B:Lmeg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmeg",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private C:Lmek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmek",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private D:Lmel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmel",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lmdm",
            "<TItem;>;>;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lmdm",
            "<TItem;>;>;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/util/SparseIntArray;

.field private r:Z

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmei",
            "<TItem;>;>;"
        }
    .end annotation
.end field

.field private t:Lmdg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmdg",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private u:Lmdg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmdg",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private v:Lmdj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmdj",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private w:Lmdj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmdj",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private x:Lmdk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmdk",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private y:Lmdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmdw",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private z:Lmdh;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmda;->d:Landroid/util/SparseArray;

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmda;->e:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmda;->f:Landroid/util/SparseArray;

    .line 54
    iput v1, p0, Lmda;->g:I

    .line 59
    iput-boolean v1, p0, Lmda;->h:Z

    .line 61
    iput-boolean v1, p0, Lmda;->i:Z

    .line 63
    iput-boolean v1, p0, Lmda;->j:Z

    .line 65
    iput-boolean v2, p0, Lmda;->k:Z

    .line 67
    iput-boolean v1, p0, Lmda;->l:Z

    .line 69
    iput-boolean v1, p0, Lmda;->m:Z

    .line 71
    iput-boolean v2, p0, Lmda;->n:Z

    .line 73
    iput-boolean v1, p0, Lmda;->o:Z

    .line 76
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lmda;->p:Ljava/util/Set;

    .line 78
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lmda;->q:Landroid/util/SparseIntArray;

    .line 81
    iput-boolean v1, p0, Lmda;->r:Z

    .line 96
    new-instance v0, Lmdi;

    invoke-direct {v0, p0}, Lmdi;-><init>(Lmda;)V

    iput-object v0, p0, Lmda;->z:Lmdh;

    .line 97
    new-instance v0, Lmdf;

    invoke-direct {v0, p0}, Lmdf;-><init>(Lmda;)V

    iput-object v0, p0, Lmda;->A:Lmde;

    .line 500
    new-instance v0, Lmdb;

    invoke-direct {v0, p0}, Lmdb;-><init>(Lmda;)V

    iput-object v0, p0, Lmda;->B:Lmeg;

    .line 557
    new-instance v0, Lmdc;

    invoke-direct {v0, p0}, Lmdc;-><init>(Lmda;)V

    iput-object v0, p0, Lmda;->C:Lmek;

    .line 585
    new-instance v0, Lmdd;

    invoke-direct {v0, p0}, Lmdd;-><init>(Lmda;)V

    iput-object v0, p0, Lmda;->D:Lmel;

    .line 111
    invoke-virtual {p0, v2}, Lmda;->setHasStableIds(Z)V

    .line 112
    return-void
.end method

.method private static a(Landroid/util/SparseArray;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 101
    if-gez v0, :cond_0

    .line 102
    xor-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 104
    :cond_0
    return v0
.end method

.method static synthetic a(Lmda;)Lmdg;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmda;->t:Lmdg;

    return-object v0
.end method

.method private a(ILjava/util/Iterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1295
    invoke-virtual {p0, p1}, Lmda;->b(I)Lmdt;

    move-result-object v0

    .line 1296
    if-eqz v0, :cond_0

    .line 1297
    invoke-interface {v0, v3}, Lmdt;->i(Z)Ljava/lang/Object;

    .line 1299
    :cond_0
    if-nez p2, :cond_3

    .line 1300
    iget-boolean v1, p0, Lmda;->n:Z

    if-eqz v1, :cond_1

    .line 1301
    iget-object v1, p0, Lmda;->p:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1306
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lmda;->notifyItemChanged(I)V

    .line 1308
    iget-object v1, p0, Lmda;->y:Lmdw;

    if-eqz v1, :cond_2

    .line 1309
    iget-object v1, p0, Lmda;->y:Lmdw;

    invoke-interface {v1, v0, v3}, Lmdw;->a(Lmdt;Z)V

    .line 1311
    :cond_2
    return-void

    .line 1304
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lmdt;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TItem;I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1083
    invoke-interface {p2}, Lmdt;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    invoke-interface {p2}, Lmdt;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmda;->k:Z

    if-eqz v0, :cond_0

    .line 1093
    :cond_2
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_5

    .line 1094
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v1, v0

    .line 1099
    :goto_1
    iget-boolean v0, p0, Lmda;->h:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_7

    .line 1100
    :cond_3
    iget-boolean v0, p0, Lmda;->i:Z

    if-nez v0, :cond_4

    .line 1101
    invoke-virtual {p0}, Lmda;->h()V

    .line 1103
    :cond_4
    if-eqz v1, :cond_6

    .line 1104
    invoke-virtual {p0, p3}, Lmda;->i(I)V

    goto :goto_0

    .line 1096
    :cond_5
    invoke-interface {p2}, Lmdt;->m()Z

    move-result v0

    move v1, v0

    goto :goto_1

    .line 1106
    :cond_6
    invoke-virtual {p0, p3}, Lmda;->h(I)V

    goto :goto_0

    .line 1109
    :cond_7
    iget-boolean v0, p0, Lmda;->i:Z

    if-nez v0, :cond_b

    .line 1112
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_9

    .line 1113
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1114
    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1116
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p3, :cond_8

    .line 1118
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v4}, Lmda;->a(ILjava/util/Iterator;)V

    goto :goto_2

    .line 1122
    :cond_9
    invoke-virtual {p0}, Lmda;->f()Ljava/util/Set;

    move-result-object v0

    .line 1123
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1124
    if-eq v0, p3, :cond_a

    .line 1125
    invoke-virtual {p0, v0}, Lmda;->i(I)V

    goto :goto_3

    .line 1132
    :cond_b
    if-nez v1, :cond_d

    move v0, v2

    :goto_4
    invoke-interface {p2, v0}, Lmdt;->i(Z)Ljava/lang/Object;

    .line 1133
    if-nez v1, :cond_e

    move v0, v2

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1136
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_c

    .line 1137
    if-eqz v1, :cond_f

    .line 1138
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1139
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1147
    :cond_c
    :goto_6
    iget-object v0, p0, Lmda;->y:Lmdw;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lmda;->y:Lmdw;

    if-nez v1, :cond_10

    :goto_7
    invoke-interface {v0, p2, v2}, Lmdw;->a(Lmdt;Z)V

    goto/16 :goto_0

    :cond_d
    move v0, v3

    .line 1132
    goto :goto_4

    :cond_e
    move v0, v3

    .line 1133
    goto :goto_5

    .line 1142
    :cond_f
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    move v2, v3

    .line 1148
    goto :goto_7
.end method

.method static synthetic a(Lmda;Landroid/view/View;Lmdt;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lmda;->a(Landroid/view/View;Lmdt;I)V

    return-void
.end method

.method private a(Lmdp;IZ)V
    .locals 3

    .prologue
    .line 1551
    invoke-virtual {p0, p2}, Lmda;->d(I)Lmdm;

    move-result-object v0

    .line 1552
    if-eqz v0, :cond_0

    instance-of v1, v0, Lmdu;

    if-eqz v1, :cond_0

    .line 1553
    check-cast v0, Lmdu;

    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1}, Lmdp;->j_()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmdu;->a(II)Lmdu;

    .line 1557
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lmdp;->g(Z)Ljava/lang/Object;

    .line 1560
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_1

    .line 1561
    iget-object v0, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 1562
    if-ltz v0, :cond_1

    .line 1563
    iget-object v1, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1567
    :cond_1
    if-eqz p3, :cond_2

    .line 1568
    invoke-virtual {p0, p2}, Lmda;->notifyItemChanged(I)V

    .line 1570
    :cond_2
    return-void
.end method

.method static synthetic b(Lmda;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lmda;->j:Z

    return v0
.end method

.method static synthetic c(Lmda;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lmda;->l:Z

    return v0
.end method

.method private d(IZ)V
    .locals 2

    .prologue
    .line 1540
    invoke-virtual {p0, p1}, Lmda;->b(I)Lmdt;

    move-result-object v0

    .line 1541
    if-eqz v0, :cond_0

    instance-of v1, v0, Lmdp;

    if-eqz v1, :cond_0

    .line 1542
    check-cast v0, Lmdp;

    .line 1544
    invoke-interface {v0}, Lmdp;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1545
    invoke-direct {p0, v0, p1, p2}, Lmda;->a(Lmdp;IZ)V

    .line 1548
    :cond_0
    return-void
.end method

.method static synthetic d(Lmda;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lmda;->m:Z

    return v0
.end method

.method static synthetic e(Lmda;)Lmdg;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmda;->u:Lmdg;

    return-object v0
.end method

.method static synthetic f(Lmda;)Lmdj;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmda;->v:Lmdj;

    return-object v0
.end method

.method static synthetic g(Lmda;)Lmdj;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmda;->w:Lmdj;

    return-object v0
.end method

.method static synthetic h(Lmda;)Lmdk;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmda;->x:Lmdk;

    return-object v0
.end method

.method static synthetic i(Lmda;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmda;->s:Ljava/util/List;

    return-object v0
.end method

.method private p()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 998
    iget-object v0, p0, Lmda;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1001
    iget-object v0, p0, Lmda;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_0
    if-ge v2, v4, :cond_0

    .line 1002
    iget-object v0, p0, Lmda;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdm;

    .line 1003
    invoke-interface {v0}, Lmdm;->d()I

    move-result v5

    if-lez v5, :cond_2

    .line 1004
    iget-object v5, p0, Lmda;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1005
    invoke-interface {v0}, Lmdm;->d()I

    move-result v0

    add-int/2addr v0, v1

    .line 1001
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 1010
    :cond_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lmda;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1011
    iget-object v0, p0, Lmda;->f:Landroid/util/SparseArray;

    iget-object v2, p0, Lmda;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1014
    :cond_1
    iput v1, p0, Lmda;->g:I

    .line 1015
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(II)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 903
    .line 904
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_3

    .line 905
    iget-object v0, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v1, v2, :cond_2

    .line 907
    iget-object v3, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-lt v3, p1, :cond_1

    iget-object v3, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-ge v3, p2, :cond_1

    .line 908
    iget-object v3, p0, Lmda;->q:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 905
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 909
    :cond_1
    iget-object v3, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-lt v3, p2, :cond_0

    .line 928
    :cond_2
    :goto_1
    return v0

    .line 918
    :cond_3
    :goto_2
    if-ge p1, p2, :cond_5

    .line 919
    invoke-virtual {p0, p1}, Lmda;->b(I)Lmdt;

    move-result-object v0

    .line 920
    instance-of v2, v0, Lmdp;

    if-eqz v2, :cond_4

    .line 921
    check-cast v0, Lmdp;

    .line 922
    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lmdp;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 923
    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 918
    :goto_3
    add-int/lit8 p1, p1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public a(J)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 747
    .line 748
    iget-object v1, p0, Lmda;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v0

    move v1, v0

    :goto_0
    if-ge v3, v4, :cond_2

    .line 749
    iget-object v0, p0, Lmda;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdm;

    .line 750
    invoke-interface {v0}, Lmdm;->c()I

    move-result v5

    if-gez v5, :cond_0

    move v0, v1

    .line 748
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 754
    :cond_0
    invoke-interface {v0, p1, p2}, Lmdm;->a(J)I

    move-result v5

    .line 755
    if-eq v5, v2, :cond_1

    .line 756
    add-int v0, v1, v5

    .line 761
    :goto_2
    return v0

    .line 758
    :cond_1
    invoke-interface {v0}, Lmdm;->d()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 761
    goto :goto_2
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    return v0
.end method

.method public a()Lmda;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmda;->r:Z

    .line 121
    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Lmda;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 383
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lmda;->a(Landroid/os/Bundle;Ljava/lang/String;)Lmda;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)Lmda;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 397
    if-eqz p1, :cond_4

    .line 399
    invoke-virtual {p0}, Lmda;->h()V

    .line 401
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_1

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle_expanded"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 404
    if-eqz v2, :cond_0

    .line 405
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 406
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lmda;->l(I)V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle_selections"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 412
    if-eqz v0, :cond_4

    .line 413
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_4

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 414
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lmda;->h(I)V

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 418
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle_expanded"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bundle_selections"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 423
    invoke-virtual {p0}, Lmda;->getItemCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 424
    invoke-virtual {p0, v1}, Lmda;->b(I)Lmdt;

    move-result-object v4

    .line 425
    invoke-interface {v4}, Lmdt;->j()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 426
    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 427
    invoke-virtual {p0, v1}, Lmda;->l(I)V

    .line 428
    invoke-virtual {p0}, Lmda;->getItemCount()I

    move-result v0

    .line 430
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 431
    invoke-virtual {p0, v1}, Lmda;->h(I)V

    .line 435
    :cond_3
    invoke-static {v4, v3}, Lmem;->a(Lmdt;Ljava/util/List;)V

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 439
    :cond_4
    return-object p0
.end method

.method public a(Ljava/util/Collection;)Lmda;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lmei",
            "<TItem;>;>;)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return-object p0

    .line 163
    :cond_0
    iget-object v0, p0, Lmda;->s:Ljava/util/List;

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmda;->s:Ljava/util/List;

    .line 166
    :cond_1
    iget-object v0, p0, Lmda;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a(Lmde;)Lmda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmde;",
            ")",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 243
    iput-object p1, p0, Lmda;->A:Lmde;

    .line 244
    return-object p0
.end method

.method public a(Lmdg;)Lmda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmdg",
            "<TItem;>;)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 177
    iput-object p1, p0, Lmda;->u:Lmdg;

    .line 178
    return-object p0
.end method

.method public a(Lmdh;)Lmda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmdh;",
            ")",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 232
    iput-object p1, p0, Lmda;->z:Lmdh;

    .line 233
    return-object p0
.end method

.method public a(Lmdj;)Lmda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmdj",
            "<TItem;>;)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 199
    iput-object p1, p0, Lmda;->w:Lmdj;

    .line 200
    return-object p0
.end method

.method public a(Lmdk;)Lmda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmdk",
            "<TItem;>;)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 221
    iput-object p1, p0, Lmda;->x:Lmdk;

    .line 222
    return-object p0
.end method

.method public a(Lmdw;)Lmda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmdw",
            "<TItem;>;)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 336
    iput-object p1, p0, Lmda;->y:Lmdw;

    .line 337
    return-object p0
.end method

.method public a(Lmei;)Lmda;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmei",
            "<TItem;>;)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lmda;->b(Lmei;)Lmda;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lmda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 257
    iput-boolean p1, p0, Lmda;->h:Z

    .line 258
    return-object p0
.end method

.method public a(I)Lmdt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lmda;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    return-object v0
.end method

.method public a(IILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 1793
    move v1, p1

    :goto_0
    add-int v0, p1, p2

    if-ge v1, v0, :cond_2

    .line 1794
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_1

    .line 1795
    iget-object v0, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1796
    invoke-virtual {p0, v1}, Lmda;->k(I)V

    .line 1793
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1799
    :cond_1
    invoke-virtual {p0, p1}, Lmda;->b(I)Lmdt;

    move-result-object v0

    .line 1800
    instance-of v2, v0, Lmdp;

    if-eqz v2, :cond_0

    check-cast v0, Lmdp;

    invoke-interface {v0}, Lmdp;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1801
    invoke-virtual {p0, p1}, Lmda;->k(I)V

    goto :goto_1

    .line 1806
    :cond_2
    if-nez p3, :cond_4

    .line 1807
    invoke-virtual {p0, p1, p2}, Lmda;->notifyItemRangeChanged(II)V

    .line 1812
    :goto_2
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_3

    .line 1814
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Lmem;->a(Lmda;II)V

    .line 1816
    :cond_3
    return-void

    .line 1809
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lmda;->notifyItemRangeChanged(IILjava/lang/Object;)V

    goto :goto_2
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1772
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lmda;->a(IILjava/lang/Object;)V

    .line 1773
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 1179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmda;->a(IZZ)V

    .line 1180
    return-void
.end method

.method public a(IZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1190
    invoke-virtual {p0, p1}, Lmda;->b(I)Lmdt;

    move-result-object v0

    .line 1192
    if-nez v0, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {v0}, Lmdt;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1199
    :cond_2
    invoke-interface {v0, v3}, Lmdt;->i(Z)Ljava/lang/Object;

    .line 1201
    iget-boolean v1, p0, Lmda;->n:Z

    if-eqz v1, :cond_3

    .line 1202
    iget-object v1, p0, Lmda;->p:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1205
    :cond_3
    invoke-virtual {p0, p1}, Lmda;->notifyItemChanged(I)V

    .line 1207
    iget-object v1, p0, Lmda;->y:Lmdw;

    if-eqz v1, :cond_4

    .line 1208
    iget-object v1, p0, Lmda;->y:Lmdw;

    invoke-interface {v1, v0, v3}, Lmdw;->a(Lmdt;Z)V

    .line 1210
    :cond_4
    iget-object v1, p0, Lmda;->u:Lmdg;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 1211
    iget-object v1, p0, Lmda;->u:Lmdg;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lmda;->d(I)Lmdm;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0, p1}, Lmdg;->a(Landroid/view/View;Lmdm;Lmdt;I)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1158
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1159
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lmda;->h(I)V

    goto :goto_0

    .line 1161
    :cond_0
    return-void
.end method

.method public a(Lmcz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lmcz",
            "<TItem;>;>(TA;)V"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lmda;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lmcz;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 449
    iget-object v0, p0, Lmda;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lmcz;->c()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    invoke-direct {p0}, Lmda;->p()V

    .line 452
    :cond_0
    return-void
.end method

.method public a(Lmdt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lmda;->e:Landroid/util/SparseArray;

    invoke-interface {p1}, Lmdt;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 461
    iget-object v0, p0, Lmda;->e:Landroid/util/SparseArray;

    invoke-interface {p1}, Lmdt;->b()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    instance-of v0, p1, Lmdr;

    if-eqz v0, :cond_0

    .line 464
    check-cast p1, Lmdr;

    invoke-interface {p1}, Lmdr;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmda;->a(Ljava/util/Collection;)Lmda;

    .line 467
    :cond_0
    return-void
.end method

.method public b(Lmdt;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)I"
        }
    .end annotation

    .prologue
    .line 733
    invoke-interface {p1}, Lmdt;->j()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 734
    const-string v0, "FastAdapter"

    const-string v1, "You have to define an identifier for your item to retrieve the position via this method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/4 v0, -0x1

    .line 737
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lmdt;->j()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmda;->a(J)I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 941
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lmda;->b(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 954
    if-eqz p1, :cond_1

    .line 955
    iget-boolean v1, p0, Lmda;->n:Z

    if-eqz v1, :cond_2

    .line 957
    iget-object v1, p0, Lmda;->p:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v2, v1, [I

    .line 959
    iget-object v1, p0, Lmda;->p:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 960
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    .line 961
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 962
    goto :goto_0

    .line 963
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bundle_selections"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bundle_expanded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmda;->l()[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 991
    :cond_1
    :goto_1
    return-object p1

    .line 968
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 969
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 972
    invoke-virtual {p0}, Lmda;->getItemCount()I

    move-result v5

    move v2, v0

    :goto_2
    if-ge v2, v5, :cond_5

    .line 973
    invoke-virtual {p0, v2}, Lmda;->b(I)Lmdt;

    move-result-object v1

    .line 974
    instance-of v0, v1, Lmdp;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lmdp;

    invoke-interface {v0}, Lmdp;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 975
    invoke-interface {v1}, Lmdt;->j()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    :cond_3
    invoke-interface {v1}, Lmdt;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 978
    invoke-interface {v1}, Lmdt;->j()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    :cond_4
    invoke-static {v1, v3}, Lmem;->b(Lmdt;Ljava/util/List;)V

    .line 972
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 985
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bundle_selections"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bundle_expanded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public b(Lmdg;)Lmda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmdg",
            "<TItem;>;)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 188
    iput-object p1, p0, Lmda;->t:Lmdg;

    .line 189
    return-object p0
.end method

.method public b(Lmdj;)Lmda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmdj",
            "<TItem;>;)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 210
    iput-object p1, p0, Lmda;->v:Lmdj;

    .line 211
    return-object p0
.end method

.method public b(Lmei;)Lmda;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmei",
            "<TItem;>;)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lmda;->s:Ljava/util/List;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmda;->s:Ljava/util/List;

    .line 148
    :cond_0
    iget-object v0, p0, Lmda;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-object p0
.end method

.method public b(Z)Lmda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 268
    iput-boolean p1, p0, Lmda;->i:Z

    .line 269
    return-object p0
.end method

.method public b(I)Lmdt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 772
    if-ltz p1, :cond_0

    iget v0, p0, Lmda;->g:I

    if-lt p1, v0, :cond_1

    .line 773
    :cond_0
    const/4 v0, 0x0

    .line 777
    :goto_0
    return-object v0

    .line 776
    :cond_1
    iget-object v0, p0, Lmda;->f:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Lmda;->a(Landroid/util/SparseArray;I)I

    move-result v1

    .line 777
    iget-object v0, p0, Lmda;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdm;

    iget-object v2, p0, Lmda;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lmdm;->b(I)Lmdt;

    move-result-object v0

    goto :goto_0
.end method

.method public b(II)V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 1692
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_0

    .line 1693
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-static {v0, p1, v1, p2}, Lmem;->a(Ljava/util/Set;III)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lmda;->p:Ljava/util/Set;

    .line 1694
    iget-object v0, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-static {v0, p1, v1, p2}, Lmem;->a(Landroid/util/SparseIntArray;III)Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lmda;->q:Landroid/util/SparseIntArray;

    .line 1696
    :cond_0
    invoke-direct {p0}, Lmda;->p()V

    .line 1698
    invoke-virtual {p0, p1, p2}, Lmda;->notifyItemRangeInserted(II)V

    .line 1700
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_1

    .line 1702
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Lmem;->a(Lmda;II)V

    .line 1704
    :cond_1
    return-void
.end method

.method public b(IZ)V
    .locals 8

    .prologue
    .line 1465
    invoke-virtual {p0, p1}, Lmda;->b(I)Lmdt;

    move-result-object v0

    .line 1466
    if-eqz v0, :cond_5

    instance-of v1, v0, Lmdp;

    if-eqz v1, :cond_5

    .line 1467
    check-cast v0, Lmdp;

    .line 1470
    invoke-interface {v0}, Lmdp;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1471
    iget-boolean v1, p0, Lmda;->n:Z

    if-eqz v1, :cond_6

    .line 1473
    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1475
    iget-object v1, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 1476
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_0

    .line 1477
    iget-object v1, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    if-le v1, p1, :cond_b

    iget-object v1, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    add-int v5, p1, v2

    if-gt v1, v5, :cond_b

    .line 1478
    iget-object v1, p0, Lmda;->q:Landroid/util/SparseIntArray;

    iget-object v5, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 1476
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 1483
    :cond_0
    iget-object v1, p0, Lmda;->p:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1484
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1485
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1486
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int v6, p1, v2

    if-gt v5, v6, :cond_1

    .line 1487
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lmda;->a(ILjava/util/Iterator;)V

    goto :goto_2

    .line 1492
    :cond_2
    add-int/lit8 v1, v4, -0x1

    move v7, v1

    move v1, v2

    move v2, v7

    :goto_3
    if-ltz v2, :cond_4

    .line 1493
    iget-object v3, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-le v3, p1, :cond_3

    iget-object v3, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    add-int v4, p1, v1

    if-gt v3, v4, :cond_3

    .line 1495
    iget-object v3, p0, Lmda;->q:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 1498
    iget-object v3, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v3, p2}, Lmda;->d(IZ)V

    .line 1492
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1503
    :cond_4
    invoke-direct {p0, v0, p1, p2}, Lmda;->a(Lmdp;IZ)V

    .line 1537
    :cond_5
    :goto_4
    return-void

    .line 1507
    :cond_6
    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1508
    add-int/lit8 v1, p1, 0x1

    move v3, v1

    :goto_5
    add-int v1, p1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v3, v1, :cond_7

    .line 1509
    invoke-virtual {p0, v3}, Lmda;->b(I)Lmdt;

    move-result-object v1

    .line 1510
    instance-of v4, v1, Lmdp;

    if-eqz v4, :cond_a

    .line 1511
    check-cast v1, Lmdp;

    .line 1512
    invoke-interface {v1}, Lmdp;->j_()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Lmdp;->f()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1513
    invoke-interface {v1}, Lmdp;->j_()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v2

    .line 1508
    :goto_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_5

    .line 1519
    :cond_7
    add-int v1, p1, v2

    add-int/lit8 v2, v1, -0x1

    :goto_7
    if-le v2, p1, :cond_8

    .line 1520
    invoke-virtual {p0, v2}, Lmda;->b(I)Lmdt;

    move-result-object v1

    .line 1521
    instance-of v3, v1, Lmdp;

    if-eqz v3, :cond_9

    .line 1522
    check-cast v1, Lmdp;

    .line 1523
    invoke-interface {v1}, Lmdp;->f()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1524
    invoke-virtual {p0, v2}, Lmda;->k(I)V

    .line 1525
    invoke-interface {v1}, Lmdp;->j_()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1526
    invoke-interface {v1}, Lmdp;->j_()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, v2, v1

    .line 1519
    :goto_8
    add-int/lit8 v2, v1, -0x1

    goto :goto_7

    .line 1533
    :cond_8
    invoke-direct {p0, v0, p1, p2}, Lmda;->a(Lmdp;IZ)V

    goto :goto_4

    :cond_9
    move v1, v2

    goto :goto_8

    :cond_a
    move v1, v2

    goto :goto_6

    :cond_b
    move v1, v2

    goto/16 :goto_1
.end method

.method public b(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1272
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1273
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1274
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lmda;->a(ILjava/util/Iterator;)V

    goto :goto_0

    .line 1276
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lmda;->l:Z

    return v0
.end method

.method public c(Z)Lmda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 279
    iput-boolean p1, p0, Lmda;->j:Z

    .line 280
    return-object p0
.end method

.method public c(I)Lmdl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmdl",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 788
    if-gez p1, :cond_0

    .line 789
    new-instance v0, Lmdl;

    invoke-direct {v0}, Lmdl;-><init>()V

    .line 799
    :goto_0
    return-object v0

    .line 792
    :cond_0
    new-instance v1, Lmdl;

    invoke-direct {v1}, Lmdl;-><init>()V

    .line 793
    iget-object v0, p0, Lmda;->f:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Lmda;->a(Landroid/util/SparseArray;I)I

    move-result v2

    .line 794
    const/4 v0, -0x1

    if-eq v2, v0, :cond_1

    .line 795
    iget-object v0, p0, Lmda;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdm;

    iget-object v3, p0, Lmda;->f:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    sub-int v3, p1, v3

    invoke-interface {v0, v3}, Lmdm;->b(I)Lmdt;

    move-result-object v0

    iput-object v0, v1, Lmdl;->b:Lmdt;

    .line 796
    iget-object v0, p0, Lmda;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdm;

    iput-object v0, v1, Lmdl;->a:Lmdm;

    .line 797
    iput p1, v1, Lmdl;->c:I

    :cond_1
    move-object v0, v1

    .line 799
    goto :goto_0
.end method

.method public c(II)V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    .line 1723
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    mul-int/lit8 v1, p2, -0x1

    invoke-static {v0, p1, v2, v1}, Lmem;->a(Ljava/util/Set;III)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lmda;->p:Ljava/util/Set;

    .line 1725
    iget-object v0, p0, Lmda;->q:Landroid/util/SparseIntArray;

    mul-int/lit8 v1, p2, -0x1

    invoke-static {v0, p1, v2, v1}, Lmem;->a(Landroid/util/SparseIntArray;III)Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lmda;->q:Landroid/util/SparseIntArray;

    .line 1728
    :cond_0
    invoke-direct {p0}, Lmda;->p()V

    .line 1729
    invoke-virtual {p0, p1, p2}, Lmda;->notifyItemRangeRemoved(II)V

    .line 1730
    return-void
.end method

.method public c(IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1608
    invoke-virtual {p0, p1}, Lmda;->b(I)Lmdt;

    move-result-object v0

    .line 1609
    if-eqz v0, :cond_2

    instance-of v1, v0, Lmdp;

    if-eqz v1, :cond_2

    .line 1610
    check-cast v0, Lmdp;

    .line 1612
    iget-boolean v1, p0, Lmda;->n:Z

    if-eqz v1, :cond_4

    .line 1614
    iget-object v1, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_2

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1615
    invoke-virtual {p0, p1}, Lmda;->d(I)Lmdm;

    move-result-object v1

    .line 1616
    if-eqz v1, :cond_0

    instance-of v2, v1, Lmdu;

    if-eqz v2, :cond_0

    .line 1617
    check-cast v1, Lmdu;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lmdu;->a(ILjava/util/List;)Lmdu;

    .line 1621
    :cond_0
    invoke-interface {v0, v4}, Lmdp;->g(Z)Ljava/lang/Object;

    .line 1624
    if-eqz p2, :cond_1

    .line 1625
    invoke-virtual {p0, p1}, Lmda;->notifyItemChanged(I)V

    .line 1629
    :cond_1
    iget-object v1, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1649
    :cond_2
    :goto_1
    return-void

    .line 1629
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1633
    :cond_4
    invoke-interface {v0}, Lmdp;->f()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1634
    invoke-virtual {p0, p1}, Lmda;->d(I)Lmdm;

    move-result-object v1

    .line 1635
    if-eqz v1, :cond_5

    instance-of v2, v1, Lmdu;

    if-eqz v2, :cond_5

    .line 1636
    check-cast v1, Lmdu;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lmdu;->a(ILjava/util/List;)Lmdu;

    .line 1640
    :cond_5
    invoke-interface {v0, v4}, Lmdp;->g(Z)Ljava/lang/Object;

    .line 1643
    if-eqz p2, :cond_2

    .line 1644
    invoke-virtual {p0, p1}, Lmda;->notifyItemChanged(I)V

    goto :goto_1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lmda;->n:Z

    return v0
.end method

.method public d(Z)Lmda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 290
    iput-boolean p1, p0, Lmda;->k:Z

    .line 291
    return-object p0
.end method

.method public d(I)Lmdm;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmdm",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 811
    if-ltz p1, :cond_0

    iget v0, p0, Lmda;->g:I

    if-lt p1, v0, :cond_1

    .line 812
    :cond_0
    const/4 v0, 0x0

    .line 816
    :goto_0
    return-object v0

    .line 814
    :cond_1
    iget-boolean v0, p0, Lmda;->r:Z

    if-eqz v0, :cond_2

    const-string v0, "FastAdapter"

    const-string v1, "getAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_2
    iget-object v0, p0, Lmda;->f:Landroid/util/SparseArray;

    iget-object v1, p0, Lmda;->f:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lmda;->a(Landroid/util/SparseArray;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdm;

    goto :goto_0
.end method

.method public d(II)V
    .locals 2

    .prologue
    .line 1740
    invoke-virtual {p0, p1}, Lmda;->k(I)V

    .line 1741
    invoke-virtual {p0, p2}, Lmda;->k(I)V

    .line 1743
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_0

    .line 1744
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1745
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1746
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1753
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lmda;->notifyItemMoved(II)V

    .line 1754
    return-void

    .line 1747
    :cond_1
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1748
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1749
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lmda;->m:Z

    return v0
.end method

.method public e(I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 858
    iget v1, p0, Lmda;->g:I

    if-nez v1, :cond_0

    .line 875
    :goto_0
    return v0

    .line 865
    :cond_0
    iget-object v1, p0, Lmda;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 866
    iget-object v0, p0, Lmda;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdm;

    .line 867
    invoke-interface {v0}, Lmdm;->c()I

    move-result v4

    if-ne v4, p1, :cond_1

    move v0, v1

    .line 868
    goto :goto_0

    .line 870
    :cond_1
    invoke-interface {v0}, Lmdm;->d()I

    move-result v0

    add-int/2addr v1, v0

    .line 865
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 875
    goto :goto_0
.end method

.method public e(Z)Lmda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 301
    iput-boolean p1, p0, Lmda;->l:Z

    .line 302
    return-object p0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lmda;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 484
    return-void
.end method

.method public e(II)V
    .locals 1

    .prologue
    .line 1782
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmda;->a(IILjava/lang/Object;)V

    .line 1783
    return-void
.end method

.method public f(I)I
    .locals 2

    .prologue
    .line 887
    iget v0, p0, Lmda;->g:I

    if-nez v0, :cond_0

    .line 888
    const/4 v0, 0x0

    .line 892
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmda;->f:Landroid/util/SparseArray;

    iget-object v1, p0, Lmda;->f:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lmda;->a(Landroid/util/SparseArray;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    goto :goto_0
.end method

.method public f(II)I
    .locals 4

    .prologue
    .line 1852
    invoke-virtual {p0, p1}, Lmda;->b(I)Lmdt;

    move-result-object v0

    .line 1853
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmdp;

    if-eqz v1, :cond_1

    .line 1854
    check-cast v0, Lmdp;

    .line 1855
    invoke-virtual {p0, p1}, Lmda;->d(I)Lmdm;

    move-result-object v2

    .line 1856
    if-eqz v2, :cond_0

    instance-of v1, v2, Lmdu;

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 1857
    check-cast v1, Lmdu;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v1, v3, p2}, Lmdu;->a(II)Lmdu;

    .line 1858
    check-cast v2, Lmdu;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lmdu;->a(ILjava/util/List;)Lmdu;

    .line 1860
    :cond_0
    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1862
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1027
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_1

    .line 1028
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    .line 1038
    :cond_0
    return-object v0

    .line 1030
    :cond_1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1032
    const/4 v1, 0x0

    invoke-virtual {p0}, Lmda;->getItemCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1033
    invoke-virtual {p0, v1}, Lmda;->b(I)Lmdt;

    move-result-object v3

    .line 1034
    invoke-interface {v3}, Lmdt;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1035
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1032
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public f(Z)Lmda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 313
    iput-boolean p1, p0, Lmda;->n:Z

    .line 314
    return-object p0
.end method

.method public g()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 1047
    invoke-virtual {p0}, Lmda;->f()Ljava/util/Set;

    move-result-object v0

    .line 1048
    new-instance v1, Landroid/util/ArraySet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 1049
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1050
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lmda;->b(I)Lmdt;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1052
    :cond_0
    return-object v1
.end method

.method public g(Z)Lmda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 325
    iput-boolean p1, p0, Lmda;->o:Z

    .line 326
    return-object p0
.end method

.method public g(I)V
    .locals 2

    .prologue
    .line 1061
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {p0, p1}, Lmda;->i(I)V

    .line 1074
    :goto_0
    return-void

    .line 1065
    :cond_0
    invoke-virtual {p0, p1}, Lmda;->h(I)V

    goto :goto_0

    .line 1068
    :cond_1
    invoke-virtual {p0, p1}, Lmda;->b(I)Lmdt;

    move-result-object v0

    invoke-interface {v0}, Lmdt;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1069
    invoke-virtual {p0, p1}, Lmda;->i(I)V

    goto :goto_0

    .line 1071
    :cond_2
    invoke-virtual {p0, p1}, Lmda;->h(I)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 847
    iget v0, p0, Lmda;->g:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 838
    invoke-virtual {p0, p1}, Lmda;->b(I)Lmdt;

    move-result-object v0

    invoke-interface {v0}, Lmdt;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 827
    invoke-virtual {p0, p1}, Lmda;->b(I)Lmdt;

    move-result-object v0

    invoke-interface {v0}, Lmdt;->b()I

    move-result v0

    return v0
.end method

.method public h(Z)Lmda;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmda",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 362
    iput-boolean p1, p0, Lmda;->m:Z

    .line 363
    return-object p0
.end method

.method public h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1219
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lmda;->b(Ljava/lang/Iterable;)V

    .line 1232
    :goto_0
    return-void

    .line 1222
    :cond_0
    invoke-static {p0}, Lmem;->a(Lmda;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 1223
    invoke-interface {v0}, Lmdt;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1224
    invoke-interface {v0, v3}, Lmdt;->i(Z)Ljava/lang/Object;

    .line 1225
    iget-object v2, p0, Lmda;->y:Lmdw;

    if-eqz v2, :cond_1

    .line 1226
    iget-object v2, p0, Lmda;->y:Lmdw;

    invoke-interface {v2, v0, v3}, Lmdw;->a(Lmdt;Z)V

    goto :goto_1

    .line 1230
    :cond_2
    invoke-virtual {p0}, Lmda;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public h(I)V
    .locals 1

    .prologue
    .line 1169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmda;->a(IZ)V

    .line 1170
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 1238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmda;->i(Z)V

    .line 1239
    return-void
.end method

.method public i(I)V
    .locals 1

    .prologue
    .line 1284
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmda;->a(ILjava/util/Iterator;)V

    .line 1285
    return-void
.end method

.method public i(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1247
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_0

    .line 1248
    invoke-virtual {p0}, Lmda;->getItemCount()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_4

    .line 1249
    invoke-virtual {p0, v0, v1, p1}, Lmda;->a(IZZ)V

    .line 1248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1252
    :cond_0
    invoke-static {p0}, Lmem;->a(Lmda;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmdt;

    .line 1253
    if-eqz p1, :cond_2

    invoke-interface {v0}, Lmdt;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1256
    :cond_2
    invoke-interface {v0, v3}, Lmdt;->i(Z)Ljava/lang/Object;

    .line 1258
    iget-object v2, p0, Lmda;->y:Lmdw;

    if-eqz v2, :cond_1

    .line 1259
    iget-object v2, p0, Lmda;->y:Lmdw;

    invoke-interface {v2, v0, v3}, Lmdw;->a(Lmdt;Z)V

    goto :goto_1

    .line 1262
    :cond_3
    invoke-virtual {p0}, Lmda;->notifyDataSetChanged()V

    .line 1264
    :cond_4
    return-void
.end method

.method public j()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 1319
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_1

    .line 1323
    invoke-virtual {p0}, Lmda;->f()Ljava/util/Set;

    move-result-object v0

    .line 1324
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1325
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1326
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1327
    invoke-virtual {p0, v3}, Lmda;->d(I)Lmdm;

    move-result-object v0

    .line 1328
    if-eqz v0, :cond_0

    instance-of v4, v0, Lmdu;

    if-eqz v4, :cond_0

    .line 1329
    invoke-virtual {p0, v3}, Lmda;->b(I)Lmdt;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1330
    check-cast v0, Lmdu;

    invoke-interface {v0, v3}, Lmdu;->d(I)Lmdu;

    .line 1334
    :goto_1
    invoke-virtual {p0}, Lmda;->f()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 1332
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1337
    :cond_1
    invoke-virtual {p0}, Lmda;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_3

    .line 1338
    invoke-virtual {p0, v1}, Lmda;->c(I)Lmdl;

    move-result-object v0

    .line 1339
    iget-object v3, v0, Lmdl;->b:Lmdt;

    invoke-interface {v3}, Lmdt;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1340
    iget-object v3, v0, Lmdl;->a:Lmdm;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lmdl;->a:Lmdm;

    instance-of v3, v3, Lmdu;

    if-eqz v3, :cond_2

    .line 1341
    iget-object v0, v0, Lmdl;->a:Lmdm;

    check-cast v0, Lmdu;

    invoke-interface {v0, v1}, Lmdu;->d(I)Lmdu;

    .line 1337
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1346
    :cond_3
    return-object v2
.end method

.method public j(I)V
    .locals 2

    .prologue
    .line 1413
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_1

    .line 1414
    iget-object v0, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1415
    invoke-virtual {p0, p1}, Lmda;->k(I)V

    .line 1427
    :goto_0
    return-void

    .line 1417
    :cond_0
    invoke-virtual {p0, p1}, Lmda;->l(I)V

    goto :goto_0

    .line 1420
    :cond_1
    invoke-virtual {p0, p1}, Lmda;->b(I)Lmdt;

    move-result-object v0

    .line 1421
    instance-of v1, v0, Lmdp;

    if-eqz v1, :cond_2

    check-cast v0, Lmdp;

    invoke-interface {v0}, Lmdp;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1422
    invoke-virtual {p0, p1}, Lmda;->k(I)V

    goto :goto_0

    .line 1424
    :cond_2
    invoke-virtual {p0, p1}, Lmda;->l(I)V

    goto :goto_0
.end method

.method public j(Z)V
    .locals 3

    .prologue
    .line 1442
    invoke-virtual {p0}, Lmda;->l()[I

    move-result-object v1

    .line 1443
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1444
    aget v2, v1, v0

    invoke-virtual {p0, v2, p1}, Lmda;->b(IZ)V

    .line 1443
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1446
    :cond_0
    return-void
.end method

.method public k()Landroid/util/SparseIntArray;
    .locals 5

    .prologue
    .line 1362
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lmda;->q:Landroid/util/SparseIntArray;

    .line 1373
    :goto_0
    return-object v0

    .line 1365
    :cond_0
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 1367
    const/4 v0, 0x0

    invoke-virtual {p0}, Lmda;->getItemCount()I

    move-result v4

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_2

    .line 1368
    invoke-virtual {p0, v3}, Lmda;->b(I)Lmdt;

    move-result-object v1

    .line 1369
    instance-of v0, v1, Lmdp;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lmdp;

    invoke-interface {v0}, Lmdp;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1370
    check-cast v1, Lmdp;

    invoke-interface {v1}, Lmdp;->j_()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1367
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 1373
    goto :goto_0
.end method

.method public k(I)V
    .locals 1

    .prologue
    .line 1455
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmda;->b(IZ)V

    .line 1456
    return-void
.end method

.method public k(Z)V
    .locals 1

    .prologue
    .line 1585
    invoke-virtual {p0}, Lmda;->getItemCount()I

    move-result v0

    .line 1586
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1587
    invoke-virtual {p0, v0}, Lmda;->l(I)V

    .line 1586
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1589
    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 1

    .prologue
    .line 1597
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmda;->c(IZ)V

    .line 1598
    return-void
.end method

.method public l()[I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1382
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1384
    new-array v0, v1, [I

    .line 1385
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1386
    iget-object v3, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v0, v2

    .line 1385
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1389
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    invoke-virtual {p0}, Lmda;->getItemCount()I

    move-result v4

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_2

    .line 1392
    invoke-virtual {p0, v1}, Lmda;->b(I)Lmdt;

    move-result-object v0

    .line 1393
    instance-of v5, v0, Lmdp;

    if-eqz v5, :cond_1

    check-cast v0, Lmdp;

    invoke-interface {v0}, Lmdp;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1398
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1399
    new-array v1, v4, [I

    .line 1400
    :goto_2
    if-ge v2, v4, :cond_3

    .line 1401
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    .line 1400
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 1404
    :cond_4
    return-object v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 1433
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmda;->j(Z)V

    .line 1434
    return-void
.end method

.method public m(I)V
    .locals 1

    .prologue
    .line 1680
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmda;->b(II)V

    .line 1681
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 1576
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmda;->k(Z)V

    .line 1577
    return-void
.end method

.method public n(I)V
    .locals 1

    .prologue
    .line 1712
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmda;->c(II)V

    .line 1713
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 1661
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_0

    .line 1662
    iget-object v0, p0, Lmda;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1663
    iget-object v0, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1665
    :cond_0
    invoke-direct {p0}, Lmda;->p()V

    .line 1666
    invoke-virtual {p0}, Lmda;->notifyDataSetChanged()V

    .line 1668
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_1

    .line 1670
    const/4 v0, 0x0

    invoke-virtual {p0}, Lmda;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lmem;->a(Lmda;II)V

    .line 1672
    :cond_1
    return-void
.end method

.method public o(I)V
    .locals 1

    .prologue
    .line 1762
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmda;->a(ILjava/lang/Object;)V

    .line 1763
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 716
    iget-boolean v0, p0, Lmda;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    const-string v1, "onAttachedToRecyclerView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 718
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    .line 636
    iget-boolean v0, p0, Lmda;->o:Z

    if-eqz v0, :cond_1

    .line 637
    iget-boolean v0, p0, Lmda;->r:Z

    if-eqz v0, :cond_0

    .line 638
    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolderLegacy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100009

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 643
    iget-object v0, p0, Lmda;->A:Lmde;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, p1, p2, v1}, Lmde;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 646
    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 657
    iget-boolean v0, p0, Lmda;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 660
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100009

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 662
    iget-object v0, p0, Lmda;->A:Lmde;

    invoke-interface {v0, p1, p2, p3}, Lmde;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 663
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 607
    iget-boolean v0, p0, Lmda;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateViewHolder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_0
    iget-object v0, p0, Lmda;->z:Lmdh;

    invoke-interface {v0, p1, p2}, Lmdh;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 612
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f100009

    invoke-virtual {v1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 615
    iget-object v1, p0, Lmda;->B:Lmeg;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v0, v2}, Lmen;->a(Lmei;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 618
    iget-object v1, p0, Lmda;->C:Lmek;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v0, v2}, Lmen;->a(Lmei;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 621
    iget-object v1, p0, Lmda;->D:Lmel;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v0, v2}, Lmen;->a(Lmei;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 623
    iget-object v1, p0, Lmda;->z:Lmdh;

    invoke-interface {v1, v0}, Lmdh;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 722
    iget-boolean v0, p0, Lmda;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    const-string v1, "onDetachedFromRecyclerView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 724
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .prologue
    .line 710
    iget-boolean v0, p0, Lmda;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailedToRecycleView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    iget-object v0, p0, Lmda;->A:Lmde;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lmde;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .prologue
    .line 696
    iget-boolean v0, p0, Lmda;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewAttachedToWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 698
    iget-object v0, p0, Lmda;->A:Lmde;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lmde;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 699
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .prologue
    .line 684
    iget-boolean v0, p0, Lmda;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewDetachedFromWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 686
    iget-object v0, p0, Lmda;->A:Lmde;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lmde;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 687
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .prologue
    .line 672
    iget-boolean v0, p0, Lmda;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewRecycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 674
    iget-object v0, p0, Lmda;->A:Lmde;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lmde;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 675
    return-void
.end method

.method public p(I)V
    .locals 2

    .prologue
    .line 1827
    iget-boolean v0, p0, Lmda;->n:Z

    if-eqz v0, :cond_2

    .line 1829
    iget-object v0, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 1830
    iget-object v0, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1831
    invoke-virtual {p0, p1, v0}, Lmda;->f(II)I

    move-result v0

    .line 1832
    if-nez v0, :cond_1

    .line 1833
    iget-object v0, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1841
    :cond_0
    :goto_0
    return-void

    .line 1835
    :cond_1
    iget-object v1, p0, Lmda;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1839
    :cond_2
    const-string v0, "FastAdapter"

    const-string v1, "please use the notifyAdapterSubItemsChanged(int position, int previousCount) method instead in the PositionBasedStateManagement mode, as we are not able to calculate the previous count "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
