.class public Lmwy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "validacaoTransacional"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = ""


# instance fields
.field private acaoTransacional:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private transient b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private idCso:Lmwx;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private idSantander:Live;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private j:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmwy;->c:Ljava/lang/Boolean;

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmwy;->d:Ljava/lang/Boolean;

    .line 40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmwy;->e:Ljava/lang/Boolean;

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmwy;->f:Ljava/lang/Boolean;

    .line 44
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmwy;->g:Ljava/lang/Boolean;

    .line 46
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmwy;->h:Ljava/lang/Boolean;

    .line 48
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmwy;->i:Ljava/lang/Boolean;

    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmwy;->j:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lmwy;->acaoTransacional:Ljava/lang/String;

    return-object v0
.end method

.method public a(Live;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lmwy;->idSantander:Live;

    .line 74
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lmwy;->c:Ljava/lang/Boolean;

    .line 82
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lmwy;->acaoTransacional:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lmwy;->idCso:Lmwx;

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "desafio"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    const-string v1, "sequencia"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    iget-object v2, p0, Lmwy;->idCso:Lmwx;

    invoke-virtual {v2, v0}, Lmwx;->c(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lmwy;->idCso:Lmwx;

    invoke-virtual {v0, v1}, Lmwx;->b(Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method public a(Lmwx;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lmwy;->idCso:Lmwx;

    .line 66
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 117
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmwy;->h:Ljava/lang/Boolean;

    .line 118
    return-void
.end method

.method public b()Lmwx;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmwy;->idCso:Lmwx;

    return-object v0
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lmwy;->d:Ljava/lang/Boolean;

    .line 90
    return-void
.end method

.method public c()Live;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmwy;->idSantander:Live;

    return-object v0
.end method

.method public c(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lmwy;->e:Ljava/lang/Boolean;

    .line 98
    return-void
.end method

.method public d()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lmwy;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public d(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lmwy;->g:Ljava/lang/Boolean;

    .line 106
    return-void
.end method

.method public e()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lmwy;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public e(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lmwy;->f:Ljava/lang/Boolean;

    .line 114
    return-void
.end method

.method public f()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmwy;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public f(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lmwy;->i:Ljava/lang/Boolean;

    .line 128
    return-void
.end method

.method public g()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmwy;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public g(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lmwy;->j:Ljava/lang/Boolean;

    .line 136
    return-void
.end method

.method public h()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lmwy;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method public i()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lmwy;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public j()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lmwy;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public k()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lmwy;->j:Ljava/lang/Boolean;

    return-object v0
.end method

.method public l()V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiq;->f(Z)V

    .line 141
    invoke-virtual {p0}, Lmwy;->b()Lmwx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lmwy;->b()Lmwx;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lmwx;->f(Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lmwy;->c()Live;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lmwy;->c()Live;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Live;->b(Ljava/lang/String;)V

    .line 146
    :cond_1
    return-void
.end method

.method public m()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 158
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 160
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    invoke-virtual {p0}, Lmwy;->b()Lmwx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    const-string v0, "challengeValue"

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    invoke-virtual {p0}, Lmwy;->b()Lmwx;

    move-result-object v3

    invoke-virtual {v3}, Lmwx;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_0
    :goto_0
    return-object v1

    .line 163
    :cond_1
    invoke-virtual {p0}, Lmwy;->c()Live;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "otp"

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    invoke-virtual {p0}, Lmwy;->c()Live;

    move-result-object v3

    invoke-virtual {v3}, Live;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const-string v2, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
