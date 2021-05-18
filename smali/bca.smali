.class public Lbca;
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


# direct methods
.method private constructor <init>(Ljava/lang/String;Lbbu;Lbbc;)V
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
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lbca;->a:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lbca;->b:Lbbu;

    .line 25
    iput-object p3, p0, Lbca;->c:Lbbc;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lbbu;Lbbc;Lbcb;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lbca;-><init>(Ljava/lang/String;Lbbu;Lbbc;)V

    return-void
.end method


# virtual methods
.method public a(Lawu;Lbdy;)Laye;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Layh;

    invoke-direct {v0, p1, p2, p0}, Layh;-><init>(Lawu;Lbdy;Lbca;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lbca;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lbbu;
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
    .line 50
    iget-object v0, p0, Lbca;->b:Lbbu;

    return-object v0
.end method

.method public c()Lbbc;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbca;->c:Lbbc;

    return-object v0
.end method
