.class Lorg/simpleframework/xml/core/ClassScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private commit:Lorg/simpleframework/xml/core/Function;

.field private complete:Lorg/simpleframework/xml/core/Function;

.field private decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

.field private order:Lorg/simpleframework/xml/Order;

.field private persist:Lorg/simpleframework/xml/core/Function;

.field private replace:Lorg/simpleframework/xml/core/Function;

.field private resolve:Lorg/simpleframework/xml/core/Function;

.field private root:Lorg/simpleframework/xml/Root;

.field private scanner:Lorg/simpleframework/xml/core/ConstructorScanner;

.field private support:Lorg/simpleframework/xml/core/Support;

.field private validate:Lorg/simpleframework/xml/core/Function;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorScanner;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/ConstructorScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->scanner:Lorg/simpleframework/xml/core/ConstructorScanner;

    .line 110
    new-instance v0, Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/NamespaceDecorator;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    .line 111
    iput-object p2, p0, Lorg/simpleframework/xml/core/ClassScanner;->support:Lorg/simpleframework/xml/core/Support;

    .line 112
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->scan(Lorg/simpleframework/xml/core/Detail;)V

    .line 113
    return-void
.end method

.method private commit(Ljava/lang/reflect/Method;)V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->commit:Lorg/simpleframework/xml/core/Function;

    if-nez v0, :cond_0

    .line 435
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->commit:Lorg/simpleframework/xml/core/Function;

    .line 437
    :cond_0
    return-void
.end method

.method private commit(Lorg/simpleframework/xml/core/Detail;)V
    .locals 2

    .prologue
    .line 340
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getNamespace()Lorg/simpleframework/xml/Namespace;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_0

    .line 343
    iget-object v1, p0, Lorg/simpleframework/xml/core/ClassScanner;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/NamespaceDecorator;->set(Lorg/simpleframework/xml/Namespace;)V

    .line 345
    :cond_0
    return-void
.end method

.method private complete(Ljava/lang/reflect/Method;)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->complete:Lorg/simpleframework/xml/core/Function;

    if-nez v0, :cond_0

    .line 477
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->complete:Lorg/simpleframework/xml/core/Function;

    .line 479
    :cond_0
    return-void
.end method

.method private definition(Lorg/simpleframework/xml/core/Detail;)V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->root:Lorg/simpleframework/xml/Root;

    if-nez v0, :cond_0

    .line 299
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getRoot()Lorg/simpleframework/xml/Root;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->root:Lorg/simpleframework/xml/Root;

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->order:Lorg/simpleframework/xml/Order;

    if-nez v0, :cond_1

    .line 302
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getOrder()Lorg/simpleframework/xml/Order;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->order:Lorg/simpleframework/xml/Order;

    .line 304
    :cond_1
    return-void
.end method

.method private getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;
    .locals 2

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->isContextual(Ljava/lang/reflect/Method;)Z

    move-result v0

    .line 493
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 496
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/Function;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/Function;-><init>(Ljava/lang/reflect/Method;Z)V

    return-object v1
.end method

.method private isContextual(Ljava/lang/reflect/Method;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 509
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 511
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 512
    const-class v2, Ljava/util/Map;

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 514
    :cond_0
    return v0
.end method

.method private method(Lorg/simpleframework/xml/core/Detail;)V
    .locals 2

    .prologue
    .line 356
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getMethods()Ljava/util/List;

    move-result-object v0

    .line 358
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/MethodDetail;

    .line 359
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ClassScanner;->method(Lorg/simpleframework/xml/core/MethodDetail;)V

    goto :goto_0

    .line 361
    :cond_0
    return-void
.end method

.method private method(Lorg/simpleframework/xml/core/MethodDetail;)V
    .locals 6

    .prologue
    .line 372
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodDetail;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 373
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodDetail;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 375
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_6

    aget-object v4, v1, v0

    .line 376
    instance-of v5, v4, Lorg/simpleframework/xml/core/Commit;

    if-eqz v5, :cond_0

    .line 377
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/ClassScanner;->commit(Ljava/lang/reflect/Method;)V

    .line 379
    :cond_0
    instance-of v5, v4, Lorg/simpleframework/xml/core/Validate;

    if-eqz v5, :cond_1

    .line 380
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/ClassScanner;->validate(Ljava/lang/reflect/Method;)V

    .line 382
    :cond_1
    instance-of v5, v4, Lorg/simpleframework/xml/core/Persist;

    if-eqz v5, :cond_2

    .line 383
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/ClassScanner;->persist(Ljava/lang/reflect/Method;)V

    .line 385
    :cond_2
    instance-of v5, v4, Lorg/simpleframework/xml/core/Complete;

    if-eqz v5, :cond_3

    .line 386
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/ClassScanner;->complete(Ljava/lang/reflect/Method;)V

    .line 388
    :cond_3
    instance-of v5, v4, Lorg/simpleframework/xml/core/Replace;

    if-eqz v5, :cond_4

    .line 389
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/ClassScanner;->replace(Ljava/lang/reflect/Method;)V

    .line 391
    :cond_4
    instance-of v4, v4, Lorg/simpleframework/xml/core/Resolve;

    if-eqz v4, :cond_5

    .line 392
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/ClassScanner;->resolve(Ljava/lang/reflect/Method;)V

    .line 375
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_6
    return-void
.end method

.method private namespace(Lorg/simpleframework/xml/core/Detail;)V
    .locals 5

    .prologue
    .line 316
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getNamespaceList()Lorg/simpleframework/xml/NamespaceList;

    move-result-object v0

    .line 317
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getNamespace()Lorg/simpleframework/xml/Namespace;

    move-result-object v1

    .line 319
    if-eqz v1, :cond_0

    .line 320
    iget-object v2, p0, Lorg/simpleframework/xml/core/ClassScanner;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v2, v1}, Lorg/simpleframework/xml/core/NamespaceDecorator;->add(Lorg/simpleframework/xml/Namespace;)V

    .line 322
    :cond_0
    if-eqz v0, :cond_1

    .line 323
    invoke-interface {v0}, Lorg/simpleframework/xml/NamespaceList;->value()[Lorg/simpleframework/xml/Namespace;

    move-result-object v1

    .line 325
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 326
    iget-object v4, p0, Lorg/simpleframework/xml/core/ClassScanner;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v4, v3}, Lorg/simpleframework/xml/core/NamespaceDecorator;->add(Lorg/simpleframework/xml/Namespace;)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_1
    return-void
.end method

.method private persist(Ljava/lang/reflect/Method;)V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->persist:Lorg/simpleframework/xml/core/Function;

    if-nez v0, :cond_0

    .line 463
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->persist:Lorg/simpleframework/xml/core/Function;

    .line 465
    :cond_0
    return-void
.end method

.method private replace(Ljava/lang/reflect/Method;)V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->replace:Lorg/simpleframework/xml/core/Function;

    if-nez v0, :cond_0

    .line 407
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->replace:Lorg/simpleframework/xml/core/Function;

    .line 409
    :cond_0
    return-void
.end method

.method private resolve(Ljava/lang/reflect/Method;)V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->resolve:Lorg/simpleframework/xml/core/Function;

    if-nez v0, :cond_0

    .line 421
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->resolve:Lorg/simpleframework/xml/core/Function;

    .line 423
    :cond_0
    return-void
.end method

.method private scan(Lorg/simpleframework/xml/core/Detail;)V
    .locals 3

    .prologue
    .line 275
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getOverride()Lorg/simpleframework/xml/DefaultType;

    move-result-object v1

    .line 276
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 278
    :goto_0
    if-eqz v0, :cond_0

    .line 279
    iget-object v2, p0, Lorg/simpleframework/xml/core/ClassScanner;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v2, v0, v1}, Lorg/simpleframework/xml/core/Support;->getDetail(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v0

    .line 281
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ClassScanner;->namespace(Lorg/simpleframework/xml/core/Detail;)V

    .line 282
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ClassScanner;->method(Lorg/simpleframework/xml/core/Detail;)V

    .line 283
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ClassScanner;->definition(Lorg/simpleframework/xml/core/Detail;)V

    .line 284
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Detail;->getSuper()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->commit(Lorg/simpleframework/xml/core/Detail;)V

    .line 287
    return-void
.end method

.method private validate(Ljava/lang/reflect/Method;)V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->validate:Lorg/simpleframework/xml/core/Function;

    if-nez v0, :cond_0

    .line 449
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassScanner;->getFunction(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->validate:Lorg/simpleframework/xml/core/Function;

    .line 451
    :cond_0
    return-void
.end method


# virtual methods
.method public getCommit()Lorg/simpleframework/xml/core/Function;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->commit:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method

.method public getComplete()Lorg/simpleframework/xml/core/Function;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->complete:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    return-object v0
.end method

.method public getOrder()Lorg/simpleframework/xml/Order;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->order:Lorg/simpleframework/xml/Order;

    return-object v0
.end method

.method public getParameters()Lorg/simpleframework/xml/core/ParameterMap;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->scanner:Lorg/simpleframework/xml/core/ConstructorScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ConstructorScanner;->getParameters()Lorg/simpleframework/xml/core/ParameterMap;

    move-result-object v0

    return-object v0
.end method

.method public getPersist()Lorg/simpleframework/xml/core/Function;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->persist:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method

.method public getReplace()Lorg/simpleframework/xml/core/Function;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->replace:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method

.method public getResolve()Lorg/simpleframework/xml/core/Function;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->resolve:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method

.method public getRoot()Lorg/simpleframework/xml/Root;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->root:Lorg/simpleframework/xml/Root;

    return-object v0
.end method

.method public getSignature()Lorg/simpleframework/xml/core/Signature;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->scanner:Lorg/simpleframework/xml/core/ConstructorScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ConstructorScanner;->getSignature()Lorg/simpleframework/xml/core/Signature;

    move-result-object v0

    return-object v0
.end method

.method public getSignatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->scanner:Lorg/simpleframework/xml/core/ConstructorScanner;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ConstructorScanner;->getSignatures()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValidate()Lorg/simpleframework/xml/core/Function;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassScanner;->validate:Lorg/simpleframework/xml/core/Function;

    return-object v0
.end method
