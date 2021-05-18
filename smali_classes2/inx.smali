.class public Linx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:J = 0x1L


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Linx;->g:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Linx;->b:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Linx;->c:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Linx;->d:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Linx;->h:Ljava/lang/Boolean;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Linx;->g:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Linx;->b:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Linx;->c:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Linx;->d:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Linx;->e:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Linx;->f:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Linx;->h:Ljava/lang/Boolean;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Linx;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Linx;->h:Ljava/lang/Boolean;

    .line 71
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Linx;->g:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Linx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Linx;->b:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Linx;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Linx;->c:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Linx;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Linx;->d:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Linx;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Linx;->e:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Linx;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Linx;->f:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public g()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Linx;->h:Ljava/lang/Boolean;

    return-object v0
.end method
