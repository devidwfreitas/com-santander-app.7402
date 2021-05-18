.class public Lfsu;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lfvu;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lfsu;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Lfsu;->d:J

    .line 48
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lfsu;->b:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lfsu;->f:Z

    .line 64
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lfsu;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 71
    iput-wide p1, p0, Lfsu;->g:J

    .line 72
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lfsu;->c:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lfsu;->d:J

    return-wide v0
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 79
    iput-wide p1, p0, Lfsu;->h:J

    .line 80
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lfsu;->e:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lfsu;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lfsu;->f:Z

    return v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lfsu;->g:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lfsu;->h:J

    return-wide v0
.end method
