.class public Lghu;
.super Lfvw;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lfvw;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lghu;->a:Ljava/lang/String;

    return-object v0
.end method

.method public A(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lghu;->k:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lghu;->b:Ljava/lang/String;

    return-object v0
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lghu;->l:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lghu;->d:Ljava/lang/String;

    return-object v0
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lghu;->m:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lghu;->e:Ljava/lang/String;

    return-object v0
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lghu;->n:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lghu;->f:Ljava/lang/String;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lghu;->g:Ljava/lang/String;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lghu;->h:Ljava/lang/String;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lghu;->i:Ljava/lang/String;

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lghu;->j:Ljava/lang/String;

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lghu;->k:Ljava/lang/String;

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lghu;->l:Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lghu;->m:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lghu;->n:Ljava/lang/String;

    return-object v0
.end method

.method public N()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lghu;->o:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lghu;->o:I

    .line 152
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 156
    instance-of v0, p1, Lghu;

    if-eqz v0, :cond_0

    .line 157
    check-cast p1, Lghu;

    .line 158
    iget-object v0, p0, Lghu;->i:Ljava/lang/String;

    iget-object v1, p1, Lghu;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lghu;->c:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lghu;->a:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lghu;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lghu;->d:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lghu;->e:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lghu;->f:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lghu;->g:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lghu;->h:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lghu;->i:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lghu;->c:Ljava/lang/String;

    return-object v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lghu;->j:Ljava/lang/String;

    .line 112
    return-void
.end method
