.class public Lkoo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkoq;
    .annotation runtime Leks;
        a = "catalog"
    .end annotation
.end field

.field private b:Lkos;
    .annotation runtime Leks;
        a = "certificate"
    .end annotation
.end field

.field private c:Lkpc;
    .annotation runtime Leks;
        a = "scheduling"
    .end annotation
.end field

.field private d:Lkot;
    .annotation runtime Leks;
        a = "insured"
    .end annotation
.end field

.field private e:Lkpb;
    .annotation runtime Leks;
        a = "product"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lkoq;

    invoke-direct {v0, p0, v1}, Lkoq;-><init>(Lkoo;Lkop;)V

    iput-object v0, p0, Lkoo;->a:Lkoq;

    .line 20
    new-instance v0, Lkos;

    invoke-direct {v0, p0, v1}, Lkos;-><init>(Lkoo;Lkop;)V

    iput-object v0, p0, Lkoo;->b:Lkos;

    .line 22
    new-instance v0, Lkpc;

    invoke-direct {v0, p0, v1}, Lkpc;-><init>(Lkoo;Lkop;)V

    iput-object v0, p0, Lkoo;->c:Lkpc;

    .line 24
    new-instance v0, Lkot;

    invoke-direct {v0, p0, v1}, Lkot;-><init>(Lkoo;Lkop;)V

    iput-object v0, p0, Lkoo;->d:Lkot;

    .line 30
    new-instance v0, Lkpb;

    invoke-direct {v0, p0, v1}, Lkpb;-><init>(Lkoo;Lkop;)V

    iput-object v0, p0, Lkoo;->e:Lkpb;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lkoo;->d:Lkot;

    iget-object v0, v0, Lkot;->a:Lkov;

    iget-object v0, v0, Lkov;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lkoo;->a:Lkoq;

    iget-object v0, v0, Lkoq;->a:Lkor;

    iput-object p1, v0, Lkor;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    new-instance v0, Lkow;

    invoke-direct {v0, p0, v2}, Lkow;-><init>(Lkoo;Lkop;)V

    .line 77
    iput-object p1, v0, Lkow;->a:Ljava/lang/String;

    .line 78
    iput-object p2, v0, Lkow;->b:Ljava/lang/String;

    .line 80
    new-instance v1, Lkox;

    invoke-direct {v1, p0, v2}, Lkox;-><init>(Lkoo;Lkop;)V

    .line 81
    iput-object v0, v1, Lkox;->a:Lkow;

    .line 83
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkox;

    iget-object v0, v0, Lkox;->a:Lkow;

    iget-object v0, v0, Lkow;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lkoo;->b:Lkos;

    iput-object p1, v0, Lkos;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkox;

    iget-object v0, v0, Lkox;->a:Lkow;

    iget-object v0, v0, Lkow;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lkoo;->d:Lkot;

    iget-object v0, v0, Lkot;->a:Lkov;

    iput-object p1, v0, Lkov;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->a:Lkpd;

    iget-object v0, v0, Lkpd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lkoo;->c:Lkpc;

    new-instance v1, Lkpa;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lkpa;-><init>(Lkoo;Lkop;)V

    iput-object v1, v0, Lkpc;->b:Lkpa;

    .line 55
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->b:Lkpa;

    iput-object p1, v0, Lkpa;->a:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->a:Lkpd;

    iget-object v0, v0, Lkpd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->c:Lkpg;

    iget-object v0, v0, Lkpg;->d:Lkog;

    invoke-virtual {v0, p1}, Lkog;->a(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->a:Lkpd;

    iget-object v0, v0, Lkpd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->c:Lkpg;

    iput-object p1, v0, Lkpg;->a:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->a:Lkpd;

    iget-object v0, v0, Lkpd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->c:Lkpg;

    iput-object p1, v0, Lkpg;->c:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->c:Lkpg;

    iput-object p1, v0, Lkpg;->b:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iput-object p1, v0, Lkpc;->e:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lkoo;->e:Lkpb;

    iput-object p1, v0, Lkpb;->a:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->a:Lkpd;

    iput-object p1, v0, Lkpd;->c:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->a:Lkpd;

    iput-object p1, v0, Lkpd;->b:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->a:Lkpd;

    iput-object p1, v0, Lkpd;->f:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->a:Lkpd;

    iput-object p1, v0, Lkpd;->a:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->a:Lkpd;

    iget-object v0, v0, Lkpd;->d:Lkpe;

    iput-object p1, v0, Lkpe;->a:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lkoo;->c:Lkpc;

    iget-object v0, v0, Lkpc;->a:Lkpd;

    iget-object v0, v0, Lkpd;->e:Lkpf;

    iput-object p1, v0, Lkpf;->a:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {v0, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
