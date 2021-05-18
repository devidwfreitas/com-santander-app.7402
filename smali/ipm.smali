.class public Lipm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private indicador:Ljava/lang/String;
    .annotation runtime Leks;
        a = "indicador"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private label:Ljava/lang/String;
    .annotation runtime Leks;
        a = "label"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valor:Ljava/lang/String;
    .annotation runtime Leks;
        a = "valor"
    .end annotation

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
    .line 27
    iget-object v0, p0, Lipm;->valor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lipm;->valor:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lipm;->indicador:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lipm;->indicador:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "S"

    iput-object v0, p0, Lipm;->indicador:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "N"

    iput-object v0, p0, Lipm;->indicador:Ljava/lang/String;

    .line 40
    return-void
.end method
