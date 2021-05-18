.class public Ldn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldl;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ldn;->a:Ljava/lang/Object;

    .line 52
    new-instance v0, Ldo;

    invoke-direct {v0, p0}, Ldo;-><init>(Ldn;)V

    .line 59
    invoke-virtual {v0}, Ldo;->a()Ljava/lang/Object;

    move-result-object v0

    .line 52
    iput-object v0, p0, Ldn;->a:Ljava/lang/Object;

    .line 60
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ldm;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ldm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ldp;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ldp;-><init>(Ldn;Landroid/content/Context;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ldm;)V

    .line 118
    invoke-virtual {v0}, Ldp;->a()Ljava/lang/Object;

    .line 120
    return-void
.end method
