.class Lorg/jaxen/expr/DefaultPathExpr;
.super Lorg/jaxen/expr/DefaultExpr;
.source "SourceFile"

# interfaces
.implements Lorg/jaxen/expr/PathExpr;


# static fields
.field private static final serialVersionUID:J = -0x5b825ca6873be879L


# instance fields
.field private filterExpr:Lorg/jaxen/expr/Expr;

.field private locationPath:Lorg/jaxen/expr/LocationPath;


# direct methods
.method constructor <init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/LocationPath;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/jaxen/expr/DefaultExpr;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/jaxen/expr/DefaultPathExpr;->filterExpr:Lorg/jaxen/expr/Expr;

    .line 65
    iput-object p2, p0, Lorg/jaxen/expr/DefaultPathExpr;->locationPath:Lorg/jaxen/expr/LocationPath;

    .line 66
    return-void
.end method


# virtual methods
.method public evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 134
    .line 136
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lorg/jaxen/expr/Expr;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lorg/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaxen/expr/Expr;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 138
    new-instance v0, Lorg/jaxen/Context;

    invoke-virtual {p1}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jaxen/Context;-><init>(Lorg/jaxen/ContextSupport;)V

    .line 139
    invoke-static {v1}, Lorg/jaxen/expr/DefaultPathExpr;->convertToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    .line 141
    :goto_0
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getLocationPath()Lorg/jaxen/expr/LocationPath;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getLocationPath()Lorg/jaxen/expr/LocationPath;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jaxen/expr/LocationPath;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 144
    :cond_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getFilterExpr()Lorg/jaxen/expr/Expr;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/jaxen/expr/DefaultPathExpr;->filterExpr:Lorg/jaxen/expr/Expr;

    return-object v0
.end method

.method public getLocationPath()Lorg/jaxen/expr/LocationPath;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/jaxen/expr/DefaultPathExpr;->locationPath:Lorg/jaxen/expr/LocationPath;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lorg/jaxen/expr/Expr;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/expr/Expr;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    :cond_0
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getLocationPath()Lorg/jaxen/expr/LocationPath;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getLocationPath()Lorg/jaxen/expr/LocationPath;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/expr/LocationPath;->getSteps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    :cond_1
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getLocationPath()Lorg/jaxen/expr/LocationPath;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaxen/expr/LocationPath;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFilterExpr(Lorg/jaxen/expr/Expr;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lorg/jaxen/expr/DefaultPathExpr;->filterExpr:Lorg/jaxen/expr/Expr;

    .line 75
    return-void
.end method

.method public simplify()Lorg/jaxen/expr/Expr;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lorg/jaxen/expr/Expr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lorg/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaxen/expr/Expr;->simplify()Lorg/jaxen/expr/Expr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaxen/expr/DefaultPathExpr;->setFilterExpr(Lorg/jaxen/expr/Expr;)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getLocationPath()Lorg/jaxen/expr/LocationPath;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getLocationPath()Lorg/jaxen/expr/LocationPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaxen/expr/LocationPath;->simplify()Lorg/jaxen/expr/Expr;

    .line 117
    :cond_1
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lorg/jaxen/expr/Expr;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getLocationPath()Lorg/jaxen/expr/LocationPath;

    move-result-object v0

    if-nez v0, :cond_3

    .line 118
    const/4 p0, 0x0

    .line 130
    :cond_2
    :goto_0
    return-object p0

    .line 122
    :cond_3
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getLocationPath()Lorg/jaxen/expr/LocationPath;

    move-result-object v0

    if-nez v0, :cond_4

    .line 123
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lorg/jaxen/expr/Expr;

    move-result-object p0

    goto :goto_0

    .line 126
    :cond_4
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lorg/jaxen/expr/Expr;

    move-result-object v0

    if-nez v0, :cond_2

    .line 127
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getLocationPath()Lorg/jaxen/expr/LocationPath;

    move-result-object p0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getLocationPath()Lorg/jaxen/expr/LocationPath;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[(DefaultPathExpr): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getLocationPath()Lorg/jaxen/expr/LocationPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[(DefaultPathExpr): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultPathExpr;->getFilterExpr()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
