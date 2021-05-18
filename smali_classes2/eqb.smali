.class public final Leqb;
.super Leql;
.source "SourceFile"


# static fields
.field private static final c:Leqb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Leqb;

    invoke-direct {v0}, Leqb;-><init>()V

    sput-object v0, Leqb;->c:Leqb;

    .line 30
    sget-object v0, Leqb;->c:Leqb;

    sget-object v1, Leqb;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Leqb;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Leql;-><init>()V

    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Leql;-><init>(Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method public static a()Leqb;
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Leqb;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Leqb;

    invoke-direct {v0}, Leqb;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Leqb;->c:Leqb;

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)Leqb;
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Leqb;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Leqb;

    invoke-direct {v0, p0}, Leqb;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Leqb;->c:Leqb;

    goto :goto_0
.end method
