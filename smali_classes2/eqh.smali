.class public final Leqh;
.super Leql;
.source "SourceFile"


# static fields
.field private static final c:Leqh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Leqh;

    invoke-direct {v0}, Leqh;-><init>()V

    sput-object v0, Leqh;->c:Leqh;

    .line 29
    sget-object v0, Leqh;->c:Leqh;

    sget-object v1, Leqh;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Leqh;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Leql;-><init>()V

    .line 34
    return-void
.end method

.method public static a()Leqh;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Leqh;->c:Leqh;

    return-object v0
.end method
