.class public Lclc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcld;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:I

.field private c:I

.field private d:[Ljava/lang/Object;

.field private e:I

.field private f:Lcld;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private g:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lclc;->a:I

    return-void
.end method

.method private constructor <init>(ILcld;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-gtz p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object Pool must be instantiated with a capacity greater than 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput p1, p0, Lclc;->c:I

    .line 59
    iget v0, p0, Lclc;->c:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lclc;->d:[Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lclc;->e:I

    .line 61
    iput-object p2, p0, Lclc;->f:Lcld;

    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lclc;->g:F

    .line 63
    invoke-direct {p0}, Lclc;->f()V

    .line 64
    return-void
.end method

.method public static declared-synchronized a(ILcld;)Lclc;
    .locals 3

    .prologue
    .line 47
    const-class v1, Lclc;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lclc;

    invoke-direct {v0, p0, p1}, Lclc;-><init>(ILcld;)V

    .line 48
    sget v2, Lclc;->a:I

    iput v2, v0, Lclc;->b:I

    .line 49
    sget v2, Lclc;->a:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lclc;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(F)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 92
    iget v1, p0, Lclc;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 94
    if-ge v1, v0, :cond_0

    .line 100
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 101
    iget-object v2, p0, Lclc;->d:[Ljava/lang/Object;

    iget-object v3, p0, Lclc;->f:Lcld;

    invoke-virtual {v3}, Lcld;->b()Lcld;

    move-result-object v3

    aput-object v3, v2, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_0
    iget v0, p0, Lclc;->c:I

    if-le v1, v0, :cond_2

    .line 97
    iget v0, p0, Lclc;->c:I

    goto :goto_0

    .line 103
    :cond_1
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lclc;->e:I

    .line 104
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lclc;->g:F

    invoke-direct {p0, v0}, Lclc;->b(F)V

    .line 89
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 180
    iget v1, p0, Lclc;->c:I

    .line 181
    iget v0, p0, Lclc;->c:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lclc;->c:I

    .line 182
    iget v0, p0, Lclc;->c:I

    new-array v2, v0, [Ljava/lang/Object;

    .line 183
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 184
    iget-object v3, p0, Lclc;->d:[Ljava/lang/Object;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    iput-object v2, p0, Lclc;->d:[Ljava/lang/Object;

    .line 187
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lclc;->b:I

    return v0
.end method

.method public a(F)V
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 73
    .line 74
    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    move p1, v0

    .line 80
    :cond_0
    :goto_0
    iput p1, p0, Lclc;->g:F

    .line 81
    return-void

    .line 77
    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    move p1, v1

    .line 78
    goto :goto_0
.end method

.method public declared-synchronized a(Lcld;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcld;->s:I

    sget v1, Lcld;->r:I

    if-eq v0, v1, :cond_1

    .line 134
    iget v0, p1, Lcld;->s:I

    iget v1, p0, Lclc;->b:I

    if-ne v0, v1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The object passed is already stored in this pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 137
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The object to recycle already belongs to poolId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcld;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  Object cannot belong to two different pool instances simultaneously!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    iget v0, p0, Lclc;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lclc;->e:I

    .line 142
    iget v0, p0, Lclc;->e:I

    iget-object v1, p0, Lclc;->d:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 143
    invoke-direct {p0}, Lclc;->g()V

    .line 146
    :cond_2
    iget v0, p0, Lclc;->b:I

    iput v0, p1, Lcld;->s:I

    .line 147
    iget-object v0, p0, Lclc;->d:[Ljava/lang/Object;

    iget v1, p0, Lclc;->e:I

    aput-object p1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 158
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lclc;->e:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lclc;->c:I

    if-le v0, v1, :cond_0

    .line 159
    invoke-direct {p0}, Lclc;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 161
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 164
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 165
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcld;

    .line 166
    iget v3, v0, Lcld;->s:I

    sget v4, Lcld;->r:I

    if-eq v3, v4, :cond_2

    .line 167
    iget v1, v0, Lcld;->s:I

    iget v2, p0, Lclc;->b:I

    if-ne v1, v2, :cond_1

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The object passed is already stored in this pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The object to recycle already belongs to poolId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcld;->s:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".  Object cannot belong to two different pool instances simultaneously!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_2
    iget v3, p0, Lclc;->b:I

    iput v3, v0, Lcld;->s:I

    .line 174
    iget-object v3, p0, Lclc;->d:[Ljava/lang/Object;

    iget v4, p0, Lclc;->e:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    aput-object v0, v3, v4

    .line 164
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 176
    :cond_3
    iget v0, p0, Lclc;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lclc;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    monitor-exit p0

    return-void
.end method

.method public b()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lclc;->g:F

    return v0
.end method

.method public declared-synchronized c()Lcld;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lclc;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lclc;->g:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lclc;->f()V

    .line 119
    :cond_0
    iget-object v0, p0, Lclc;->d:[Ljava/lang/Object;

    iget v1, p0, Lclc;->e:I

    aget-object v0, v0, v1

    check-cast v0, Lcld;

    .line 120
    sget v1, Lcld;->r:I

    iput v1, v0, Lcld;->s:I

    .line 121
    iget v1, p0, Lclc;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lclc;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lclc;->d:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lclc;->e:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
