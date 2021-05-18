.class public Lftp;
.super Lfvu;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lfvu;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lftp;->c:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lftp;->a:Z

    .line 52
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lftp;->a:Z

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lftp;->d:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lftp;->b:Z

    .line 58
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lftp;->b:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lftp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lftp;->e:Z

    .line 76
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lftp;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lftp;->e:Z

    return v0
.end method
