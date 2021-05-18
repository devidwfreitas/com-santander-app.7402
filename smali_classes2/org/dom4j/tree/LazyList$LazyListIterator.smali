.class public Lorg/dom4j/tree/LazyList$LazyListIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private expectedModCount:I

.field private indexNext:I

.field private lastReturned:Lorg/dom4j/tree/LazyList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/dom4j/tree/LazyList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field private next:Lorg/dom4j/tree/LazyList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/dom4j/tree/LazyList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/dom4j/tree/LazyList;


# direct methods
.method constructor <init>(Lorg/dom4j/tree/LazyList;I)V
    .locals 1

    .prologue
    .line 331
    iput-object p1, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->this$0:Lorg/dom4j/tree/LazyList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iget-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->this$0:Lorg/dom4j/tree/LazyList;

    iget-object v0, v0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->lastReturned:Lorg/dom4j/tree/LazyList$Entry;

    .line 329
    iget-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->this$0:Lorg/dom4j/tree/LazyList;

    invoke-static {v0}, Lorg/dom4j/tree/LazyList;->access$100(Lorg/dom4j/tree/LazyList;)I

    move-result v0

    iput v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->expectedModCount:I

    .line 332
    invoke-virtual {p1, p2}, Lorg/dom4j/tree/LazyList;->getEntryHeader(I)Lorg/dom4j/tree/LazyList$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 333
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0}, Lorg/dom4j/tree/LazyList$LazyListIterator;->checkForComodification()V

    .line 395
    iget-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->this$0:Lorg/dom4j/tree/LazyList;

    iget-object v0, v0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->lastReturned:Lorg/dom4j/tree/LazyList$Entry;

    .line 396
    iget-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->this$0:Lorg/dom4j/tree/LazyList;

    iget-object v1, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->next:Lorg/dom4j/tree/LazyList$Entry;

    invoke-virtual {v0, p1, v1}, Lorg/dom4j/tree/LazyList;->addElement(Ljava/lang/Object;Lorg/dom4j/tree/LazyList$Entry;)Lorg/dom4j/tree/LazyList$Entry;

    .line 397
    iget v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->indexNext:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->indexNext:I

    .line 398
    iget v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->expectedModCount:I

    .line 399
    return-void
.end method

.method final checkForComodification()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->this$0:Lorg/dom4j/tree/LazyList;

    invoke-static {v0}, Lorg/dom4j/tree/LazyList;->access$200(Lorg/dom4j/tree/LazyList;)I

    move-result v0

    iget v1, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 403
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 405
    :cond_0
    return-void
.end method

.method final checkForOutside()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->lastReturned:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v1, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->this$0:Lorg/dom4j/tree/LazyList;

    iget-object v1, v1, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    if-ne v0, v1, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 411
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 336
    iget v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->indexNext:I

    iget-object v1, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->this$0:Lorg/dom4j/tree/LazyList;

    iget v1, v1, Lorg/dom4j/tree/LazyList;->size:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->indexNext:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0}, Lorg/dom4j/tree/LazyList$LazyListIterator;->checkForComodification()V

    .line 341
    iget v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->indexNext:I

    iget-object v1, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->this$0:Lorg/dom4j/tree/LazyList;

    iget v1, v1, Lorg/dom4j/tree/LazyList;->size:I

    if-ne v0, v1, :cond_0

    .line 342
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 344
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->next:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->lastReturned:Lorg/dom4j/tree/LazyList$Entry;

    .line 345
    iget-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->next:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 346
    iget v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->indexNext:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->indexNext:I

    .line 347
    iget-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->lastReturned:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Entry;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->indexNext:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p0}, Lorg/dom4j/tree/LazyList$LazyListIterator;->checkForComodification()V

    .line 356
    iget v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->indexNext:I

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->next:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Entry;->previous:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 360
    iget-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->next:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->lastReturned:Lorg/dom4j/tree/LazyList$Entry;

    .line 361
    iget v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->indexNext:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->indexNext:I

    .line 362
    iget-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->lastReturned:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Entry;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->indexNext:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 374
    invoke-virtual {p0}, Lorg/dom4j/tree/LazyList$LazyListIterator;->checkForOutside()V

    .line 375
    invoke-virtual {p0}, Lorg/dom4j/tree/LazyList$LazyListIterator;->checkForComodification()V

    .line 376
    iget-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->lastReturned:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v0, v0, Lorg/dom4j/tree/LazyList$Entry;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 377
    iget-object v1, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->this$0:Lorg/dom4j/tree/LazyList;

    iget-object v2, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->lastReturned:Lorg/dom4j/tree/LazyList$Entry;

    invoke-virtual {v1, v2}, Lorg/dom4j/tree/LazyList;->removeEntry(Lorg/dom4j/tree/LazyList$Entry;)Ljava/lang/Object;

    .line 378
    iget-object v1, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->next:Lorg/dom4j/tree/LazyList$Entry;

    iget-object v2, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->lastReturned:Lorg/dom4j/tree/LazyList$Entry;

    if-ne v1, v2, :cond_0

    .line 379
    iput-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->next:Lorg/dom4j/tree/LazyList$Entry;

    .line 383
    :goto_0
    iget-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->this$0:Lorg/dom4j/tree/LazyList;

    iget-object v0, v0, Lorg/dom4j/tree/LazyList;->header:Lorg/dom4j/tree/LazyList$Entry;

    iput-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->lastReturned:Lorg/dom4j/tree/LazyList$Entry;

    .line 384
    iget v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->expectedModCount:I

    .line 385
    return-void

    .line 381
    :cond_0
    iget v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->indexNext:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->indexNext:I

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p0}, Lorg/dom4j/tree/LazyList$LazyListIterator;->checkForOutside()V

    .line 389
    invoke-virtual {p0}, Lorg/dom4j/tree/LazyList$LazyListIterator;->checkForComodification()V

    .line 390
    iget-object v0, p0, Lorg/dom4j/tree/LazyList$LazyListIterator;->lastReturned:Lorg/dom4j/tree/LazyList$Entry;

    iput-object p1, v0, Lorg/dom4j/tree/LazyList$Entry;->element:Ljava/lang/Object;

    .line 391
    return-void
.end method
