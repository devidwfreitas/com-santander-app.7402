.class public Lorg/jaxen/JaxenHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jaxen/saxpath/XPathHandler;


# instance fields
.field public simplified:Z

.field public stack:Ljava/util/LinkedList;

.field private xpath:Lorg/jaxen/expr/XPathExpr;

.field private xpathFactory:Lorg/jaxen/expr/XPathFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jaxen/JaxenHandler;->stack:Ljava/util/LinkedList;

    .line 97
    new-instance v0, Lorg/jaxen/expr/DefaultXPathFactory;

    invoke-direct {v0}, Lorg/jaxen/expr/DefaultXPathFactory;-><init>()V

    iput-object v0, p0, Lorg/jaxen/JaxenHandler;->xpathFactory:Lorg/jaxen/expr/XPathFactory;

    .line 98
    return-void
.end method


# virtual methods
.method protected addParameters(Lorg/jaxen/expr/FunctionCallExpr;Ljava/util/Iterator;)V
    .locals 1

    .prologue
    .line 576
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/Expr;

    invoke-interface {p1, v0}, Lorg/jaxen/expr/FunctionCallExpr;->addParameter(Lorg/jaxen/expr/Expr;)V

    goto :goto_0

    .line 580
    :cond_0
    return-void
.end method

.method protected addPredicates(Lorg/jaxen/expr/Predicated;Ljava/util/Iterator;)V
    .locals 1

    .prologue
    .line 377
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/Predicate;

    invoke-interface {p1, v0}, Lorg/jaxen/expr/Predicated;->addPredicate(Lorg/jaxen/expr/Predicate;)V

    goto :goto_0

    .line 381
    :cond_0
    return-void
.end method

.method protected addSteps(Lorg/jaxen/expr/LocationPath;Ljava/util/Iterator;)V
    .locals 1

    .prologue
    .line 258
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/Step;

    invoke-interface {p1, v0}, Lorg/jaxen/expr/LocationPath;->addStep(Lorg/jaxen/expr/Step;)V

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method protected canPop()Z
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->peekFrame()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endAbsoluteLocationPath()V
    .locals 0

    .prologue
    .line 230
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->endLocationPath()V

    .line 231
    return-void
.end method

.method public endAdditiveExpr(I)V
    .locals 3

    .prologue
    .line 470
    if-eqz p1, :cond_0

    .line 473
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/Expr;

    .line 474
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaxen/expr/Expr;

    .line 476
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v2

    invoke-interface {v2, v1, v0, p1}, Lorg/jaxen/expr/XPathFactory;->createAdditiveExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;I)Lorg/jaxen/expr/BinaryExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 480
    :cond_0
    return-void
.end method

.method public endAllNodeStep()V
    .locals 0

    .prologue
    .line 314
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->endStep()V

    .line 315
    return-void
.end method

.method public endAndExpr(Z)V
    .locals 3

    .prologue
    .line 414
    if-eqz p1, :cond_0

    .line 417
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/Expr;

    .line 418
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaxen/expr/Expr;

    .line 420
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lorg/jaxen/expr/XPathFactory;->createAndExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/BinaryExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 423
    :cond_0
    return-void
.end method

.method public endCommentNodeStep()V
    .locals 0

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->endStep()V

    .line 303
    return-void
.end method

.method public endEqualityExpr(I)V
    .locals 3

    .prologue
    .line 432
    if-eqz p1, :cond_0

    .line 435
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/Expr;

    .line 436
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaxen/expr/Expr;

    .line 438
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v2

    invoke-interface {v2, v1, v0, p1}, Lorg/jaxen/expr/XPathFactory;->createEqualityExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;I)Lorg/jaxen/expr/BinaryExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 442
    :cond_0
    return-void
.end method

.method public endFilterExpr()V
    .locals 2

    .prologue
    .line 362
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->peekFrame()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/Expr;

    .line 364
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jaxen/expr/XPathFactory;->createFilterExpr(Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/FilterExpr;

    move-result-object v0

    .line 366
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->popFrame()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 368
    invoke-virtual {p0, v0, v1}, Lorg/jaxen/JaxenHandler;->addPredicates(Lorg/jaxen/expr/Predicated;Ljava/util/Iterator;)V

    .line 371
    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 372
    return-void
.end method

.method public endFunction()V
    .locals 2

    .prologue
    .line 565
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->peekFrame()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/FunctionCallExpr;

    .line 567
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->popFrame()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jaxen/JaxenHandler;->addParameters(Lorg/jaxen/expr/FunctionCallExpr;Ljava/util/Iterator;)V

    .line 570
    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 571
    return-void
.end method

.method public endLocationPath()V
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->peekFrame()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/LocationPath;

    .line 249
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->popFrame()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jaxen/JaxenHandler;->addSteps(Lorg/jaxen/expr/LocationPath;Ljava/util/Iterator;)V

    .line 252
    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 253
    return-void
.end method

.method public endMultiplicativeExpr(I)V
    .locals 3

    .prologue
    .line 489
    if-eqz p1, :cond_0

    .line 492
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/Expr;

    .line 493
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaxen/expr/Expr;

    .line 495
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v2

    invoke-interface {v2, v1, v0, p1}, Lorg/jaxen/expr/XPathFactory;->createMultiplicativeExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;I)Lorg/jaxen/expr/BinaryExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 499
    :cond_0
    return-void
.end method

.method public endNameStep()V
    .locals 0

    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->endStep()V

    .line 278
    return-void
.end method

.method public endOrExpr(Z)V
    .locals 3

    .prologue
    .line 397
    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/Expr;

    .line 400
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaxen/expr/Expr;

    .line 402
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lorg/jaxen/expr/XPathFactory;->createOrExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/BinaryExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 405
    :cond_0
    return-void
.end method

.method public endPathExpr()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->stackSize()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 197
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/LocationPath;

    .line 198
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaxen/expr/FilterExpr;

    .line 215
    :goto_0
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->popFrame()Ljava/util/LinkedList;

    .line 217
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lorg/jaxen/expr/XPathFactory;->createPathExpr(Lorg/jaxen/expr/FilterExpr;Lorg/jaxen/expr/LocationPath;)Lorg/jaxen/expr/PathExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 219
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 204
    instance-of v2, v0, Lorg/jaxen/expr/LocationPath;

    if-eqz v2, :cond_1

    .line 206
    check-cast v0, Lorg/jaxen/expr/LocationPath;

    goto :goto_0

    .line 212
    :cond_1
    check-cast v0, Lorg/jaxen/expr/FilterExpr;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public endPredicate()V
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/Expr;

    invoke-interface {v1, v0}, Lorg/jaxen/expr/XPathFactory;->createPredicate(Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/Predicate;

    move-result-object v0

    .line 350
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->popFrame()Ljava/util/LinkedList;

    .line 352
    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 353
    return-void
.end method

.method public endProcessingInstructionNodeStep()V
    .locals 0

    .prologue
    .line 328
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->endStep()V

    .line 329
    return-void
.end method

.method public endRelationalExpr(I)V
    .locals 3

    .prologue
    .line 451
    if-eqz p1, :cond_0

    .line 454
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/Expr;

    .line 455
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaxen/expr/Expr;

    .line 457
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v2

    invoke-interface {v2, v1, v0, p1}, Lorg/jaxen/expr/XPathFactory;->createRelationalExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;I)Lorg/jaxen/expr/BinaryExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 461
    :cond_0
    return-void
.end method

.method public endRelativeLocationPath()V
    .locals 0

    .prologue
    .line 242
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->endLocationPath()V

    .line 243
    return-void
.end method

.method public endStep()V
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->peekFrame()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/Step;

    .line 335
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->popFrame()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jaxen/JaxenHandler;->addPredicates(Lorg/jaxen/expr/Predicated;Ljava/util/Iterator;)V

    .line 338
    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method public endTextNodeStep()V
    .locals 0

    .prologue
    .line 290
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->endStep()V

    .line 291
    return-void
.end method

.method public endUnaryExpr(I)V
    .locals 2

    .prologue
    .line 508
    if-eqz p1, :cond_0

    .line 510
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/Expr;

    invoke-interface {v1, v0, p1}, Lorg/jaxen/expr/XPathFactory;->createUnaryExpr(Lorg/jaxen/expr/Expr;I)Lorg/jaxen/expr/Expr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 513
    :cond_0
    return-void
.end method

.method public endUnionExpr(Z)V
    .locals 3

    .prologue
    .line 522
    if-eqz p1, :cond_0

    .line 525
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/Expr;

    .line 526
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaxen/expr/Expr;

    .line 528
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lorg/jaxen/expr/XPathFactory;->createUnionExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/UnionExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 531
    :cond_0
    return-void
.end method

.method public endXPath()V
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/Expr;

    invoke-interface {v1, v0}, Lorg/jaxen/expr/XPathFactory;->createXPath(Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/XPathExpr;

    move-result-object v0

    iput-object v0, p0, Lorg/jaxen/JaxenHandler;->xpath:Lorg/jaxen/expr/XPathExpr;

    .line 166
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->popFrame()Ljava/util/LinkedList;

    .line 167
    return-void
.end method

.method public getXPathExpr()Lorg/jaxen/expr/XPathExpr;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->getXPathExpr(Z)Lorg/jaxen/expr/XPathExpr;

    move-result-object v0

    return-object v0
.end method

.method public getXPathExpr(Z)Lorg/jaxen/expr/XPathExpr;
    .locals 1

    .prologue
    .line 148
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/jaxen/JaxenHandler;->simplified:Z

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/jaxen/JaxenHandler;->xpath:Lorg/jaxen/expr/XPathExpr;

    invoke-interface {v0}, Lorg/jaxen/expr/XPathExpr;->simplify()V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jaxen/JaxenHandler;->simplified:Z

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/jaxen/JaxenHandler;->xpath:Lorg/jaxen/expr/XPathExpr;

    return-object v0
.end method

.method public getXPathFactory()Lorg/jaxen/expr/XPathFactory;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/jaxen/JaxenHandler;->xpathFactory:Lorg/jaxen/expr/XPathFactory;

    return-object v0
.end method

.method public literal(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 545
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaxen/expr/XPathFactory;->createLiteralExpr(Ljava/lang/String;)Lorg/jaxen/expr/LiteralExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 546
    return-void
.end method

.method public number(D)V
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jaxen/expr/XPathFactory;->createNumberExpr(D)Lorg/jaxen/expr/NumberExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 541
    return-void
.end method

.method public number(I)V
    .locals 1

    .prologue
    .line 535
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaxen/expr/XPathFactory;->createNumberExpr(I)Lorg/jaxen/expr/NumberExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 536
    return-void
.end method

.method protected peekFrame()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lorg/jaxen/JaxenHandler;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->peekFrame()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public popFrame()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lorg/jaxen/JaxenHandler;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->peekFrame()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 590
    return-void
.end method

.method public pushFrame()V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lorg/jaxen/JaxenHandler;->stack:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 605
    return-void
.end method

.method protected returnExpr()V
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaxen/expr/Expr;

    .line 386
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->popFrame()Ljava/util/LinkedList;

    .line 387
    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 388
    return-void
.end method

.method public setXPathFactory(Lorg/jaxen/expr/XPathFactory;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lorg/jaxen/JaxenHandler;->xpathFactory:Lorg/jaxen/expr/XPathFactory;

    .line 108
    return-void
.end method

.method protected stackSize()I
    .locals 1

    .prologue
    .line 584
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->peekFrame()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public startAbsoluteLocationPath()V
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pushFrame()V

    .line 225
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaxen/expr/XPathFactory;->createAbsoluteLocationPath()Lorg/jaxen/expr/LocationPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 226
    return-void
.end method

.method public startAdditiveExpr()V
    .locals 0

    .prologue
    .line 465
    return-void
.end method

.method public startAllNodeStep(I)V
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pushFrame()V

    .line 309
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaxen/expr/XPathFactory;->createAllNodeStep(I)Lorg/jaxen/expr/Step;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 310
    return-void
.end method

.method public startAndExpr()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public startCommentNodeStep(I)V
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pushFrame()V

    .line 297
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaxen/expr/XPathFactory;->createCommentNodeStep(I)Lorg/jaxen/expr/Step;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method public startEqualityExpr()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public startFilterExpr()V
    .locals 0

    .prologue
    .line 357
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pushFrame()V

    .line 358
    return-void
.end method

.method public startFunction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 558
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pushFrame()V

    .line 559
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jaxen/expr/XPathFactory;->createFunctionCallExpr(Ljava/lang/String;Ljava/lang/String;)Lorg/jaxen/expr/FunctionCallExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 561
    return-void
.end method

.method public startMultiplicativeExpr()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method public startNameStep(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pushFrame()V

    .line 270
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jaxen/expr/XPathFactory;->createNameStep(ILjava/lang/String;Ljava/lang/String;)Lorg/jaxen/expr/Step;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method public startOrExpr()V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public startPathExpr()V
    .locals 0

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pushFrame()V

    .line 172
    return-void
.end method

.method public startPredicate()V
    .locals 0

    .prologue
    .line 343
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pushFrame()V

    .line 344
    return-void
.end method

.method public startProcessingInstructionNodeStep(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pushFrame()V

    .line 322
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jaxen/expr/XPathFactory;->createProcessingInstructionNodeStep(ILjava/lang/String;)Lorg/jaxen/expr/Step;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method public startRelationalExpr()V
    .locals 0

    .prologue
    .line 446
    return-void
.end method

.method public startRelativeLocationPath()V
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pushFrame()V

    .line 237
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaxen/expr/XPathFactory;->createRelativeLocationPath()Lorg/jaxen/expr/LocationPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method public startTextNodeStep(I)V
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pushFrame()V

    .line 285
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaxen/expr/XPathFactory;->createTextNodeStep(I)Lorg/jaxen/expr/Step;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 286
    return-void
.end method

.method public startUnaryExpr()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public startUnionExpr()V
    .locals 0

    .prologue
    .line 517
    return-void
.end method

.method public startXPath()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jaxen/JaxenHandler;->simplified:Z

    .line 160
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->pushFrame()V

    .line 161
    return-void
.end method

.method public variableReference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lorg/jaxen/JaxenHandler;->getXPathFactory()Lorg/jaxen/expr/XPathFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jaxen/expr/XPathFactory;->createVariableReferenceExpr(Ljava/lang/String;Ljava/lang/String;)Lorg/jaxen/expr/VariableReferenceExpr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/JaxenHandler;->push(Ljava/lang/Object;)V

    .line 553
    return-void
.end method
