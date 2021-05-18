.class public interface abstract Lorg/jaxen/expr/Step;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jaxen/expr/Predicated;


# virtual methods
.method public abstract axisIterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Ljava/util/Iterator;
.end method

.method public abstract evaluate(Lorg/jaxen/Context;)Ljava/util/List;
.end method

.method public abstract getAxis()I
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract matches(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Z
.end method

.method public abstract simplify()V
.end method
