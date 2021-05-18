.class public final Lnly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnlh;
.implements Lnlu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnlh",
        "<",
        "Ljava/util/Map",
        "<TK;",
        "Lnne",
        "<TV;>;>;>;",
        "Lnlu",
        "<",
        "Ljava/util/Map",
        "<TK;",
        "Lnne",
        "<TV;>;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lnly;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnly",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lnne",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lnly;

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lnly;-><init>(Ljava/util/Map;)V

    sput-object v0, Lnly;->a:Lnly;

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Lnne",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnly;->b:Ljava/util/Map;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lnlz;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lnly;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static a()Lnly;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lnly",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lnly;->a:Lnly;

    return-object v0
.end method

.method public static a(I)Lnma;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lnma",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lnma;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnma;-><init>(ILnlz;)V

    return-object v0
.end method


# virtual methods
.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lnly;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Lnne",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lnly;->b:Ljava/util/Map;

    return-object v0
.end method
