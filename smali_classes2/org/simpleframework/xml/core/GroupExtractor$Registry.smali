.class Lorg/simpleframework/xml/core/GroupExtractor$Registry;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Class;",
        "Lorg/simpleframework/xml/core/Label;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/simpleframework/xml/core/Label;",
        ">;"
    }
.end annotation


# instance fields
.field private elements:Lorg/simpleframework/xml/core/LabelMap;

.field private text:Lorg/simpleframework/xml/core/Label;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 281
    iput-object p1, p0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->elements:Lorg/simpleframework/xml/core/LabelMap;

    .line 282
    return-void
.end method

.method private registerElement(Ljava/lang/Class;Lorg/simpleframework/xml/core/Label;)V
    .locals 2

    .prologue
    .line 406
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/LabelMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    iget-object v1, p0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0, p2}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_1
    return-void
.end method

.method private registerText(Lorg/simpleframework/xml/core/Label;)V
    .locals 2

    .prologue
    .line 424
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 425
    const-class v1, Lorg/simpleframework/xml/Text;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Contact;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Text;

    .line 427
    if-eqz v0, :cond_0

    .line 428
    new-instance v1, Lorg/simpleframework/xml/core/TextListLabel;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/TextListLabel;-><init>(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/Text;)V

    iput-object v1, p0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->text:Lorg/simpleframework/xml/core/Label;

    .line 430
    :cond_0
    return-void
.end method

.method private resolveElement(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .locals 1

    .prologue
    .line 370
    :goto_0
    if-eqz p1, :cond_1

    .line 371
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 373
    if-eqz v0, :cond_0

    .line 378
    :goto_1
    return-object v0

    .line 376
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 378
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private resolveText(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->text:Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_0

    .line 351
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 352
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->text:Lorg/simpleframework/xml/core/Label;

    .line 355
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isText()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->text:Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/simpleframework/xml/core/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public register(Ljava/lang/Class;Lorg/simpleframework/xml/core/Label;)V
    .locals 1

    .prologue
    .line 390
    new-instance v0, Lorg/simpleframework/xml/core/CacheLabel;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/core/CacheLabel;-><init>(Lorg/simpleframework/xml/core/Label;)V

    .line 392
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->registerElement(Ljava/lang/Class;Lorg/simpleframework/xml/core/Label;)V

    .line 393
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->registerText(Lorg/simpleframework/xml/core/Label;)V

    .line 394
    return-void
.end method

.method public resolve(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .locals 1

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->resolveText(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 333
    if-nez v0, :cond_0

    .line 334
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->resolveElement(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 336
    :cond_0
    return-object v0
.end method

.method public resolveText()Lorg/simpleframework/xml/core/Label;
    .locals 1

    .prologue
    .line 316
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->resolveText(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method
