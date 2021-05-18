.class Lhgm;
.super Lhgo;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhge;

.field final synthetic b:Lhgh;


# direct methods
.method constructor <init>(Lhgh;Ljava/lang/String;Lhge;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lhgm;->b:Lhgh;

    iput-object p3, p0, Lhgm;->a:Lhge;

    invoke-direct {p0, p1, p2}, Lhgo;-><init>(Lhgh;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Lhfc;->a()V

    .line 153
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v0

    invoke-interface {v0}, Lhya;->h()V

    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    const/4 v1, 0x0

    sget-object v2, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lmzp;->RELOAD_EMPRESTIMOS:Lmzp;

    aput-object v2, v0, v1

    .line 158
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 159
    new-instance v2, Lhgn;

    invoke-direct {v2, p0}, Lhgn;-><init>(Lhgm;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 165
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lhgm;->a:Lhge;

    iget-object v1, p0, Lhgm;->b:Lhgh;

    invoke-static {v1}, Lhgh;->a(Lhgh;)Lhfl;

    move-result-object v1

    invoke-interface {v0, v1}, Lhge;->b(Lhfy;)V

    .line 170
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lhgm;->a:Lhge;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhge;->b(Lhfy;)V

    .line 175
    return-void
.end method
