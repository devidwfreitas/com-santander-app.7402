.class abstract Lorg/jaxen/expr/DefaultTruthExpr;
.super Lorg/jaxen/expr/DefaultBinaryExpr;
.source "SourceFile"


# direct methods
.method constructor <init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/jaxen/expr/DefaultBinaryExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected bothAreBoolean(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 110
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bothAreSets(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 71
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected eitherIsBoolean(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 102
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected eitherIsNumber(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 118
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected eitherIsSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 79
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isBoolean(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 91
    instance-of v0, p1, Ljava/lang/Boolean;

    return v0
.end method

.method protected isSet(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 86
    instance-of v0, p1, Ljava/util/List;

    return v0
.end method

.method protected setIsEmpty(Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 96
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[(DefaultTruthExpr): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultTruthExpr;->getLHS()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultTruthExpr;->getRHS()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
