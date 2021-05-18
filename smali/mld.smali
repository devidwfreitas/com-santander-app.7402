.class public Lmld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private agencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private autorizado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private banco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private conta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private index:Ljava/lang/Integer;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private indicadorMesmoTitular:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private ispb:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeBanco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroDocumento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoConta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoDocumento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lmld;->tipoDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lmld;->index:Ljava/lang/Integer;

    .line 146
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lmld;->tipoDocumento:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmld;->autorizado:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lmld;->autorizado:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmld;->numeroDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lmld;->numeroDocumento:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lmld;->indicadorMesmoTitular:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lmld;->indicadorMesmoTitular:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lmld;->descricao:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lmld;->descricao:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmld;->tipoConta:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lmld;->tipoConta:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmld;->banco:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lmld;->banco:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lmld;->agencia:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lmld;->agencia:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lmld;->nomeBanco:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lmld;->nomeBanco:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lmld;->ispb:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lmld;->ispb:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lmld;->conta:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lmld;->conta:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public l()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lmld;->index:Ljava/lang/Integer;

    return-object v0
.end method
