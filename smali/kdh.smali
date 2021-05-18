.class public Lkdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "contratoPrevidencia"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private agencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private conta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private controleLegado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataContratacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nome:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroProposta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private saldoBruto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private situacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lkdh;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lkdh;->a:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lkdh;->agencia:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lkdh;->agencia:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lkdh;->conta:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lkdh;->conta:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lkdh;->controleLegado:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lkdh;->controleLegado:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lkdh;->dataContratacao:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lkdh;->dataContratacao:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lkdh;->nome:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lkdh;->nome:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lkdh;->numeroProposta:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lkdh;->numeroProposta:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lkdh;->saldoBruto:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lkdh;->saldoBruto:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lkdh;->situacao:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lkdh;->situacao:Ljava/lang/String;

    .line 113
    return-void
.end method
