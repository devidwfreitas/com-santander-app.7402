.class public Lhlb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxl;


# instance fields
.field private a:Lhlh;

.field private b:Ljava/lang/String;

.field protected codigoContrato:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected codigoEvento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected codigoNIO:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected codigoOficina:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected dataOperacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected quantidadeParcela:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected valor:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lhlb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lhlb;->a:Lhlh;

    invoke-interface {v0}, Lhlh;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0xa

    return v0
.end method

.method public a(Lhlh;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lhlb;->a:Lhlh;

    .line 180
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lhlb;->b:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lhlb;->codigoContrato:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    const-string v0, "0033"

    iget-object v1, p0, Lhlb;->codigoOficina:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhlb;->codigoContrato:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    :try_start_0
    invoke-static {}, Lhyx;->b()Ljava/text/NumberFormat;

    move-result-object v0

    iget-object v1, p0, Lhlb;->valor:Ljava/lang/String;

    .line 75
    invoke-static {v1}, Lhyx;->b(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v0, ""

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lhlb;->quantidadeParcela:Ljava/lang/String;

    invoke-static {v0}, Lhyx;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lhlb;->quantidadeParcela:Ljava/lang/String;

    invoke-static {v0}, Lhyx;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, ""

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "Cr\u00e9dito Pessoal"

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lhlb;->dataOperacao:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    :try_start_0
    invoke-virtual {p0}, Lhlb;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lhyx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 150
    const-string v1, "dd/MM/yyy"

    invoke-static {v1}, Lhyx;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 151
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string v0, ""

    goto :goto_0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public z()Lhlh;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lhlb;->a:Lhlh;

    return-object v0
.end method
