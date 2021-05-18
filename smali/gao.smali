.class public Lgao;
.super Lgoe;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private codigoMoeda:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoMoedaLocal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoNatureza:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoPais:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valor:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lgoe;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lgoe;-><init>()V

    .line 39
    iput-object p1, p0, Lgao;->codigoMoedaLocal:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lgao;->codigoPais:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lgao;->codigoMoeda:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lgao;->codigoNatureza:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lgao;->valor:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lgao;->codigoPais:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lgao;->codigoPais:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lgao;->codigoMoeda:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lgao;->codigoMoeda:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lgao;->codigoNatureza:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lgao;->codigoNatureza:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lgao;->valor:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lgao;->valor:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lgao;->codigoMoedaLocal:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lgao;->codigoMoedaLocal:Ljava/lang/String;

    .line 84
    return-void
.end method
