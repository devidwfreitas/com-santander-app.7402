.class Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final this$0:Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;


# direct methods
.method constructor <init>(Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment$1;->this$0:Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 231
    check-cast p1, Ljava/lang/String;

    .line 232
    check-cast p2, Ljava/lang/String;

    .line 233
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
