.class public Lexh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lexh;->a:I

    .line 26
    iput p2, p0, Lexh;->b:I

    .line 27
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lexh;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lexh;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 44
    instance-of v1, p1, Lexh;

    if-nez v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    check-cast p1, Lexh;

    .line 48
    iget v1, p0, Lexh;->a:I

    iget v2, p1, Lexh;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lexh;->b:I

    iget v2, p1, Lexh;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lexh;->a:I

    iget v1, p0, Lexh;->b:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lexh;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lexh;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
