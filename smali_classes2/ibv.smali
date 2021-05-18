.class public Libv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Libv;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Libv;->a:Z

    .line 25
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Libv;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Libv;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Libv;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Libv;->c:Ljava/lang/String;

    invoke-static {v0}, Lmyx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmyx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Libv;->d:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Libv;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Libv;->e:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Libv;->e:Ljava/lang/String;

    return-object v0
.end method
