.class public Lldr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkoi;

.field private b:Lkon;

.field private c:Lkps;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lkoi;Lkps;Lkon;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lldr;->a:Lkoi;

    .line 26
    iput-object p2, p0, Lldr;->c:Lkps;

    .line 27
    iput-object p3, p0, Lldr;->b:Lkon;

    .line 28
    iput-boolean p5, p0, Lldr;->e:Z

    .line 29
    iput-boolean p6, p0, Lldr;->f:Z

    .line 30
    iput-object p4, p0, Lldr;->d:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Lkoi;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lldr;->a:Lkoi;

    return-object v0
.end method

.method public b()Lkon;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lldr;->b:Lkon;

    return-object v0
.end method

.method public c()Lkps;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lldr;->c:Lkps;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lldr;->e:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lldr;->f:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lldr;->d:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {v0, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
