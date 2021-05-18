.class public Lkdi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lkdi;->a:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lkdi;->b:Ljava/lang/String;

    .line 15
    const v0, 0x7f0e0001

    iput v0, p0, Lkdi;->c:I

    .line 16
    const v0, 0x7f0a00e0

    iput v0, p0, Lkdi;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lkdi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lkdi;->c:I

    .line 40
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lkdi;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lkdi;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lkdi;->d:I

    .line 48
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lkdi;->b:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lkdi;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lkdi;->d:I

    return v0
.end method
