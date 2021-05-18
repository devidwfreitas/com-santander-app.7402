.class Lorg/apache/commons/exec/CommandLine$Argument;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final handleQuoting:Z

.field private final this$0:Lorg/apache/commons/exec/CommandLine;

.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/apache/commons/exec/CommandLine;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/exec/CommandLine$Argument;->this$0:Lorg/apache/commons/exec/CommandLine;

    .line 427
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/exec/CommandLine$Argument;->value:Ljava/lang/String;

    .line 428
    iput-boolean p3, p0, Lorg/apache/commons/exec/CommandLine$Argument;->handleQuoting:Z

    .line 429
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/exec/CommandLine;Ljava/lang/String;ZLorg/apache/commons/exec/CommandLine$1;)V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/exec/CommandLine$Argument;-><init>(Lorg/apache/commons/exec/CommandLine;Ljava/lang/String;Z)V

    return-void
.end method

.method static access$100(Lorg/apache/commons/exec/CommandLine$Argument;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    invoke-direct {p0}, Lorg/apache/commons/exec/CommandLine$Argument;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static access$200(Lorg/apache/commons/exec/CommandLine$Argument;)Z
    .locals 1

    .prologue
    .line 420
    invoke-direct {p0}, Lorg/apache/commons/exec/CommandLine$Argument;->isHandleQuoting()Z

    move-result v0

    return v0
.end method

.method private getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lorg/apache/commons/exec/CommandLine$Argument;->value:Ljava/lang/String;

    return-object v0
.end method

.method private isHandleQuoting()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lorg/apache/commons/exec/CommandLine$Argument;->handleQuoting:Z

    return v0
.end method
