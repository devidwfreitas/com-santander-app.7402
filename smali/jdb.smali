.class public Ljdb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "categoria"
.end annotation


# instance fields
.field private button:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private corCategoria:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoCategoria:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private percentual:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private target:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorBruto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Ljdb;->target:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Ljdb;->button:Z

    .line 44
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Ljdb;->button:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ljdb;->target:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Ljdb;->codigoProduto:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ljdb;->codigoProduto:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Ljdb;->corCategoria:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ljdb;->corCategoria:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Ljdb;->descricaoCategoria:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ljdb;->descricaoCategoria:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Ljdb;->percentual:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ljdb;->percentual:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Ljdb;->valorBruto:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Ljdb;->valorBruto:Ljava/lang/String;

    return-object v0
.end method
