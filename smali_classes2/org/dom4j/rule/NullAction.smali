.class public Lorg/dom4j/rule/NullAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/dom4j/rule/Action;


# static fields
.field public static final SINGLETON:Lorg/dom4j/rule/NullAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/dom4j/rule/NullAction;

    invoke-direct {v0}, Lorg/dom4j/rule/NullAction;-><init>()V

    sput-object v0, Lorg/dom4j/rule/NullAction;->SINGLETON:Lorg/dom4j/rule/NullAction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/dom4j/Node;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
