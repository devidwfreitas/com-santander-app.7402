.class public final Legx;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Legz;

    invoke-direct {v0}, Legz;-><init>()V

    sput-object v0, Legx;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Legy;

    invoke-direct {v0}, Legy;-><init>()V

    sput-object v0, Legx;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
