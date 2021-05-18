.class public Lhzl;
.super Lgoe;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "request"
.end annotation


# instance fields
.field private manifestacao:Lhzc;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private observacao:Lhzh;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private rootAnexo:Lhzn;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lgoe;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhzn;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lhzl;->rootAnexo:Lhzn;

    return-object v0
.end method

.method public a(Lhzc;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lhzl;->manifestacao:Lhzc;

    .line 43
    return-void
.end method

.method public a(Lhzh;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lhzl;->observacao:Lhzh;

    .line 51
    return-void
.end method

.method public a(Lhzn;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lhzl;->rootAnexo:Lhzn;

    .line 35
    return-void
.end method

.method public b()Lhzc;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lhzl;->manifestacao:Lhzc;

    return-object v0
.end method

.method public c()Lhzh;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lhzl;->observacao:Lhzh;

    return-object v0
.end method
