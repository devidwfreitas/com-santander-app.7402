.class Lorg/jaxen/dom4j/DocumentNavigator$Singleton;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lorg/jaxen/dom4j/DocumentNavigator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lorg/jaxen/dom4j/DocumentNavigator;

    invoke-direct {v0}, Lorg/jaxen/dom4j/DocumentNavigator;-><init>()V

    sput-object v0, Lorg/jaxen/dom4j/DocumentNavigator$Singleton;->instance:Lorg/jaxen/dom4j/DocumentNavigator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$000()Lorg/jaxen/dom4j/DocumentNavigator;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lorg/jaxen/dom4j/DocumentNavigator$Singleton;->instance:Lorg/jaxen/dom4j/DocumentNavigator;

    return-object v0
.end method
