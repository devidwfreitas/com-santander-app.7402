.class public Lorg/jaxen/function/TrueFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public call(Lorg/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 87
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lorg/jaxen/function/TrueFunction;->evaluate()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Lorg/jaxen/FunctionCallException;

    const-string v1, "true() requires no arguments."

    invoke-direct {v0, v1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
