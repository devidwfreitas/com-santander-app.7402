.class public Lgye;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lgye;->a:I

    .line 20
    iput p2, p0, Lgye;->b:I

    .line 21
    iput p3, p0, Lgye;->c:I

    .line 22
    iput-object p4, p0, Lgye;->d:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lgye;->e:Ljava/lang/String;

    .line 24
    iput-boolean p6, p0, Lgye;->f:Z

    .line 25
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lgye;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lgye;->a:I

    .line 33
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lgye;->d:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lgye;->f:Z

    .line 73
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lgye;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lgye;->b:I

    .line 41
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lgye;->e:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lgye;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lgye;->c:I

    .line 49
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lgye;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lgye;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lgye;->f:Z

    return v0
.end method
