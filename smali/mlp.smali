.class public Lmlp;
.super Lgnb;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return "
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/santander/app/components/model/ListValueString;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;"
        }
    .end annotation
.end field

.field private codNSU:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoMensagemSPB:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataContabilDocOnline:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private especieConta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeDe:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomePara:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroDocumento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmlp;->codNSU:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lmlp;->codNSU:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    iput-object p1, p0, Lmlp;->b:Ljava/util/ArrayList;

    .line 109
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/santander/app/components/model/ListValueString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lmlp;->a:Ljava/util/HashMap;

    .line 101
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmlp;->nomeDe:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lmlp;->nomeDe:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmlp;->nomePara:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lmlp;->nomePara:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmlp;->especieConta:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lmlp;->especieConta:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmlp;->numeroDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lmlp;->numeroDocumento:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmlp;->dataContabilDocOnline:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lmlp;->dataContabilDocOnline:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public g()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/santander/app/components/model/ListValueString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lmlp;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lmlp;->codigoMensagemSPB:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lmlp;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmlp;->codigoMensagemSPB:Ljava/lang/String;

    return-object v0
.end method
