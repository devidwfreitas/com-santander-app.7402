.class public Ljrv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ljrv;->a:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Ljrv;->b:Ljava/lang/String;

    .line 29
    iput p1, p0, Ljrv;->c:I

    .line 30
    iput p2, p0, Ljrv;->d:I

    .line 31
    iput p3, p0, Ljrv;->e:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Ljrv;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Ljrv;->b:Ljava/lang/String;

    .line 21
    iput p3, p0, Ljrv;->c:I

    .line 22
    iput p4, p0, Ljrv;->d:I

    .line 23
    iput p5, p0, Ljrv;->e:I

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ljrv;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Ljrv;->c:I

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Ljrv;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ljrv;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Ljrv;->d:I

    .line 64
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Ljrv;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Ljrv;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Ljrv;->e:I

    .line 72
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Ljrv;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Ljrv;->e:I

    return v0
.end method
