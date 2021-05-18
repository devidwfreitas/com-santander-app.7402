.class abstract Lerh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lerh;


# instance fields
.field private final b:Lerh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    new-instance v0, Lerf;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lerf;-><init>(Lerh;II)V

    sput-object v0, Lerh;->a:Lerh;

    return-void
.end method

.method constructor <init>(Lerh;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lerh;->b:Lerh;

    .line 29
    return-void
.end method


# virtual methods
.method final a()Lerh;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lerh;->b:Lerh;

    return-object v0
.end method

.method final a(II)Lerh;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lerf;

    invoke-direct {v0, p0, p1, p2}, Lerf;-><init>(Lerh;II)V

    return-object v0
.end method

.method abstract a(Lets;[B)V
.end method

.method final b(II)Lerh;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lerb;

    invoke-direct {v0, p0, p1, p2}, Lerb;-><init>(Lerh;II)V

    return-object v0
.end method
