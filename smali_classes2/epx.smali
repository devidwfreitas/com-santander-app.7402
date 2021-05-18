.class public final Lepx;
.super Leql;
.source "SourceFile"


# static fields
.field private static final c:Lepx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lepx;

    invoke-direct {v0}, Lepx;-><init>()V

    sput-object v0, Lepx;->c:Lepx;

    .line 29
    sget-object v0, Lepx;->c:Lepx;

    sget-object v1, Lepx;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Lepx;->setStackTrace([Ljava/lang/StackTraceElement;)V

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

.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Leql;-><init>(Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method public static a()Lepx;
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lepx;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lepx;

    invoke-direct {v0}, Lepx;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lepx;->c:Lepx;

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)Lepx;
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lepx;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lepx;

    invoke-direct {v0, p0}, Lepx;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lepx;->c:Lepx;

    goto :goto_0
.end method
