.class public final Lnma;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;",
            "Lnne",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lnlr;->c(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lnma;->a:Ljava/util/LinkedHashMap;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(ILnlz;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lnma;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Lnly;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnly",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lnly;

    iget-object v1, p0, Lnma;->a:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnly;-><init>(Ljava/util/Map;Lnlz;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lnne;)Lnma;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lnne",
            "<TV;>;)",
            "Lnma",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    if-nez p2, :cond_1

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The provider of the value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    iget-object v0, p0, Lnma;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-object p0
.end method
