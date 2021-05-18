.class Lorg/jaxen/jdom/DocumentNavigator$Singleton;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lorg/jaxen/jdom/DocumentNavigator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lorg/jaxen/jdom/DocumentNavigator;

    invoke-direct {v0}, Lorg/jaxen/jdom/DocumentNavigator;-><init>()V

    sput-object v0, Lorg/jaxen/jdom/DocumentNavigator$Singleton;->instance:Lorg/jaxen/jdom/DocumentNavigator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$000()Lorg/jaxen/jdom/DocumentNavigator;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lorg/jaxen/jdom/DocumentNavigator$Singleton;->instance:Lorg/jaxen/jdom/DocumentNavigator;

    return-object v0
.end method
