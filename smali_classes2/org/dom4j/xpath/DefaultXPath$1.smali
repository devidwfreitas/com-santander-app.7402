.class Lorg/dom4j/xpath/DefaultXPath$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lorg/dom4j/xpath/DefaultXPath;

.field final synthetic val$sortValues:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/dom4j/xpath/DefaultXPath;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lorg/dom4j/xpath/DefaultXPath$1;->this$0:Lorg/dom4j/xpath/DefaultXPath;

    iput-object p2, p0, Lorg/dom4j/xpath/DefaultXPath$1;->val$sortValues:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 278
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath$1;->val$sortValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 279
    iget-object v3, p0, Lorg/dom4j/xpath/DefaultXPath$1;->val$sortValues:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 281
    if-ne v0, v3, :cond_0

    .line 292
    :goto_0
    return v1

    .line 283
    :cond_0
    instance-of v4, v0, Ljava/lang/Comparable;

    if-eqz v4, :cond_1

    .line 284
    check-cast v0, Ljava/lang/Comparable;

    .line 286
    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 287
    :cond_1
    if-nez v0, :cond_2

    .line 288
    const/4 v1, 0x1

    goto :goto_0

    .line 289
    :cond_2
    if-nez v3, :cond_3

    move v1, v2

    .line 290
    goto :goto_0

    .line 292
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method
