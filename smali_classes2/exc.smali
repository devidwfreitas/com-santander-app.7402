.class final Lexc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lexa;

.field private final c:Lexb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lexc;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lexa;

    invoke-direct {v0}, Lexa;-><init>()V

    iput-object v0, p0, Lexc;->b:Lexa;

    .line 29
    new-instance v0, Lexb;

    invoke-direct {v0}, Lexb;-><init>()V

    iput-object v0, p0, Lexc;->c:Lexb;

    return-void
.end method


# virtual methods
.method a(ILets;I)Leqm;
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x0

    sget-object v1, Lexc;->a:[I

    invoke-static {p2, p3, v0, v1}, Lexd;->a(Lets;IZ[I)[I

    move-result-object v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lexc;->c:Lexb;

    invoke-virtual {v1, p1, p2, v0}, Lexb;->a(ILets;[I)Leqm;
    :try_end_0
    .catch Leql; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    iget-object v1, p0, Lexc;->b:Lexa;

    invoke-virtual {v1, p1, p2, v0}, Lexa;->a(ILets;[I)Leqm;

    move-result-object v0

    goto :goto_0
.end method
