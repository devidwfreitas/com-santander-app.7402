.class Lorg/apache/commons/cli/HelpFormatter$OptionComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/cli/HelpFormatter$1;)V
    .locals 0

    .prologue
    .line 962
    invoke-direct {p0}, Lorg/apache/commons/cli/HelpFormatter$OptionComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 978
    check-cast p1, Lorg/apache/commons/cli/Option;

    .line 979
    check-cast p2, Lorg/apache/commons/cli/Option;

    .line 981
    invoke-virtual {p1}, Lorg/apache/commons/cli/Option;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/commons/cli/Option;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
