.class public Liuz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "celular"
.end annotation


# instance fields
.field private ddd:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private imei:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numero:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroFormatado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private sequencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private timestamp:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Liuz;->numeroFormatado:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Liuz;->ddd:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Liuz;->ddd:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Liuz;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Liuz;->imei:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Liuz;->numero:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Liuz;->numero:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Liuz;->numeroFormatado:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Liuz;->numeroFormatado:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Liuz;->sequencia:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Liuz;->sequencia:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Liuz;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Liuz;->timestamp:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Liuz;->numeroFormatado:Ljava/lang/String;

    return-object v0
.end method
