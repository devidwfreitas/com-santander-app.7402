.class public Lbgd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3


# instance fields
.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lbgd;->f:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lbgd;->g:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lbgd;->h:Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lbgd;->i:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lbgd;->j:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lbgd;->f:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lbgd;->g:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lbgd;->h:Ljava/lang/String;

    .line 26
    iput p4, p0, Lbgd;->i:I

    .line 27
    iput-object p5, p0, Lbgd;->j:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lbgd;->e:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lbgd;->e:I

    .line 44
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lbgd;->f:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lbgd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lbgd;->i:I

    .line 76
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lbgd;->g:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lbgd;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lbgd;->h:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lbgd;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lbgd;->j:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lbgd;->i:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lbgd;->j:Ljava/lang/String;

    return-object v0
.end method
