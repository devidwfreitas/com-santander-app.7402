.class public interface abstract Lorg/jaxen/expr/XPathFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createAbsoluteLocationPath()Lorg/jaxen/expr/LocationPath;
.end method

.method public abstract createAdditiveExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;I)Lorg/jaxen/expr/BinaryExpr;
.end method

.method public abstract createAllNodeStep(I)Lorg/jaxen/expr/Step;
.end method

.method public abstract createAndExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/BinaryExpr;
.end method

.method public abstract createCommentNodeStep(I)Lorg/jaxen/expr/Step;
.end method

.method public abstract createEqualityExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;I)Lorg/jaxen/expr/BinaryExpr;
.end method

.method public abstract createFilterExpr(Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/FilterExpr;
.end method

.method public abstract createFunctionCallExpr(Ljava/lang/String;Ljava/lang/String;)Lorg/jaxen/expr/FunctionCallExpr;
.end method

.method public abstract createLiteralExpr(Ljava/lang/String;)Lorg/jaxen/expr/LiteralExpr;
.end method

.method public abstract createMultiplicativeExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;I)Lorg/jaxen/expr/BinaryExpr;
.end method

.method public abstract createNameStep(ILjava/lang/String;Ljava/lang/String;)Lorg/jaxen/expr/Step;
.end method

.method public abstract createNumberExpr(D)Lorg/jaxen/expr/NumberExpr;
.end method

.method public abstract createNumberExpr(I)Lorg/jaxen/expr/NumberExpr;
.end method

.method public abstract createOrExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/BinaryExpr;
.end method

.method public abstract createPathExpr(Lorg/jaxen/expr/FilterExpr;Lorg/jaxen/expr/LocationPath;)Lorg/jaxen/expr/PathExpr;
.end method

.method public abstract createPredicate(Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/Predicate;
.end method

.method public abstract createPredicateSet()Lorg/jaxen/expr/PredicateSet;
.end method

.method public abstract createProcessingInstructionNodeStep(ILjava/lang/String;)Lorg/jaxen/expr/Step;
.end method

.method public abstract createRelationalExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;I)Lorg/jaxen/expr/BinaryExpr;
.end method

.method public abstract createRelativeLocationPath()Lorg/jaxen/expr/LocationPath;
.end method

.method public abstract createTextNodeStep(I)Lorg/jaxen/expr/Step;
.end method

.method public abstract createUnaryExpr(Lorg/jaxen/expr/Expr;I)Lorg/jaxen/expr/Expr;
.end method

.method public abstract createUnionExpr(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/UnionExpr;
.end method

.method public abstract createVariableReferenceExpr(Ljava/lang/String;Ljava/lang/String;)Lorg/jaxen/expr/VariableReferenceExpr;
.end method

.method public abstract createXPath(Lorg/jaxen/expr/Expr;)Lorg/jaxen/expr/XPathExpr;
.end method
