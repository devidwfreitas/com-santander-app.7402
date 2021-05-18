.class public final Lckw;
.super Lcld;
.source "SourceFile"


# static fields
.field private static c:Lclc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lclc",
            "<",
            "Lckw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:F

.field public b:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    const/16 v0, 0x100

    new-instance v1, Lckw;

    invoke-direct {v1, v2, v2}, Lckw;-><init>(FF)V

    invoke-static {v0, v1}, Lclc;->a(ILcld;)Lclc;

    move-result-object v0

    sput-object v0, Lckw;->c:Lclc;

    .line 21
    sget-object v0, Lckw;->c:Lclc;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lclc;->a(F)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcld;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcld;-><init>()V

    .line 48
    iput p1, p0, Lckw;->a:F

    .line 49
    iput p2, p0, Lckw;->b:F

    .line 50
    return-void
.end method

.method public static a(FF)Lckw;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lckw;->c:Lclc;

    invoke-virtual {v0}, Lclc;->c()Lcld;

    move-result-object v0

    check-cast v0, Lckw;

    .line 31
    iput p0, v0, Lckw;->a:F

    .line 32
    iput p1, v0, Lckw;->b:F

    .line 33
    return-object v0
.end method

.method public static a(Lckw;)V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lckw;->c:Lclc;

    invoke-virtual {v0, p0}, Lclc;->a(Lcld;)V

    .line 38
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lckw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lckw;->c:Lclc;

    invoke-virtual {v0, p0}, Lclc;->a(Ljava/util/List;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected b()Lcld;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    new-instance v0, Lckw;

    invoke-direct {v0, v1, v1}, Lckw;-><init>(FF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v0

    .line 58
    goto :goto_0

    .line 60
    :cond_2
    instance-of v2, p1, Lckw;

    if-eqz v2, :cond_0

    .line 61
    check-cast p1, Lckw;

    .line 62
    iget v2, p0, Lckw;->a:F

    iget v3, p1, Lckw;->a:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lckw;->b:F

    iget v3, p1, Lckw;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lckw;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lckw;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lckw;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lckw;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
