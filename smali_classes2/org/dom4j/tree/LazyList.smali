.class public Lorg/dom4j/tree/LazyList;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSequentialList",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field protected final transient header:Lorg/dom4j/tree/LazyList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/dom4j/tree/LazyList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field protected transient indexedList:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lorg/dom4j/tree/LazyList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/dom4j/tree/LazyList;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    .line 15
    iput-object v1, p0, Lorg/dom4j/tree/LazyList;->indexedList:[Ljava/lang/Object;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/tree/LazyList;->size:I

    .line 20
    new-instance v0, Lorg/dom4j/tree/LazyList$Entry;

    invoke-direct {v0, v1, v1, v1}, Lorg/dom4j/tree/LazyList$Entry;-><init>(Ljava/lang/Object;Lorg/dom4j/tree/LazyList$Entry;Lorg/dom4j/tree/LazyList$Entry;)V

    iput-object v0, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    .line 21
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v1, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v1, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 22
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v1, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v1, v0, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    .line 23
    return-void
.end method

.method protected constructor <init>(Lorg/dom4j/tree/LazyList$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/tree/LazyList$Entry",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/LazyList;->indexedList:[Ljava/lang/Object;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/tree/LazyList;->size:I

    .line 26
    iput-object p1, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    .line 27
    return-void
.end method

.method static synthetic access$100(Lorg/dom4j/tree/LazyList;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lorg/dom4j/tree/LazyList;->modCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/dom4j/tree/LazyList;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lorg/dom4j/tree/LazyList;->modCount:I

    return v0
.end method

.method private getRange(II)Lorg/dom4j/tree/LazyList$Range;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/dom4j/tree/LazyList$Range",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 215
    if-ltz p1, :cond_0

    iget v1, p0, Lorg/dom4j/tree/LazyList;->size:I

    if-gt p2, v1, :cond_0

    if-le p1, p2, :cond_1

    .line 216
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "FromIndex: {0}, ToIndex: {1}, Size: {2}"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    iget v0, p0, Lorg/dom4j/tree/LazyList;->size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_1
    new-array v2, v3, [I

    aput p1, v2, v0

    sub-int v1, p2, p1

    aput v1, v2, v5

    iget v1, p0, Lorg/dom4j/tree/LazyList;->size:I

    sub-int/2addr v1, p2

    aput v1, v2, v6

    .line 222
    new-instance v3, Lorg/dom4j/tree/LazyList$Range;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lorg/dom4j/tree/LazyList$Range;-><init>(Lorg/dom4j/tree/LazyList$1;)V

    .line 223
    aget v1, v2, v0

    aget v4, v2, v6

    if-ge v1, v4, :cond_4

    .line 224
    iget-object v1, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v1, v3, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    .line 225
    :goto_0
    if-gt v0, p1, :cond_2

    .line 226
    iget-object v1, v3, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v1, v1, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v1, v3, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_2
    aget v0, v2, v5

    aget v1, v2, v6

    if-ge v0, v1, :cond_3

    .line 229
    iget-object v0, v3, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v0, v3, Lorg/dom4j/tree/LazyList$Range;->upper:Lorg/dom4j/tree/LazyList$Entry;

    .line 230
    :goto_1
    if-gt p1, p2, :cond_7

    .line 231
    iget-object v0, v3, Lorg/dom4j/tree/LazyList$Range;->upper:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v0, v3, Lorg/dom4j/tree/LazyList$Range;->upper:Lorg/dom4j/tree/LazyList$Entry;

    .line 230
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 234
    :cond_3
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v0, v3, Lorg/dom4j/tree/LazyList$Range;->upper:Lorg/dom4j/tree/LazyList$Entry;

    .line 235
    iget v0, p0, Lorg/dom4j/tree/LazyList;->size:I

    :goto_2
    if-le v0, p2, :cond_7

    .line 236
    iget-object v1, v3, Lorg/dom4j/tree/LazyList$Range;->upper:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v1, v1, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v1, v3, Lorg/dom4j/tree/LazyList$Range;->upper:Lorg/dom4j/tree/LazyList$Entry;

    .line 235
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 240
    :cond_4
    iget-object v1, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v1, v3, Lorg/dom4j/tree/LazyList$Range;->upper:Lorg/dom4j/tree/LazyList$Entry;

    .line 241
    iget v1, p0, Lorg/dom4j/tree/LazyList;->size:I

    :goto_3
    if-le v1, p2, :cond_5

    .line 242
    iget-object v4, v3, Lorg/dom4j/tree/LazyList$Range;->upper:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v4, v4, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v4, v3, Lorg/dom4j/tree/LazyList$Range;->upper:Lorg/dom4j/tree/LazyList$Entry;

    .line 241
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 244
    :cond_5
    aget v1, v2, v0

    aget v2, v2, v5

    if-ge v1, v2, :cond_6

    .line 245
    iget-object v1, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v1, v3, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    .line 246
    :goto_4
    if-gt v0, p1, :cond_7

    .line 247
    iget-object v1, v3, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v1, v1, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v1, v3, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 250
    :cond_6
    iget-object v0, v3, Lorg/dom4j/tree/LazyList$Range;->upper:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v0, v3, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    .line 251
    :goto_5
    if-le p2, p1, :cond_7

    .line 252
    iget-object v0, v3, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v0, v3, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    .line 251
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    .line 256
    :cond_7
    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 290
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 291
    const-class v0, Lorg/dom4j/tree/LazyList;

    const-string v1, "header"

    new-instance v2, Lorg/dom4j/tree/LazyList$Entry;

    invoke-direct {v2, v3, v3, v3}, Lorg/dom4j/tree/LazyList$Entry;-><init>(Ljava/lang/Object;Lorg/dom4j/tree/LazyList$Entry;Lorg/dom4j/tree/LazyList$Entry;)V

    invoke-static {v0, p0, v1, v2}, Lorg/dom4j/tree/CloneHelper;->setFinalField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    sget-boolean v0, Lorg/dom4j/tree/LazyList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v1, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v2, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v2, v1, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v2, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 296
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 297
    new-array v0, v2, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 298
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 299
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 300
    iget-object v4, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    invoke-virtual {p0, v3, v4}, Lorg/dom4j/tree/LazyList;->addElement(Ljava/lang/Object;Lorg/dom4j/tree/LazyList$Entry;)Lorg/dom4j/tree/LazyList$Entry;

    .line 301
    aput-object v3, v0, v1

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_1
    iput-object v0, p0, Lorg/dom4j/tree/LazyList;->indexedList:[Ljava/lang/Object;

    .line 304
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 280
    iget v0, p0, Lorg/dom4j/tree/LazyList;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 281
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    :goto_0
    iget-object v1, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    if-eq v0, v1, :cond_0

    .line 282
    iget-object v1, v0, Lorg/dom4j/tree/LazyList$Entry;->element:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 281
    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget v0, p0, Lorg/dom4j/tree/LazyList;->size:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    :goto_0
    invoke-virtual {p0, p2, v0}, Lorg/dom4j/tree/LazyList;->addElement(Ljava/lang/Object;Lorg/dom4j/tree/LazyList$Entry;)Lorg/dom4j/tree/LazyList$Entry;

    .line 38
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/LazyList;->getEntry(I)Lorg/dom4j/tree/LazyList$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/tree/LazyList;->addElement(Ljava/lang/Object;Lorg/dom4j/tree/LazyList$Entry;)Lorg/dom4j/tree/LazyList$Entry;

    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 47
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    .line 50
    :cond_0
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/LazyList;->getEntryHeader(I)Lorg/dom4j/tree/LazyList$Entry;

    move-result-object v0

    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 51
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 52
    invoke-virtual {p0, v2, v0}, Lorg/dom4j/tree/LazyList;->addElement(Ljava/lang/Object;Lorg/dom4j/tree/LazyList$Entry;)Lorg/dom4j/tree/LazyList$Entry;

    goto :goto_1

    .line 54
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/dom4j/tree/LazyList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected addElement(Ljava/lang/Object;Lorg/dom4j/tree/LazyList$Entry;)Lorg/dom4j/tree/LazyList$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/dom4j/tree/LazyList$Entry",
            "<TE;>;)",
            "Lorg/dom4j/tree/LazyList$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/LazyList;->indexedList:[Ljava/lang/Object;

    .line 161
    new-instance v0, Lorg/dom4j/tree/LazyList$Entry;

    iget-object v1, p2, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    invoke-direct {v0, p1, p2, v1}, Lorg/dom4j/tree/LazyList$Entry;-><init>(Ljava/lang/Object;Lorg/dom4j/tree/LazyList$Entry;Lorg/dom4j/tree/LazyList$Entry;)V

    .line 162
    iget-object v1, v0, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v0, v1, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 163
    iget-object v1, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v0, v1, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    .line 164
    iget v1, p0, Lorg/dom4j/tree/LazyList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/dom4j/tree/LazyList;->size:I

    .line 165
    iget v1, p0, Lorg/dom4j/tree/LazyList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/dom4j/tree/LazyList;->modCount:I

    .line 166
    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lorg/dom4j/tree/LazyList;->indexedList:[Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/tree/LazyList;->size:I

    .line 62
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v1, v0, Lorg/dom4j/tree/LazyList$Entry;->element:Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v1, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v1, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 64
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v1, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v1, v0, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    .line 65
    iget v0, p0, Lorg/dom4j/tree/LazyList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/tree/LazyList;->modCount:I

    .line 66
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lorg/dom4j/tree/LazyList;->clone()Lorg/dom4j/tree/LazyList;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/dom4j/tree/LazyList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/dom4j/tree/LazyList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v1, Lorg/dom4j/tree/LazyList;

    invoke-direct {v1}, Lorg/dom4j/tree/LazyList;-><init>()V

    .line 132
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    :goto_0
    iget-object v2, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    if-eq v0, v2, :cond_0

    .line 133
    iget-object v2, v0, Lorg/dom4j/tree/LazyList$Entry;->element:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/dom4j/tree/LazyList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    goto :goto_0

    .line 136
    :cond_0
    return-object v1
.end method

.method protected createIndexedList()V
    .locals 5

    .prologue
    .line 141
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->indexedList:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 142
    iget v0, p0, Lorg/dom4j/tree/LazyList;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/dom4j/tree/LazyList;->indexedList:[Ljava/lang/Object;

    .line 143
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0}, Lorg/dom4j/tree/LazyList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 145
    iget-object v4, p0, Lorg/dom4j/tree/LazyList;->indexedList:[Ljava/lang/Object;

    add-int/lit8 v1, v0, 0x1

    aput-object v3, v4, v0

    move v0, v1

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/dom4j/tree/LazyList;->createIndexedList()V

    .line 71
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->indexedList:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getEntry(I)Lorg/dom4j/tree/LazyList$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/dom4j/tree/LazyList$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 173
    if-ltz p1, :cond_0

    iget v1, p0, Lorg/dom4j/tree/LazyList;->size:I

    if-lt p1, v1, :cond_1

    .line 174
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Index: {0}, Size: {1}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget v4, p0, Lorg/dom4j/tree/LazyList;->size:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_1
    if-nez p1, :cond_3

    .line 177
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 190
    :cond_2
    return-object v0

    .line 180
    :cond_3
    iget-object v1, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    .line 181
    iget v2, p0, Lorg/dom4j/tree/LazyList;->size:I

    shr-int/lit8 v2, v2, 0x1

    if-ge p1, v2, :cond_4

    move v5, v0

    move-object v0, v1

    move v1, v5

    .line 182
    :goto_0
    if-gt v1, p1, :cond_2

    .line 183
    iget-object v2, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 182
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 186
    :cond_4
    iget v0, p0, Lorg/dom4j/tree/LazyList;->size:I

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_1
    if-le v1, p1, :cond_2

    .line 187
    iget-object v2, v0, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    .line 186
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1
.end method

.method protected getEntryHeader(I)Lorg/dom4j/tree/LazyList$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/dom4j/tree/LazyList$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 194
    if-ltz p1, :cond_0

    iget v1, p0, Lorg/dom4j/tree/LazyList;->size:I

    if-le p1, v1, :cond_1

    .line 195
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Index: {0}, Size: {1}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget v4, p0, Lorg/dom4j/tree/LazyList;->size:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_1
    if-nez p1, :cond_3

    .line 198
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 211
    :cond_2
    return-object v0

    .line 201
    :cond_3
    iget-object v1, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    .line 202
    iget v2, p0, Lorg/dom4j/tree/LazyList;->size:I

    shr-int/lit8 v2, v2, 0x1

    if-ge p1, v2, :cond_4

    move v5, v0

    move-object v0, v1

    move v1, v5

    .line 203
    :goto_0
    if-ge v1, p1, :cond_2

    .line 204
    iget-object v2, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 203
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 207
    :cond_4
    iget v0, p0, Lorg/dom4j/tree/LazyList;->size:I

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_1
    if-le v1, p1, :cond_2

    .line 208
    iget-object v2, v0, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    .line 207
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lorg/dom4j/tree/LazyList$LazyListIterator;

    invoke-direct {v0, p0, p1}, Lorg/dom4j/tree/LazyList$LazyListIterator;-><init>(Lorg/dom4j/tree/LazyList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/LazyList;->getEntry(I)Lorg/dom4j/tree/LazyList$Entry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/LazyList;->removeEntry(Lorg/dom4j/tree/LazyList$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected removeEntry(Lorg/dom4j/tree/LazyList$Entry;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/tree/LazyList$Entry",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    if-ne p1, v0, :cond_0

    .line 261
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 264
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/LazyList;->indexedList:[Ljava/lang/Object;

    .line 266
    iget-object v0, p1, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v1, p1, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v1, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 267
    iget-object v0, p1, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v1, p1, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v1, v0, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    .line 268
    iget v0, p0, Lorg/dom4j/tree/LazyList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/dom4j/tree/LazyList;->size:I

    .line 269
    iget v0, p0, Lorg/dom4j/tree/LazyList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/tree/LazyList;->modCount:I

    .line 270
    iget-object v0, p1, Lorg/dom4j/tree/LazyList$Entry;->element:Ljava/lang/Object;

    return-object v0
.end method

.method protected removeRange(II)V
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/LazyList;->getRange(II)Lorg/dom4j/tree/LazyList$Range;

    move-result-object v0

    .line 88
    iget-object v1, v0, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v1, v1, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v2, v0, Lorg/dom4j/tree/LazyList$Range;->upper:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v2, v1, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 89
    iget-object v1, v0, Lorg/dom4j/tree/LazyList$Range;->upper:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v0, v1, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    .line 90
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/LazyList;->getEntry(I)Lorg/dom4j/tree/LazyList$Entry;

    move-result-object v0

    .line 95
    iget-object v1, v0, Lorg/dom4j/tree/LazyList$Entry;->element:Ljava/lang/Object;

    .line 96
    iput-object p2, v0, Lorg/dom4j/tree/LazyList$Entry;->element:Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->indexedList:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/dom4j/tree/LazyList;->indexedList:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 100
    :cond_0
    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/dom4j/tree/LazyList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 106
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/LazyList;->getRange(II)Lorg/dom4j/tree/LazyList$Range;

    move-result-object v2

    .line 107
    new-instance v1, Lorg/dom4j/tree/LazyList$Entry;

    iget-object v0, v2, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v3, v2, Lorg/dom4j/tree/LazyList$Range;->upper:Lorg/dom4j/tree/LazyList$Entry;

    invoke-direct {v1, v5, v0, v3}, Lorg/dom4j/tree/LazyList$Entry;-><init>(Ljava/lang/Object;Lorg/dom4j/tree/LazyList$Entry;Lorg/dom4j/tree/LazyList$Entry;)V

    move-object v0, v1

    .line 109
    :goto_0
    iget-object v3, v2, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v4, v2, Lorg/dom4j/tree/LazyList$Range;->upper:Lorg/dom4j/tree/LazyList$Entry;

    if-eq v3, v4, :cond_0

    .line 110
    new-instance v3, Lorg/dom4j/tree/LazyList$Entry;

    iget-object v4, v2, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v4, v4, Lorg/dom4j/tree/LazyList$Entry;->element:Ljava/lang/Object;

    invoke-direct {v3, v4, v5, v0}, Lorg/dom4j/tree/LazyList$Entry;-><init>(Ljava/lang/Object;Lorg/dom4j/tree/LazyList$Entry;Lorg/dom4j/tree/LazyList$Entry;)V

    iput-object v3, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 111
    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 112
    iget-object v3, v2, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v3, v3, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v3, v2, Lorg/dom4j/tree/LazyList$Range;->lower:Lorg/dom4j/tree/LazyList$Entry;

    goto :goto_0

    .line 114
    :cond_0
    iput-object v0, v1, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    .line 115
    new-instance v0, Lorg/dom4j/tree/LazyList;

    invoke-direct {v0, v1}, Lorg/dom4j/tree/LazyList;-><init>(Lorg/dom4j/tree/LazyList$Entry;)V

    return-object v0
.end method
