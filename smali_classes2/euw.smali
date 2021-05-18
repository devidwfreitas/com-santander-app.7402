.class final Leuw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p1, p0, Leuw;->a:I

    .line 152
    iput p2, p0, Leuw;->b:I

    .line 153
    return-void
.end method

.method synthetic constructor <init>(IILeuv;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Leuw;-><init>(II)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Leuw;->a:I

    return v0
.end method

.method b()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Leuw;->b:I

    return v0
.end method
