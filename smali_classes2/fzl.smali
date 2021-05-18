.class final Lfzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lfzj;


# direct methods
.method private constructor <init>(Lfzj;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lfzl;->a:Lfzj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfzj;Lfzk;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lfzl;-><init>(Lfzj;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 82
    check-cast p1, Lfyk;

    .line 83
    check-cast p2, Lfyk;

    .line 85
    invoke-virtual {p1}, Lfyk;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lfyk;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
