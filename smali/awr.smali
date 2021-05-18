.class public Lawr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lbee;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laxd;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbac;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lbae;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lbee;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbee;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Laxh;

.field private final i:Landroid/graphics/Rect;

.field private final j:J

.field private final k:J

.field private final l:F

.field private final m:F

.field private final n:I

.field private final o:I

.field private final p:I


# direct methods
.method private constructor <init>(Landroid/graphics/Rect;JJFFIII)V
    .locals 4

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lawr;->a:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lawr;->b:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lawr;->c:Ljava/util/Map;

    .line 47
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lawr;->d:Landroid/support/v4/util/SparseArrayCompat;

    .line 48
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lawr;->e:Landroid/support/v4/util/LongSparseArray;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lawr;->f:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lawr;->g:Ljava/util/HashSet;

    .line 52
    new-instance v0, Laxh;

    invoke-direct {v0}, Laxh;-><init>()V

    iput-object v0, p0, Lawr;->h:Laxh;

    .line 65
    iput-object p1, p0, Lawr;->i:Landroid/graphics/Rect;

    .line 66
    iput-wide p2, p0, Lawr;->j:J

    .line 67
    iput-wide p4, p0, Lawr;->k:J

    .line 68
    iput p6, p0, Lawr;->l:F

    .line 69
    iput p7, p0, Lawr;->m:F

    .line 70
    iput p8, p0, Lawr;->n:I

    .line 71
    iput p9, p0, Lawr;->o:I

    .line 72
    iput p10, p0, Lawr;->p:I

    .line 73
    const/4 v0, 0x4

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lbey;->a(Lawr;III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const-string v0, "Lottie only supports bodymovin >= 4.5.0"

    invoke-virtual {p0, v0}, Lawr;->a(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Rect;JJFFIIILaws;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p10}, Lawr;-><init>(Landroid/graphics/Rect;JJFFIII)V

    return-void
.end method

.method static synthetic a(Lawr;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lawr;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lawr;)Landroid/support/v4/util/LongSparseArray;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lawr;->e:Landroid/support/v4/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic c(Lawr;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lawr;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lawr;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lawr;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lawr;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lawr;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lawr;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lawr;->d:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method


# virtual methods
.method public a(J)Lbee;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lawr;->e:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbee;

    return-object v0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lawr;->g:Ljava/util/HashSet;

    iget-object v2, p0, Lawr;->g:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 80
    const-string v0, "LOTTIE"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lawr;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lawr;->h:Laxh;

    invoke-virtual {v0, p1}, Laxh;->a(Z)V

    .line 90
    return-void
.end method

.method public b()Laxh;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lawr;->h:Laxh;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lawr;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public c()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lawr;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method public d()J
    .locals 4

    .prologue
    .line 106
    iget-wide v0, p0, Lawr;->k:J

    iget-wide v2, p0, Lawr;->j:J

    sub-long/2addr v0, v2

    .line 107
    long-to-float v0, v0

    iget v1, p0, Lawr;->l:F

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public e()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 112
    iget v0, p0, Lawr;->n:I

    return v0
.end method

.method public f()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 117
    iget v0, p0, Lawr;->o:I

    return v0
.end method

.method public g()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 122
    iget v0, p0, Lawr;->p:I

    return v0
.end method

.method public h()J
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 127
    iget-wide v0, p0, Lawr;->j:J

    return-wide v0
.end method

.method public i()J
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 132
    iget-wide v0, p0, Lawr;->k:J

    return-wide v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lawr;->f:Ljava/util/List;

    return-object v0
.end method

.method public k()Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lbae;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lawr;->d:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method public l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbac;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lawr;->c:Ljava/util/Map;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lawr;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method n()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laxd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lawr;->b:Ljava/util/Map;

    return-object v0
.end method

.method public o()F
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lawr;->d()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lawr;->l:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public p()F
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lawr;->m:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "LottieComposition:\n"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lawr;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbee;

    .line 173
    const-string v3, "\t"

    invoke-virtual {v0, v3}, Lbee;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
