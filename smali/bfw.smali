.class public Lbfw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v1, p0, Lbfw;->b:I

    .line 47
    iput v1, p0, Lbfw;->a:I

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lbfw;->c:Ljava/lang/String;

    .line 53
    iput v1, p0, Lbfw;->b:I

    .line 54
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lbfw;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lbfw;->b:I

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lbfw;->c:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lbfw;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lbfw;->a:I

    .line 71
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lbfw;->c:Ljava/lang/String;

    return-object v0
.end method
