.class final Leux;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:[Leuw;


# direct methods
.method private constructor <init>(ILeuw;)V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Leux;->a:I

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Leuw;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iput-object v0, p0, Leux;->b:[Leuw;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(ILeuw;Leuv;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Leux;-><init>(ILeuw;)V

    return-void
.end method

.method private constructor <init>(ILeuw;Leuw;)V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Leux;->a:I

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Leuw;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Leux;->b:[Leuw;

    .line 130
    return-void
.end method

.method synthetic constructor <init>(ILeuw;Leuw;Leuv;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Leux;-><init>(ILeuw;Leuw;)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Leux;->a:I

    return v0
.end method

.method b()[Leuw;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Leux;->b:[Leuw;

    return-object v0
.end method
