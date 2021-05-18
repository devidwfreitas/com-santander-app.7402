.class public Lbfq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lbfq;->b:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lbfq;->c:Ljava/lang/String;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbfq;->d:J

    .line 25
    iput p1, p0, Lbfq;->e:I

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lbfq;->b:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lbfq;->c:Ljava/lang/String;

    .line 17
    iput-wide p3, p0, Lbfq;->d:J

    .line 18
    iput p5, p0, Lbfq;->e:I

    .line 19
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lbfq;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lbfq;->a:I

    .line 34
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 57
    iput-wide p1, p0, Lbfq;->d:J

    .line 58
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lbfq;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lbfq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lbfq;->c:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lbfq;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lbfq;->d:J

    return-wide v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lbfq;->e:I

    return v0
.end method
