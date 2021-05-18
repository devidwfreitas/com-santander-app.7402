.class public Lcho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lchl;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcho;->a:[Ljava/lang/String;

    .line 14
    iput v1, p0, Lcho;->b:I

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcho;->a:[Ljava/lang/String;

    .line 14
    iput v1, p0, Lcho;->b:I

    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcho;->a([Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcho;->a:[Ljava/lang/String;

    .line 14
    iput v1, p0, Lcho;->b:I

    .line 29
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0, p1}, Lcho;->a([Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public a(FLcfj;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 46
    if-ltz v0, :cond_0

    iget v1, p0, Lcho;->b:I

    if-ge v0, v1, :cond_0

    float-to-int v1, p1

    if-eq v0, v1, :cond_1

    .line 47
    :cond_0
    const-string v0, ""

    .line 49
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcho;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/String;

    .line 62
    :cond_0
    iput-object p1, p0, Lcho;->a:[Ljava/lang/String;

    .line 63
    array-length v0, p1

    iput v0, p0, Lcho;->b:I

    .line 64
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcho;->a:[Ljava/lang/String;

    return-object v0
.end method
