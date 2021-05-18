.class public Lbcy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcd;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lbbu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbbu",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lbbc;

.field private final d:Lbao;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lbbu;Lbbc;Lbao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbbu",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lbbc;",
            "Lbao;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lbcy;->a:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lbcy;->b:Lbbu;

    .line 27
    iput-object p3, p0, Lbcy;->c:Lbbc;

    .line 28
    iput-object p4, p0, Lbcy;->d:Lbao;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lbbu;Lbbc;Lbao;Lbcz;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lbcy;-><init>(Ljava/lang/String;Lbbu;Lbbc;Lbao;)V

    return-void
.end method


# virtual methods
.method public a(Lawu;Lbdy;)Laye;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lays;

    invoke-direct {v0, p1, p2, p0}, Lays;-><init>(Lawu;Lbdy;Lbcy;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lbcy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lbao;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lbcy;->d:Lbao;

    return-object v0
.end method

.method public c()Lbbc;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbcy;->c:Lbbc;

    return-object v0
.end method

.method public d()Lbbu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbbu",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lbcy;->b:Lbbu;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape{cornerRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbcy;->d:Lbao;

    invoke-virtual {v1}, Lbao;->b()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbcy;->b:Lbbu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbcy;->c:Lbbc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
