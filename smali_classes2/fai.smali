.class public final Lfai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:[Lfah;


# direct methods
.method varargs constructor <init>(I[Lfah;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Lfai;->a:I

    .line 190
    iput-object p2, p0, Lfai;->b:[Lfah;

    .line 191
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lfai;->a:I

    return v0
.end method

.method public b()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 198
    .line 199
    iget-object v2, p0, Lfai;->b:[Lfah;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 200
    invoke-virtual {v4}, Lfah;->a()I

    move-result v4

    add-int/2addr v1, v4

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return v1
.end method

.method public c()I
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lfai;->a:I

    invoke-virtual {p0}, Lfai;->b()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public d()[Lfah;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lfai;->b:[Lfah;

    return-object v0
.end method
