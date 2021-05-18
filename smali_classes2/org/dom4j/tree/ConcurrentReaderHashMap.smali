.class Lorg/dom4j/tree/ConcurrentReaderHashMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# static fields
.field public static DEFAULT_INITIAL_CAPACITY:I = 0x0

.field public static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4


# instance fields
.field protected final barrierLock:Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;

.field protected transient count:I

.field protected transient entrySet:Ljava/util/Set;

.field protected transient keySet:Ljava/util/Set;

.field protected transient lastWrite:Ljava/lang/Object;

.field protected loadFactor:F

.field protected transient table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

.field protected threshold:I

.field protected transient values:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    const/16 v0, 0x20

    sput v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->DEFAULT_INITIAL_CAPACITY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 339
    sget v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->DEFAULT_INITIAL_CAPACITY:I

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>(IF)V

    .line 340
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 330
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>(IF)V

    .line 331
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 309
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 180
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;

    invoke-direct {v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->barrierLock:Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;

    .line 824
    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->keySet:Ljava/util/Set;

    .line 826
    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->entrySet:Ljava/util/Set;

    .line 828
    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->values:Ljava/util/Collection;

    .line 310
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    iput p2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->loadFactor:F

    .line 315
    invoke-direct {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->p2capacity(I)I

    move-result v0

    .line 317
    new-array v1, v0, [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 318
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    .line 319
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f400000    # 0.75f

    .line 349
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>(IF)V

    .line 351
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->putAll(Ljava/util/Map;)V

    .line 352
    return-void
.end method

.method private static hash(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 284
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 288
    shl-int/lit8 v1, v0, 0x7

    sub-int/2addr v1, v0

    ushr-int/lit8 v2, v0, 0x9

    add-int/2addr v1, v2

    ushr-int/lit8 v0, v0, 0x11

    add-int/2addr v0, v1

    return v0
.end method

.method private p2capacity(I)I
    .locals 1

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    .line 264
    .line 268
    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 275
    :cond_0
    return v0

    .line 271
    :cond_1
    const/4 v0, 0x4

    .line 272
    :goto_0
    if-ge v0, p1, :cond_0

    .line 273
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .prologue
    .line 1222
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1225
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1226
    new-array v0, v0, [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 1229
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 1232
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1233
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1234
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1235
    invoke-virtual {p0, v2, v3}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1237
    :cond_0
    monitor-exit p0

    return-void

    .line 1222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .prologue
    .line 1195
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1198
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1201
    iget v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1204
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1205
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    aget-object v0, v0, v1

    .line 1207
    :goto_1
    if-eqz v0, :cond_0

    .line 1208
    iget-object v2, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1209
    iget-object v2, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1210
    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1204
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1213
    :cond_1
    monitor-exit p0

    return-void

    .line 1195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized capacity()I
    .locals 1

    .prologue
    .line 1244
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 775
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move v1, v0

    .line 776
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 780
    aget-object v0, v2, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 781
    const/4 v3, 0x0

    iput-object v3, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 780
    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    goto :goto_1

    .line 783
    :cond_0
    const/4 v0, 0x0

    aput-object v0, v2, v1

    .line 776
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 785
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    .line 786
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    monitor-exit p0

    return-void

    .line 775
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 798
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;

    .line 800
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->keySet:Ljava/util/Set;

    .line 801
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->entrySet:Ljava/util/Set;

    .line 802
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->values:Ljava/util/Collection;

    .line 804
    iget-object v6, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 805
    array-length v1, v6

    new-array v1, v1, [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iput-object v1, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 806
    iget-object v7, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 808
    const/4 v1, 0x0

    move v5, v1

    :goto_0
    array-length v1, v6

    if-ge v5, v1, :cond_1

    .line 810
    aget-object v1, v6, v5

    move-object v2, v3

    :goto_1
    if-eqz v1, :cond_0

    .line 811
    new-instance v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget v8, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    iget-object v9, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v10, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    invoke-direct {v4, v8, v9, v10, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    .line 810
    iget-object v1, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-object v2, v4

    goto :goto_1

    .line 812
    :cond_0
    aput-object v2, v7, v5
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 816
    :catch_0
    move-exception v0

    .line 818
    :try_start_1
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 815
    :cond_1
    monitor-exit p0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 707
    if-nez p1, :cond_0

    .line 708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 710
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->getTableForReading()[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-result-object v3

    move v0, v1

    .line 712
    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_1

    .line 713
    aget-object v2, v3, v0

    :goto_1
    if-eqz v2, :cond_3

    .line 714
    iget-object v4, v2, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 715
    const/4 v1, 0x1

    .line 718
    :cond_1
    return v1

    .line 713
    :cond_2
    iget-object v2, v2, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    goto :goto_1

    .line 712
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 991
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$ValueIterator;

    invoke-direct {v0, p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$ValueIterator;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 920
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->entrySet:Ljava/util/Set;

    .line 921
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;Lorg/dom4j/tree/ConcurrentReaderHashMap$1;)V

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method protected eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 295
    if-eq p1, p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized findAndRemoveEntry(Ljava/util/Map$Entry;)Z
    .locals 3

    .prologue
    .line 957
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 958
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 959
    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    const/4 v0, 0x1

    .line 963
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 957
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 388
    invoke-static {p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->hash(Ljava/lang/Object;)I

    move-result v5

    .line 398
    iget-object v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 399
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    and-int v1, v5, v0

    .line 400
    aget-object v0, v2, v1

    move-object v3, v2

    move v2, v1

    move-object v1, v0

    .line 404
    :goto_0
    if-nez v0, :cond_2

    .line 409
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->getTableForReading()[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-result-object v4

    .line 410
    if-ne v3, v4, :cond_1

    aget-object v0, v3, v2

    if-ne v1, v0, :cond_1

    .line 411
    const/4 v0, 0x0

    .line 421
    :cond_0
    return-object v0

    .line 415
    :cond_1
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    and-int v1, v5, v0

    aget-object v0, v4, v1

    move v2, v1

    move-object v3, v4

    move-object v1, v0

    .line 418
    goto :goto_0

    :cond_2
    iget v4, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    if-ne v4, v5, :cond_3

    iget-object v4, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 419
    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 420
    if-nez v0, :cond_0

    .line 429
    monitor-enter p0

    .line 430
    :try_start_0
    iget-object v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 431
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    and-int v1, v5, v0

    aget-object v0, v2, v1

    move-object v3, v2

    move v2, v1

    move-object v1, v0

    .line 434
    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 435
    :cond_3
    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    goto :goto_0
.end method

.method protected final getTableForReading()[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .locals 2

    .prologue
    .line 203
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->barrierLock:Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    monitor-exit v1

    return-object v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->keySet:Ljava/util/Set;

    .line 844
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$KeySet;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;Lorg/dom4j/tree/ConcurrentReaderHashMap$1;)V

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 976
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$KeyIterator;

    invoke-direct {v0, p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$KeyIterator;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V

    return-object v0
.end method

.method public loadFactor()F
    .locals 1

    .prologue
    .line 1251
    iget v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->loadFactor:F

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 472
    if-nez p2, :cond_0

    .line 473
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 475
    :cond_0
    invoke-static {p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->hash(Ljava/lang/Object;)I

    move-result v3

    .line 476
    iget-object v4, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 477
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    and-int v5, v3, v0

    .line 478
    aget-object v2, v4, v5

    move-object v1, v2

    .line 481
    :goto_0
    if-eqz v1, :cond_1

    .line 482
    iget v0, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    if-ne v0, v3, :cond_2

    iget-object v0, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 485
    :cond_1
    monitor-enter p0

    .line 486
    :try_start_0
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    if-ne v4, v0, :cond_5

    .line 487
    if-nez v1, :cond_4

    .line 489
    aget-object v0, v4, v5

    if-ne v2, v0, :cond_5

    .line 491
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    invoke-direct {v0, v3, p1, p2, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    .line 492
    aput-object v0, v4, v5

    .line 493
    iget v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    iget v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    if-lt v1, v2, :cond_3

    .line 494
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->rehash()V

    .line 497
    :goto_1
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :goto_2
    return-object v0

    .line 481
    :cond_2
    iget-object v0, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-object v1, v0

    goto :goto_0

    .line 496
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V

    goto :goto_1

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 500
    :cond_4
    :try_start_2
    iget-object v0, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 501
    aget-object v4, v4, v5

    if-ne v2, v4, :cond_5

    if-eqz v0, :cond_5

    .line 502
    iput-object p2, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 503
    monitor-exit p0

    goto :goto_2

    .line 509
    :cond_5
    invoke-virtual {p0, p1, p2, v3}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->sput(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 753
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 754
    if-nez v0, :cond_1

    .line 769
    :cond_0
    monitor-exit p0

    return-void

    .line 760
    :cond_1
    :goto_0
    :try_start_1
    iget v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    if-lt v0, v1, :cond_2

    .line 761
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->rehash()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 753
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 763
    :cond_2
    :try_start_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 765
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 766
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 767
    invoke-virtual {p0, v2, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected final recordModification(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->barrierLock:Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;

    monitor-enter v1

    .line 194
    :try_start_0
    iput-object p1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->lastWrite:Ljava/lang/Object;

    .line 195
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected rehash()V
    .locals 13

    .prologue
    .line 548
    iget-object v6, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 549
    array-length v7, v6

    .line 550
    const/high16 v0, 0x40000000    # 2.0f

    if-lt v7, v0, :cond_0

    .line 551
    const v0, 0x7fffffff

    iput v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    .line 610
    :goto_0
    return-void

    .line 555
    :cond_0
    shl-int/lit8 v0, v7, 0x1

    .line 556
    add-int/lit8 v8, v0, -0x1

    .line 557
    int-to-float v1, v0

    iget v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    .line 559
    new-array v9, v0, [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 572
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v7, :cond_4

    .line 575
    aget-object v4, v6, v5

    .line 577
    if-eqz v4, :cond_1

    .line 578
    iget v0, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    and-int v1, v0, v8

    .line 579
    iget-object v2, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 582
    if-nez v2, :cond_2

    .line 583
    aput-object v4, v9, v1

    .line 572
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 589
    :goto_2
    if-eqz v2, :cond_3

    .line 590
    iget v0, v2, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    and-int/2addr v0, v8

    .line 591
    if-eq v0, v1, :cond_5

    move-object v1, v2

    .line 589
    :goto_3
    iget-object v2, v2, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-object v3, v1

    move v1, v0

    goto :goto_2

    .line 596
    :cond_3
    aput-object v3, v9, v1

    move-object v0, v4

    .line 599
    :goto_4
    if-eq v0, v3, :cond_1

    .line 600
    iget v1, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    and-int/2addr v1, v8

    .line 601
    new-instance v2, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget v4, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    iget-object v10, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v11, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    aget-object v12, v9, v1

    invoke-direct {v2, v4, v10, v11, v12}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    aput-object v2, v9, v1

    .line 599
    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    goto :goto_4

    .line 608
    :cond_4
    iput-object v9, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 609
    invoke-virtual {p0, v9}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move v0, v1

    move-object v1, v3

    goto :goto_3
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 631
    invoke-static {p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->hash(Ljava/lang/Object;)I

    move-result v3

    .line 632
    iget-object v5, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 633
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    and-int v6, v3, v1

    .line 634
    aget-object v1, v5, v6

    move-object v4, v1

    .line 637
    :goto_0
    if-eqz v4, :cond_0

    .line 638
    iget v2, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    if-ne v2, v3, :cond_1

    iget-object v2, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 641
    :cond_0
    monitor-enter p0

    .line 642
    :try_start_0
    iget-object v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    if-ne v5, v2, :cond_4

    .line 643
    if-nez v4, :cond_2

    .line 644
    aget-object v2, v5, v6

    if-ne v1, v2, :cond_4

    .line 645
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    :goto_1
    return-object v0

    .line 637
    :cond_1
    iget-object v2, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-object v4, v2

    goto :goto_0

    .line 647
    :cond_2
    :try_start_1
    iget-object v0, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 648
    aget-object v2, v5, v6

    if-ne v1, v2, :cond_4

    if-eqz v0, :cond_4

    .line 649
    const/4 v2, 0x0

    iput-object v2, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 650
    iget v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    .line 652
    iget-object v2, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 653
    :goto_2
    if-eq v1, v4, :cond_3

    .line 654
    new-instance v3, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget v7, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    iget-object v8, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v9, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    invoke-direct {v3, v7, v8, v9, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    .line 653
    iget-object v1, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-object v2, v3

    goto :goto_2

    .line 656
    :cond_3
    aput-object v2, v5, v6

    .line 657
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V

    .line 658
    monitor-exit p0

    goto :goto_1

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 664
    :cond_4
    :try_start_2
    invoke-virtual {p0, p1, v3}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->sremove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sput(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 519
    iget-object v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 520
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    and-int v3, p3, v0

    .line 521
    aget-object v0, v2, v3

    move-object v1, v0

    .line 525
    :goto_0
    if-nez v1, :cond_1

    .line 526
    new-instance v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    invoke-direct {v1, p3, p1, p2, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    .line 527
    aput-object v1, v2, v3

    .line 528
    iget v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    iget v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    if-lt v0, v2, :cond_0

    .line 529
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->rehash()V

    .line 532
    :goto_1
    const/4 v0, 0x0

    .line 536
    :goto_2
    return-object v0

    .line 531
    :cond_0
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V

    goto :goto_1

    .line 533
    :cond_1
    iget v4, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    if-ne v4, p3, :cond_2

    iget-object v4, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 534
    iget-object v0, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 535
    iput-object p2, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_2

    .line 538
    :cond_2
    iget-object v1, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    goto :goto_0
.end method

.method protected sremove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 674
    iget-object v5, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 675
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    and-int v6, p2, v0

    .line 676
    aget-object v2, v5, v6

    move-object v4, v2

    .line 678
    :goto_0
    if-eqz v4, :cond_2

    .line 679
    iget v0, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    if-ne v0, p2, :cond_1

    iget-object v0, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 681
    iput-object v1, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 682
    iget v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    .line 683
    iget-object v1, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .line 684
    :goto_1
    if-eq v1, v4, :cond_0

    .line 685
    new-instance v3, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget v7, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    iget-object v8, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v9, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    invoke-direct {v3, v7, v8, v9, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    .line 684
    iget-object v1, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-object v2, v3

    goto :goto_1

    .line 687
    :cond_0
    aput-object v2, v5, v6

    .line 688
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V

    .line 692
    :goto_2
    return-object v0

    .line 678
    :cond_1
    iget-object v0, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-object v4, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 692
    goto :goto_2
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->values:Ljava/util/Collection;

    .line 884
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Values;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;Lorg/dom4j/tree/ConcurrentReaderHashMap$1;)V

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
