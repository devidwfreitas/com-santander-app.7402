.class public interface abstract Lorg/dom4j/rule/Pattern;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/dom4j/NodeFilter;


# static fields
.field public static final DEFAULT_PRIORITY:D = 0.5


# virtual methods
.method public abstract getMatchType()Lorg/dom4j/NodeType;
.end method

.method public abstract getMatchesNodeName()Ljava/lang/String;
.end method

.method public abstract getPriority()D
.end method

.method public abstract getUnionPatterns()[Lorg/dom4j/rule/Pattern;
.end method

.method public abstract matches(Lorg/dom4j/Node;)Z
.end method
